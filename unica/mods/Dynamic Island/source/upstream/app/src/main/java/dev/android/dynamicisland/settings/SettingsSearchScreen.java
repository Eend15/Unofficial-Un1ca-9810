package dev.android.dynamicisland.settings;

import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Debounced search with a retained query and generation-safe background results. */
final class SettingsSearchScreen {
    static final Object PAGE_TAG=new Object();
    private final SettingsActivity activity;
    private final OneUi ui;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final ExecutorService worker;
    private SettingsSearchCatalog catalog; // Worker-owned, reused across queries.
    private LinearLayout results;
    private EditText input;
    private String query="";
    private volatile int generation;
    private boolean closed,focusOnce;
    private final Runnable search=this::submit;

    SettingsSearchScreen(SettingsActivity activity,OneUi ui) {
        this(activity,ui,Executors.newSingleThreadExecutor(r->{Thread t=new Thread(r,"Settings search");t.setDaemon(true);return t;}));
    }
    SettingsSearchScreen(SettingsActivity activity,OneUi ui,ExecutorService worker) {
        this.activity=activity;this.ui=ui;this.worker=worker;
    }
    String query(){return query;}
    void restore(String value){query=value==null?"":value.substring(0,Math.min(value.length(),SettingsSearchEngine.MAX_QUERY));}
    void launch(){focusOnce=true;activity.open(this::open);}
    boolean visible(){return activity.page().findViewWithTag(PAGE_TAG)!=null;}
    void open() {
        activity.subPage(activity.getString(R.string.search_title));
        LinearLayout bar=ui.card(activity.page());bar.setTag(PAGE_TAG);bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setOrientation(LinearLayout.HORIZONTAL);bar.setPadding(ui.dp(16),ui.dp(4),ui.dp(4),ui.dp(4));
        input=new EditText(activity);input.setSingleLine(true);input.setBackground(null);
        input.setTextColor(ui.textColor);input.setHintTextColor(ui.muted);input.setTextSize(17);
        input.setPadding(0,0,0,0);input.setMinHeight(ui.dp(48));
        input.setHint(R.string.search_hint);input.setContentDescription(activity.getString(R.string.search_title));
        input.setInputType(InputType.TYPE_CLASS_TEXT);input.setImeOptions(android.view.inputmethod.EditorInfo.IME_ACTION_SEARCH);
        input.setFilters(new InputFilter[]{new InputFilter.LengthFilter(SettingsSearchEngine.MAX_QUERY)});
        input.setSaveEnabled(false);input.setText(query);input.setSelection(input.length());
        bar.addView(input,new LinearLayout.LayoutParams(0,ui.dp(52),1));
        TextView clear=ui.text("×",28,ui.muted);clear.setGravity(Gravity.CENTER);
        clear.setContentDescription(activity.getString(R.string.search_clear));clear.setFocusable(true);
        bar.addView(clear,new LinearLayout.LayoutParams(ui.dp(48),ui.dp(48)));clear.setOnClickListener(v->input.setText(""));
        clear.setVisibility(query.isEmpty()?View.INVISIBLE:View.VISIBLE);
        results=new LinearLayout(activity);results.setOrientation(LinearLayout.VERTICAL);
        activity.page().addView(results,new LinearLayout.LayoutParams(-1,-2));
        input.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s,int start,int count,int after) { }
            public void onTextChanged(CharSequence s,int start,int before,int count) {
                query=s.toString();clear.setVisibility(query.isEmpty()?View.INVISIBLE:View.VISIBLE);schedule();
            }
            public void afterTextChanged(Editable e) { }
        });
        input.setOnEditorActionListener((v,action,event)->{
            if(action!=android.view.inputmethod.EditorInfo.IME_ACTION_SEARCH)return false;
            hideKeyboard();main.removeCallbacks(search);submit();return true;
        });
        schedule();
        if(focusOnce){focusOnce=false;EditText target=input;target.post(()->{
            if(!visible()||input!=target)return;target.requestFocus();
            activity.getSystemService(InputMethodManager.class).showSoftInput(target,InputMethodManager.SHOW_IMPLICIT);
        });}
    }
    private void schedule() {
        generation++;main.removeCallbacks(search);
        if(query.trim().isEmpty()) {
            results.removeAllViews();ui.note(results,activity.getString(R.string.search_intro));
            ui.category(results,activity.getString(R.string.search_suggestions));LinearLayout card=ui.card(results);
            suggestion(card,R.string.material_style);suggestion(card,R.string.glow_title);
            suggestion(card,R.string.setting_paused_timeout);suggestion(card,R.string.pos_title);
        }else{
            if(results.getChildCount()==0)ui.note(results,activity.getString(R.string.search_working));
            main.postDelayed(search,120);
        }
    }
    private void suggestion(LinearLayout card,int title) {
        ui.linkRow(card,activity.getString(title),null,()->{
            query=activity.getString(title);input.setText(query);input.setSelection(input.length());
            main.removeCallbacks(search);submit();
        });
    }
    private void submit() {
        if(closed||!visible()||query.trim().isEmpty())return;
        int token=generation;String text=query;LinearLayout target=results;
        worker.execute(()->{
            if(token!=generation)return;
            List<SettingsSearchEngine.Document> hits;
            try {
                if(catalog==null)catalog=new SettingsSearchCatalog(activity);
                hits=catalog.engine.search(text,catalog.rows.size());
            }catch(RuntimeException unavailable) {
                android.util.Log.w("DynamicIsland","Settings search unavailable",unavailable);
                main.post(()->{if(!closed&&token==generation&&target==results&&visible()){
                    target.removeAllViews();ui.note(target,activity.getString(R.string.search_unavailable));
                }});return;
            }
            SettingsSearchCatalog ready=catalog;
            main.post(()->{
                if(closed||token!=generation||target!=results||!visible())return;
                target.removeAllViews();
                if(hits.isEmpty()){ui.note(target,activity.getString(R.string.search_empty));return;}
                ui.category(target,activity.getString(R.string.search_results,hits.size()));
                LinearLayout card=ui.card(target);
                for(SettingsSearchEngine.Document hit:hits) {
                    SettingsSearchCatalog.Row row=ready.rows.get(hit.id);
                    String detail=hit.path+(hit.summary.isEmpty()?"":"\n"+hit.summary);
                    ui.linkRow(card,hit.title,detail,()->{hideKeyboard();activity.openSearchResult(row);});
                }
            });
        });
    }
    private void hideKeyboard() {
        if(input==null)return;input.clearFocus();
        activity.getSystemService(InputMethodManager.class).hideSoftInputFromWindow(input.getWindowToken(),0);
    }
    void stop(){generation++;main.removeCallbacks(search);}
    void close(){closed=true;stop();worker.shutdownNow();main.removeCallbacksAndMessages(null);}
}

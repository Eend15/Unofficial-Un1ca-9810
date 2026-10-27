package dev.android.dynamicisland.settings;

import android.app.AlertDialog;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import dev.android.dynamicisland.R;
import java.util.*;
import java.util.function.Consumer;

/** Search is only a view of a draft selection. Cancel never changes the stored filter. */
final class AppPickerDialog {
    static void show(SettingsActivity activity, OneUi ui, List<Map.Entry<String, String>> apps,
                     Set<String> saved, Consumer<Set<String>> commit) {
        Set<String> draft = new LinkedHashSet<>(saved);
        LinearLayout body = new LinearLayout(activity);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(ui.dp(20), ui.dp(8), ui.dp(20), 0);
        EditText search = new EditText(activity);
        search.setSingleLine(true);
        search.setHint(R.string.ui_search_apps);
        search.setContentDescription(activity.getString(R.string.ui_search_apps));
        body.addView(search);
        CheckBox selected = new CheckBox(activity);
        selected.setText(R.string.ui_selected_only);
        body.addView(selected);
        TextView count = ui.text("", 14, ui.muted);
        body.addView(count);
        ListView list = new ListView(activity);
        body.addView(list, new LinearLayout.LayoutParams(-1, ui.dp(330)));
        TextView empty = ui.text(activity.getString(R.string.ui_no_apps_found), 16, ui.muted);
        empty.setGravity(Gravity.CENTER);
        empty.setPadding(0, ui.dp(24), 0, ui.dp(24));
        body.addView(empty);
        list.setEmptyView(empty);
        List<Map.Entry<String, String>> shown = new ArrayList<>();
        Map<String, Drawable> icons = new HashMap<>();
        BaseAdapter adapter = new BaseAdapter() {
            @Override public int getCount() { return shown.size(); }
            @Override public Object getItem(int position) { return shown.get(position); }
            @Override public long getItemId(int position) { return position; }
            @Override public View getView(int position, View recycled, ViewGroup parent) {
                Map.Entry<String, String> app = shown.get(position);
                LinearLayout row = new LinearLayout(activity);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(0, ui.dp(8), 0, ui.dp(8));
                ImageView icon = new ImageView(activity);
                Drawable drawable = icons.get(app.getKey());
                if (drawable == null) {
                    try { drawable = activity.getPackageManager().getApplicationIcon(app.getKey()); }
                    catch (PackageManager.NameNotFoundException unavailable) { drawable = activity.getPackageManager().getDefaultActivityIcon(); }
                    icons.put(app.getKey(), drawable);
                }
                icon.setImageDrawable(drawable);
                icon.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
                row.addView(icon, new LinearLayout.LayoutParams(ui.dp(36), ui.dp(36)));
                LinearLayout words = new LinearLayout(activity);
                words.setOrientation(LinearLayout.VERTICAL);
                words.setPadding(ui.dp(12), 0, ui.dp(8), 0);
                words.addView(ui.text(app.getValue(), 16, ui.textColor));
                TextView pkg = ui.text(app.getKey(), 12, ui.muted);
                pkg.setMaxLines(1);
                pkg.setEllipsize(android.text.TextUtils.TruncateAt.END);
                words.addView(pkg);
                row.addView(words, new LinearLayout.LayoutParams(0, -2, 1));
                CheckBox check = new CheckBox(activity);
                check.setContentDescription(app.getValue());
                check.setChecked(draft.contains(app.getKey()));
                check.setOnCheckedChangeListener((button, checked) -> {
                    if (checked) draft.add(app.getKey()); else draft.remove(app.getKey());
                    count.setText(activity.getString(R.string.apps_status, draft.size()));
                    if (selected.isChecked()) { shown.remove(app); notifyDataSetChanged(); }
                });
                row.addView(check, new LinearLayout.LayoutParams(ui.dp(48), ui.dp(48)));
                row.setOnClickListener(v -> check.toggle());
                return row;
            }
        };
        list.setAdapter(adapter);
        Runnable filter = () -> {
            shown.clear();
            String query = search.getText().toString().trim().toLowerCase(Locale.ROOT);
            for (Map.Entry<String, String> app : apps)
                if ((!selected.isChecked() || draft.contains(app.getKey())) &&
                        (app.getKey().toLowerCase(Locale.ROOT).contains(query) || app.getValue().toLowerCase(Locale.ROOT).contains(query))) shown.add(app);
            count.setText(activity.getString(R.string.apps_status, draft.size()));
            adapter.notifyDataSetChanged();
        };
        search.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
            public void onTextChanged(CharSequence s, int start, int before, int count) { filter.run(); }
            public void afterTextChanged(Editable s) { }
        });
        selected.setOnCheckedChangeListener((button, checked) -> filter.run());
        filter.run();
        new AlertDialog.Builder(activity).setTitle(R.string.apps_title).setView(body)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(R.string.save, (dialog, which) -> commit.accept(new LinkedHashSet<>(draft))).show();
    }
}

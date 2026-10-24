package dev.android.dynamicisland.settings;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.*;
import java.util.*;
/** Read-only preference transport, restricted to SystemUI's UID and this app. */
public final class NativeSettingsProvider extends ContentProvider {
 public boolean onCreate(){return true;}
 public Bundle call(String method,String arg,Bundle extras){
  int caller=Binder.getCallingUid();
  int systemUiUid;
  try {systemUiUid=getContext().getPackageManager().getApplicationInfo("com.android.systemui",0).uid;}
  catch(android.content.pm.PackageManager.NameNotFoundException e){throw new SecurityException("SystemUI unavailable",e);}
  if(caller!=systemUiUid && caller!=android.os.Process.myUid())throw new SecurityException("SystemUI only");
  if(!"all".equals(method))return null;
  Bundle out=new Bundle();
  for(Map.Entry<String,?> e:getContext().getSharedPreferences("settings",0).getAll().entrySet()){
   Object v=e.getValue();String k=e.getKey();
   if(v instanceof Boolean)out.putBoolean(k,(Boolean)v);
   else if(v instanceof Integer)out.putInt(k,(Integer)v);
   else if(v instanceof Long)out.putLong(k,(Long)v);
   else if(v instanceof Float)out.putFloat(k,(Float)v);
   else if(v instanceof String)out.putString(k,(String)v);
   else if(v instanceof Set)out.putStringArrayList(k,new ArrayList<String>((Set<String>)v));
  }
  return out;
 }
 public Cursor query(Uri u,String[]p,String s,String[]a,String sort){return null;}
 public String getType(Uri u){return null;}
 public Uri insert(Uri u,ContentValues v){throw new UnsupportedOperationException();}
 public int update(Uri u,ContentValues v,String s,String[]a){throw new UnsupportedOperationException();}
 public int delete(Uri u,String s,String[]a){throw new UnsupportedOperationException();}
}

package de.robv.android.xposed;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.util.*;
/** Narrow read-only SystemUI transport; does not expose app files. */
public final class XSharedPreferences implements SharedPreferences {
 private Map<String,Object> values=Collections.emptyMap();
 public XSharedPreferences(String p,String f){reload();}
 public boolean makeWorldReadable(){return false;}
 public java.io.File getFile(){return new java.io.File("/unica-provider-settings");}
 public boolean hasFileChanged(){return true;}
 public void reload(){
  try{
   dev.android.dynamicisland.nativebridge.NativeRuntime.checkRestartToken();
   android.content.Context ctx=dev.android.dynamicisland.nativebridge.NativeRuntime.application;
   if(ctx==null)return;
   Bundle b=ctx.getContentResolver().call(android.net.Uri.parse("content://io.mesalabs.unica.dynamicisland.settings"),"all",null,null);
   if(b==null)return;
   Map<String,Object> next=new HashMap<>();for(String key:b.keySet()){
    Object v=b.get(key);next.put(key,v instanceof ArrayList?new HashSet<>((ArrayList<?>)v):v);
   }values=next;
  }catch(Throwable e){android.util.Log.e("UnicaDynamicIsland","Settings provider unavailable",e);}
 }
 public Map<String,?> getAll(){return values;}
 public String getString(String k,String d){Object v=values.get(k);return v instanceof String?(String)v:d;}
 public Set<String> getStringSet(String k,Set<String>d){Object v=values.get(k);return v instanceof Set?(Set<String>)v:d;}
 public int getInt(String k,int d){Object v=values.get(k);return v instanceof Integer?(Integer)v:d;}
 public long getLong(String k,long d){Object v=values.get(k);return v instanceof Long?(Long)v:d;}
 public float getFloat(String k,float d){Object v=values.get(k);return v instanceof Float?(Float)v:d;}
 public boolean getBoolean(String k,boolean d){Object v=values.get(k);return v instanceof Boolean?(Boolean)v:d;}
 public boolean contains(String k){return values.containsKey(k);}
 public Editor edit(){throw new UnsupportedOperationException();}
 public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){}
 public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){}
}

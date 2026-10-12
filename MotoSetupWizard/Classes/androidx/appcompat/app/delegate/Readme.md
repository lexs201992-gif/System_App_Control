package androidx.appcompat.app;
import androidx.appcompat.app.AppLocalesStorageHelper$SerialExecutor;
import android.view.MenuInflater;
import java.lang.CharSequence;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatCallback;
import androidx.core.os.LocaleListCompat;
import android.view.ViewGroup$LayoutParams;
import java.lang.Boolean;
import android.os.Bundle;
import android.content.res.Configuration;
import androidx.collection.ArraySet;
import android.view.View;
import android.window.OnBackInvokedDispatcher;
import android.app.Dialog;
import android.app.Activity;
import java.lang.Object;
import android.content.Context;

public abstract class AppCompatDelegate extends Object
{
/*
 * Field Definitions.
 */
      private static final ArraySet sActivityDelegates;
      private static final Object sActivityDelegatesLock;
      private static final Object sAppLocalesStorageSyncLock;
      private static int sDefaultNightMode;
      private static Boolean sIsAutoStoreLocalesOptedIn;
      private static boolean sIsFrameworkSyncChecked;
      private static LocaleListCompat sRequestedAppLocales;
      static AppLocalesStorageHelper$SerialExecutor sSerialExecutorForLocalesStorage;
      private static LocaleListCompat sStoredAppLocales;
/*
 * Declared Constructors.
 */
     AppCompatDelegate() { ... }
    public static void $r8$lambda$F36VbET_i_Y_e98J3kKLOS37EAQ(Context) { ... }
    static void addActiveDelegate(AppCompatDelegate) { ... }
    public abstract void addContentView(View, ViewGroup$LayoutParams) { ... }
    public void attachBaseContext(Context) { ... }
    public Context attachBaseContext2(Context) { ... }
    public static AppCompatDelegate create(Activity, AppCompatCallback) { ... }
    public static AppCompatDelegate create(Dialog, AppCompatCallback) { ... }
    public abstract View findViewById(int) { ... }
    public static LocaleListCompat getApplicationLocales() { ... }
    public Context getContextForDelegate() { ... }
    public static int getDefaultNightMode() { ... }
    public int getLocalNightMode() { ... }
    static Object getLocaleManagerForApplication() { ... }
    public abstract MenuInflater getMenuInflater() { ... }
    public abstract ActionBar getSupportActionBar() { ... }
    public abstract void installViewFactory() { ... }
    public abstract void invalidateOptionsMenu() { ... }
    static boolean isAutoStorageOptedIn(Context) { ... }
    private static void lambda$syncRequestedAndStoredLocales$1(Context) { ... }
    public abstract void onConfigurationChanged(Configuration) { ... }
    public abstract void onCreate(Bundle) { ... }
    public abstract void onDestroy() { ... }
    public abstract void onPostCreate(Bundle) { ... }
    public abstract void onPostResume() { ... }
    public abstract void onSaveInstanceState(Bundle) { ... }
    public abstract void onStart() { ... }
    public abstract void onStop() { ... }
    static void removeActivityDelegate(AppCompatDelegate) { ... }
    private static void removeDelegateFromActives(AppCompatDelegate) { ... }
    public abstract boolean requestWindowFeature(int) { ... }
    public abstract void setContentView(int) { ... }
    public abstract void setContentView(View) { ... }
    public abstract void setContentView(View, ViewGroup$LayoutParams) { ... }
    public void setOnBackInvokedDispatcher(OnBackInvokedDispatcher) { ... }
    public void setTheme(int) { ... }
    public abstract void setTitle(CharSequence) { ... }
    static void syncRequestedAndStoredLocales(Context) { ... }

} 

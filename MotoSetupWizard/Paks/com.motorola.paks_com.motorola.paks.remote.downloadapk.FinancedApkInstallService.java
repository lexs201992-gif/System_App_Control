package com.motorola.paks.remote.downloadapk;
import java.lang.String;
import android.content.Context;
import android.content.Intent;
import java.io.File;
import android.os.IBinder;
import android.content.IntentSender;
import android.content.pm.PackageInstaller$Session;

public class FinancedApkInstallService extends Service
{
/*
 * Field Definitions.
 */
      private Context a;
/*
 * Declared Constructors.
 */
    public FinancedApkInstallService() { ... }
    private void a(File, PackageInstaller$Session) { ... }
    private IntentSender b(String) { ... }
    private PackageInstaller$Session c() { ... }
    private void d(String) { ... }
    public IBinder onBind(Intent) { ... }
    public void onCreate() { ... }
    public int onStartCommand(Intent, int, int) { ... }

} 
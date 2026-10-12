package com.motorola.paks.remote.downloadapk;
import java.lang.String;
import android.net.Uri;
import java.lang.Long;
import android.content.Intent;
import java.io.File;
import android.os.IBinder;
import android.app.DownloadManager;

public class FinancedApkDownloadService extends Service
{
/*
 * Field Definitions.
 */
      private final String a;
      private final String b;
      private DownloadManager c;
/*
 * Declared Constructors.
 */
    public FinancedApkDownloadService() { ... }
    private void a(File) { ... }
    private void b(Intent) { ... }
    private void c(Intent) { ... }
    private int d(long) { ... }
    private File e() { ... }
    private Long f() { ... }
    private String g(int) { ... }
    private void h(Uri, File) { ... }
    private void i(long) { ... }
    public IBinder onBind(Intent) { ... }
    public void onCreate() { ... }
    public int onStartCommand(Intent, int, int) { ... }

} 
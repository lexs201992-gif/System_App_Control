package com.ape.setupwizard;
import java.lang.String;
import android.net.wifi.WifiManager;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.net.wifi.ScanResult;
import android.content.BroadcastReceiver;

public class SuwWifiService extends Service
{
/*
 * Field Definitions.
 */
      public Context mContext;
      protected WifiManager mWifiManager;
      private final BroadcastReceiver wifiScanReceiver;
/*
 * Declared Constructors.
 */
    public SuwWifiService() { ... }
    static void access$000(SuwWifiService) { ... }
    public void addProvisionedEapAp(String) { ... }
    private void handleScanResultsAvailable() { ... }
    private boolean isReachable(ScanResult) { ... }
    public IBinder onBind(Intent) { ... }
    public void onCreate() { ... }
    public void onDestroy() { ... }
    public void onStart(Intent, int) { ... }
    public int onStartCommand(Intent, int, int) { ... }
    private void registerWifiReceiver() { ... }
    private int ssidToNetworkId(String) { ... }

} 
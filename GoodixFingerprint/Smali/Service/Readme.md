package com.goodix.fingerprint.service;
import java.lang.Throwable;
import java.lang.String;
import android.content.Context;
import android.os.IBinder;
import com.goodix.fingerprint.service.IGoodixFingerprintCallback;

public abstract class ClientMonitor extends Object
{
/*
 * Field Definitions.
 */
      private Context mContext;
      private String mOwner;
      private IGoodixFingerprintCallback mReceiver;
      private boolean mRestricted;
      private IBinder mToken;
      private int mUserId;
/*
 * Declared Constructors.
 */
    public ClientMonitor(Context, IBinder, IGoodixFingerprintCallback, int, boolean, String) { ... }
    public void binderDied() { ... }
    public void destroy() { ... }
    protected void finalize()  throws Throwable{ ... }
    public Context getContext() { ... }
    public String getOwner() { ... }
    public IGoodixFingerprintCallback getReceiver() { ... }
    public IBinder getToken() { ... }
    public int getUserId() { ... }
    public boolean onAcquired(int) { ... }
    public abstract boolean onAuthenticateFido(int, byte[]) { ... }
    public abstract boolean onAuthenticated(int) { ... }
    public abstract boolean onEnrollResult(int, int) { ... }
    public boolean onError(int) { ... }
    public abstract boolean onHbdData(int, int, int[], int[]) { ... }
    public abstract boolean onRemoved(int) { ... }
    public abstract boolean onTestCmdFinish(int, byte[]) { ... }
    public abstract int start() { ... }
    public abstract int stop(boolean) { ... }

} 

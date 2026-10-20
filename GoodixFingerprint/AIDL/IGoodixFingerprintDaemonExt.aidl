/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

import android.hardware.fingerprint.IGoodixFingerprintDaemonExtCallback;

interface IGoodixFingerprintDaemonExt {
    void initCallback(IGoodixFingerprintDaemonExtCallback callback);
    int setSafeClass(int safeClass);
    int navigate(int navMode);
    int stopNavigation();
    int enableFingerprintModule(byte enable);
    int cameraCapture();
    int stopCameraCapture();
    int enableFfFeature(byte enable);
    int screenOn();
    int screenOff();
    int enumerate();
    int resetLockout();
    int dumpCmd(int cmdId, in byte[] param);
    int lockout();
    int pauseEnroll();
    int resumeEnroll();
}

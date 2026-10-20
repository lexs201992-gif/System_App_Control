/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

import android.hardware.fingerprint.IGoodixFingerprintDaemonHbdCallback;

interface IGoodixFingerprintDaemonHbd {
    void initCallback(IGoodixFingerprintDaemonHbdCallback callback);
    int startHbd();
    int stopHbd();
    int enableBioAssayFeature(byte enableFlag);
}

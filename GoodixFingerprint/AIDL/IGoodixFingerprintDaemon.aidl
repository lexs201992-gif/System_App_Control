/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

import android.hardware.fingerprint.IGoodixFingerprintDaemonCallback;

interface IGoodixFingerprintDaemon {
    void initCallback(IGoodixFingerprintDaemonCallback callback);
    int testCmd(int cmdId, in byte[] param);
}

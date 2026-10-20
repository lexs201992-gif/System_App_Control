/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

interface IGoodixFingerprintDaemonExtCallback {
    void onDump(long deviceId, int cmdId, in byte[] data);
}

/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

interface IGoodixFingerprintDaemonHbdCallback {
    void onHbdData(long deviceId, int heartBeatRate, int status, in int[] displayData, in int[] rawData);
}

/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

interface IGoodixFingerprintDaemonCallback {
    void onEnrollResult(long deviceId, int fingerId, int groupId, int remaining);
    void onAcquired(long deviceId, int acquiredInfo);
    void onAuthenticated(long deviceId, int fingerId, int groupId, in byte[] hat);
    void onError(long deviceId, int error);
    void onRemoved(long deviceId, int fingerId, int groupId);
    void onTestCmd(long deviceId, int cmdId, in byte[] result);
}

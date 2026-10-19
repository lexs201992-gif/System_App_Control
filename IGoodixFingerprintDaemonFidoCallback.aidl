/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package android.hardware.fingerprint;

interface IGoodixFingerprintDaemonFidoCallback {
    void onAuthenticatedFido(long devId, int fingerId, in byte[] uvtData);
}

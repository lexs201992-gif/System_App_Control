/*
 * Copyright (C) 2013-2016, Shenzhen Huiding Technology Co., Ltd.
 * All Rights Reserved.
 */

package com.goodix.fingerprint.service;

interface IGoodixFingerprintCallback {
    void onTestCmd(int cmdId, in byte[] result);
    void onHbdData(int heartBeatRate, int status, in int[] displayData, in int[] rawData);
    void onAuthenticateFido(int fingerId, in byte[] uvt);
    void onEnrollResult(int fingerId, int remaining);
    void onAcquired(int acquiredInfo);
    void onAuthenticationSucceeded(int fingerId);
    void onAuthenticationFailed();
    void onError(int error);
    void onRemoved(int fingerId);
}

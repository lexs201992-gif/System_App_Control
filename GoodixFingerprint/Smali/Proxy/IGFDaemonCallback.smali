.class public interface abstract Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;
.super Ljava/lang/Object;
.source "IGFDaemonCallback.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;


# virtual methods
.method public abstract onAcquired(JI)V
.end method

.method public abstract onAuthenticated(JII[B)V
.end method

.method public abstract onEnrollResult(JIII)V
.end method

.method public abstract onError(JI)V
.end method

.method public abstract onRemoved(JII)V
.end method

.method public abstract onTestCmd(JI[B)V
.end method

.class public interface abstract Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;
.super Ljava/lang/Object;
.source "FpcFingerprintAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAuthenticatorServiceReceiver"
.end annotation


# virtual methods
.method public abstract onAcquired(I)V
.end method

.method public abstract onAuthenticated(I)V
.end method

.method public abstract onEnrollResult(II)V
.end method

.method public abstract onEnumerate(II)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onRemoved(II)V
.end method

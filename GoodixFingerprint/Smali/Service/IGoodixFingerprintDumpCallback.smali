.class public interface abstract Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;
.super Ljava/lang/Object;
.source "IGoodixFingerprintDumpCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDump(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido$invokeFidoCommandCallback;
.super Ljava/lang/Object;
.source "IGoodixFingerprintDaemonFido.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "invokeFidoCommandCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method

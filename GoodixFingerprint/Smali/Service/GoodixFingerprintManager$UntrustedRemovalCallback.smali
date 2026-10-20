.class public abstract Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;
.super Ljava/lang/Object;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UntrustedRemovalCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRemovalError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onRemovalSucceeded(I)V
.end method

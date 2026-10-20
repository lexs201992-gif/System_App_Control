.class public Lcom/goodix/gftest/fingerprint/GoodixFingerprintApplication;
.super Landroid/app/Application;
.source "GoodixFingerprintApplication.java"


# instance fields
.field private mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/gftest/fingerprint/GoodixFingerprintApplication;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string p0, "GoodixFingerprintApplication"

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

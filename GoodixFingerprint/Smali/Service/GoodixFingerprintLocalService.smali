.class public Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;
.super Landroid/app/Service;
.source "GoodixFingerprintLocalService.java"


# static fields
.field public static TAG:Ljava/lang/String; = "GoodixFingerprintLocalService"


# instance fields
.field public mService:Lcom/goodix/fingerprint/service/GoodixFingerprintService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-object p1, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind>>>>>>>mService is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;->mService:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;->mService:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-direct {v1, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;->mService:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

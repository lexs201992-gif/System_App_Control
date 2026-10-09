.class public Lcom/android/unisoc/telephony/server/RadioInteractorService;
.super Landroid/app/Service;
.source "RadioInteractorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/unisoc/telephony/server/RadioInteractorService$RadioInteractorBinder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RadioInteractorService"


# instance fields
.field private mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "RadioInteractorService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorService$RadioInteractorBinder;

    invoke-direct {v0, p0}, Lcom/android/unisoc/telephony/server/RadioInteractorService$RadioInteractorBinder;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onCreate. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInteractorService"

    invoke-static {v1, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->init(Landroid/content/Context;)Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    return-void
.end method

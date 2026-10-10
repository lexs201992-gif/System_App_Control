.class public Lcom/android/rkpdapp/service/RemoteProvisioningService;
.super Landroid/app/Service;
.source "RemoteProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/service/RemoteProvisioningService$RemoteProvisioningBinder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.android.rkpdapp"


# instance fields
.field private final mBinder:Lcom/android/rkpdapp/IRemoteProvisioning$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/rkpdapp/service/RemoteProvisioningService$RemoteProvisioningBinder;

    invoke-direct {v0, p0}, Lcom/android/rkpdapp/service/RemoteProvisioningService$RemoteProvisioningBinder;-><init>(Lcom/android/rkpdapp/service/RemoteProvisioningService;)V

    iput-object v0, p0, Lcom/android/rkpdapp/service/RemoteProvisioningService;->mBinder:Lcom/android/rkpdapp/IRemoteProvisioning$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/service/RemoteProvisioningService;->mBinder:Lcom/android/rkpdapp/IRemoteProvisioning$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

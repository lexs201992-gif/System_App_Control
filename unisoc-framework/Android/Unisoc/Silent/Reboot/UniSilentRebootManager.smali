.class public Landroid/unisoc/silent/reboot/UniSilentRebootManager;
.super Ljava/lang/Object;
.source "UniSilentRebootManager.java"


# annotations
.annotation runtime Landroid/annotation/UnisocHiddenApi;
.end annotation


# static fields
.field public static final blacklist REBOOT_REASON:Ljava/lang/String; = "quiescent"

.field public static final blacklist UNISOC_SILENT_REBOOT_SERVICE:Ljava/lang/String; = "unisoc_silent_reboot"

.field public static final blacklist UPDATE_TOKEN:Ljava/lang/String; = "unisilentreboot"

.field static blacklist mService:Landroid/unisoc/silent/reboot/IUniSilentReboot;

.field static blacklist sUniSilentRebootManager:Landroid/unisoc/silent/reboot/UniSilentRebootManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->sUniSilentRebootManager:Landroid/unisoc/silent/reboot/UniSilentRebootManager;

    sput-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->mService:Landroid/unisoc/silent/reboot/IUniSilentReboot;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/unisoc/silent/reboot/UniSilentRebootManager;
    .locals 1

    sget-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->sUniSilentRebootManager:Landroid/unisoc/silent/reboot/UniSilentRebootManager;

    if-nez v0, :cond_0

    const-string v0, "unisoc_silent_reboot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;->asInterface(Landroid/os/IBinder;)Landroid/unisoc/silent/reboot/IUniSilentReboot;

    move-result-object v0

    sput-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->mService:Landroid/unisoc/silent/reboot/IUniSilentReboot;

    new-instance v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;

    invoke-direct {v0}, Landroid/unisoc/silent/reboot/UniSilentRebootManager;-><init>()V

    sput-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->sUniSilentRebootManager:Landroid/unisoc/silent/reboot/UniSilentRebootManager;

    :cond_0
    sget-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->sUniSilentRebootManager:Landroid/unisoc/silent/reboot/UniSilentRebootManager;

    return-object v0
.end method


# virtual methods
.method public blacklist isDeviceMoving()Z
    .locals 2

    sget-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->mService:Landroid/unisoc/silent/reboot/IUniSilentReboot;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/unisoc/silent/reboot/IUniSilentReboot;->isDeviceMoving()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPreparedForUnattendedReboot()Z
    .locals 2

    sget-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->mService:Landroid/unisoc/silent/reboot/IUniSilentReboot;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/unisoc/silent/reboot/IUniSilentReboot;->isPreparedForUnattendedReboot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist silentRebootForApply()V
    .locals 2

    sget-object v0, Landroid/unisoc/silent/reboot/UniSilentRebootManager;->mService:Landroid/unisoc/silent/reboot/IUniSilentReboot;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/unisoc/silent/reboot/IUniSilentReboot;->silentRebootForApply()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

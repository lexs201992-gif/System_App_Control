.class public Landroid/app/ProcessProtection;
.super Ljava/lang/Object;
.source "ProcessProtection.java"


# static fields
.field public static final PROCESS_PROTECT_CRITICAL:I = 0xb

.field public static final PROCESS_PROTECT_IMPORTANCE:I = 0xc

.field public static final PROCESS_PROTECT_NORMAL:I = 0xd

.field public static final PROCESS_STATUS_IDLE:I = 0x0

.field public static final PROCESS_STATUS_MAINTAIN:I = 0x2

.field public static final PROCESS_STATUS_PERSISTENT:I = 0x3

.field public static final PROCESS_STATUS_RUNNING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSelfProtectStatus(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->setProcessProtectStatusByPid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

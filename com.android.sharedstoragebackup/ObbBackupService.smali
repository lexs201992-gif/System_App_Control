.class public Lcom/android/sharedstoragebackup/ObbBackupService;
.super Landroid/app/Service;
.source "ObbBackupService.java"


# instance fields
.field mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/sharedstoragebackup/ObbBackupService$1;

    invoke-direct {v0, p0}, Lcom/android/sharedstoragebackup/ObbBackupService$1;-><init>(Lcom/android/sharedstoragebackup/ObbBackupService;)V

    iput-object v0, p0, Lcom/android/sharedstoragebackup/ObbBackupService;->mService:Lcom/android/internal/backup/IObbBackupService;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/sharedstoragebackup/ObbBackupService;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-interface {p0}, Lcom/android/internal/backup/IObbBackupService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

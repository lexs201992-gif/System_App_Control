.class public Lcom/android/account/SdnSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SdnSyncAdapter.java"


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const-string p2, "SyncAdapter"

    const-string v0, "SdnSyncAdapter"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/account/SdnSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    return-void
.end method

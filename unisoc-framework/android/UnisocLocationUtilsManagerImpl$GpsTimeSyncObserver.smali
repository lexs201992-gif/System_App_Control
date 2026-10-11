.class Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;
.super Landroid/database/ContentObserver;
.source "UnisocLocationUtilsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UnisocLocationUtilsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsTimeSyncObserver"
.end annotation


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMsg:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;->mHandler:Landroid/os/Handler;

    iput p2, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;->mMsg:I

    return-void
.end method


# virtual methods
.method blacklist observe(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "auto_time_gps"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public whitelist onChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

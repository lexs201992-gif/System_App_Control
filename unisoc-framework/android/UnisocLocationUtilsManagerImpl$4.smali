.class Landroid/location/UnisocLocationUtilsManagerImpl$4;
.super Ljava/lang/Object;
.source "UnisocLocationUtilsManagerImpl.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UnisocLocationUtilsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/UnisocLocationUtilsManagerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/location/UnisocLocationUtilsManagerImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$4;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLocationChanged(Landroid/location/Location;)V
    .locals 3

    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS time sync mLocationListener location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$4;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v0}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmGpsTimerThread(Landroid/location/UnisocLocationUtilsManagerImpl;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

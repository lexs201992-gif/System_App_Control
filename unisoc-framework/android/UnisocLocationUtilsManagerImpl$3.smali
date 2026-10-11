.class Landroid/location/UnisocLocationUtilsManagerImpl$3;
.super Ljava/lang/Thread;
.source "UnisocLocationUtilsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/UnisocLocationUtilsManagerImpl;->startUsingGpsWithTimeout(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

.field final synthetic blacklist val$milliseconds:I

.field final synthetic blacklist val$timeoutMsg:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/location/UnisocLocationUtilsManagerImpl;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    iput p2, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->val$milliseconds:I

    iput-object p3, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->val$timeoutMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->val$milliseconds:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS time sync InterruptedException ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS time sync isTimeout ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v2, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->val$timeoutMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmGpsHandler(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v1}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmLocationManager(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmLocationListener(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$3;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fputmIsGpsTimeSyncRunning(Landroid/location/UnisocLocationUtilsManagerImpl;Z)V

    return-void
.end method

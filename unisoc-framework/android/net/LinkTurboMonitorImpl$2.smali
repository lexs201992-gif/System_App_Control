.class Landroid/net/LinkTurboMonitorImpl$2;
.super Ljava/lang/Object;
.source "LinkTurboMonitorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboMonitorImpl;->startLinkTurboMonitor(Landroid/net/ConnectivityManager;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LinkTurboMonitorImpl;

.field final synthetic blacklist val$mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic blacklist val$packageName:Ljava/lang/String;

.field final synthetic blacklist val$pid:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl;Landroid/net/ConnectivityManager;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    iput-object p2, p0, Landroid/net/LinkTurboMonitorImpl$2;->val$mConnectivityManager:Landroid/net/ConnectivityManager;

    iput p3, p0, Landroid/net/LinkTurboMonitorImpl$2;->val$pid:I

    iput p4, p0, Landroid/net/LinkTurboMonitorImpl$2;->val$uid:I

    iput-object p5, p0, Landroid/net/LinkTurboMonitorImpl$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmContext(Landroid/net/LinkTurboMonitorImpl;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/net/LinkTurboManager;->getInstance(Landroid/content/Context;)Landroid/net/LinkTurboManager;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fputmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;Landroid/net/LinkTurboManager;)V

    :cond_1
    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    new-instance v1, Landroid/net/LinkTurboMonitorImpl$2$1;

    invoke-direct {v1, p0}, Landroid/net/LinkTurboMonitorImpl$2$1;-><init>(Landroid/net/LinkTurboMonitorImpl$2;)V

    invoke-static {v0, v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fputmLinkTurboCallback(Landroid/net/LinkTurboMonitorImpl;Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboLock(Landroid/net/LinkTurboMonitorImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "SmartLink2.0:LinkTurboMonitorImpl"

    const-string v2, "registerNetworkCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboCallback(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager$LinkTurboCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/LinkTurboManager;->registerNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

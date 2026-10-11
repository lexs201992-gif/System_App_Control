.class Landroid/net/LinkTurboMonitorImpl$3;
.super Ljava/lang/Object;
.source "LinkTurboMonitorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboMonitorImpl;->beginLinkTurboMonitor(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LinkTurboMonitorImpl;

.field final synthetic blacklist val$packageName:Ljava/lang/String;

.field final synthetic blacklist val$pid:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    iput p2, p0, Landroid/net/LinkTurboMonitorImpl$3;->val$uid:I

    iput p3, p0, Landroid/net/LinkTurboMonitorImpl$3;->val$pid:I

    iput-object p4, p0, Landroid/net/LinkTurboMonitorImpl$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    const-string v0, "SmartLinkMonitor"

    const-string v1, "------------------- beginLinkTurboMonitor ----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mgetNetworkAdapterService(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/INetworkAdapterService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fputmNetd(Landroid/net/LinkTurboMonitorImpl;Landroid/net/INetworkAdapterService;)V

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmContext(Landroid/net/LinkTurboMonitorImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/LinkTurboManager;->getInstance(Landroid/content/Context;)Landroid/net/LinkTurboManager;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fputmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;Landroid/net/LinkTurboManager;)V

    :cond_0
    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmNetd(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/INetworkAdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SmartLinkMonitor"

    const-string v1, "NetworkAdapterService is not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/net/LinkTurboMonitorImpl$3$1;

    invoke-direct {v0, p0}, Landroid/net/LinkTurboMonitorImpl$3$1;-><init>(Landroid/net/LinkTurboMonitorImpl$3;)V

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboLock(Landroid/net/LinkTurboMonitorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/net/LinkTurboManager;->registerNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmonitorCallbacks(Landroid/net/LinkTurboMonitorImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Landroid/net/LinkTurboMonitorImpl$3;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

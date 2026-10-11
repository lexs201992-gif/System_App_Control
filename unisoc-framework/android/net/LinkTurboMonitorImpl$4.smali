.class Landroid/net/LinkTurboMonitorImpl$4;
.super Landroid/database/ContentObserver;
.source "LinkTurboMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboMonitorImpl;->initWlanPlusObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LinkTurboMonitorImpl;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    iput-object p3, p0, Landroid/net/LinkTurboMonitorImpl$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 3

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_plus_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SmartLinkMonitor"

    if-ne v0, v1, :cond_0

    const-string v1, "wlan+ turn on"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmonitorCallbacks(Landroid/net/LinkTurboMonitorImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mregisterSmartLinkUidObserver(Landroid/net/LinkTurboMonitorImpl;)V

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mopenNetworkAccelerationForGameList(Landroid/net/LinkTurboMonitorImpl;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v1, "wlan+ turn off"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$munregisterSmartLinkUidObserver(Landroid/net/LinkTurboMonitorImpl;)V

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mclearAllCallbacks(Landroid/net/LinkTurboMonitorImpl;)V

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$4;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mcloseNetworkAccelerationForGameList(Landroid/net/LinkTurboMonitorImpl;)V

    :goto_0
    return-void
.end method

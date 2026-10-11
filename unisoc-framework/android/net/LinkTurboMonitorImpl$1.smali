.class Landroid/net/LinkTurboMonitorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "LinkTurboMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkTurboMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LinkTurboMonitorImpl;


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$1;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartLink2.0:LinkTurboMonitorImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isScreenOn strat"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$1;->this$0:Landroid/net/LinkTurboMonitorImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fputmIsScreenOn(Landroid/net/LinkTurboMonitorImpl;I)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isScreenOn closed"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$1;->this$0:Landroid/net/LinkTurboMonitorImpl;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fputmIsScreenOn(Landroid/net/LinkTurboMonitorImpl;I)V

    :cond_1
    :goto_0
    return-void
.end method

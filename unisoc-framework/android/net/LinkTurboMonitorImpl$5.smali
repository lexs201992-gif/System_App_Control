.class Landroid/net/LinkTurboMonitorImpl$5;
.super Landroid/app/IUidObserver$Stub;
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

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$5;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUidActive(I)V
    .locals 0

    return-void
.end method

.method public blacklist onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public blacklist onUidGone(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$5;->this$0:Landroid/net/LinkTurboMonitorImpl;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mendLinkTurboMonitor(Landroid/net/LinkTurboMonitorImpl;II)V

    return-void
.end method

.method public blacklist onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public blacklist onUidProcAdjChanged(II)V
    .locals 0

    return-void
.end method

.method public blacklist onUidStateChanged(IIJI)V
    .locals 2

    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$5;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0, p1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mbeforeLinkTurboMonitor(Landroid/net/LinkTurboMonitorImpl;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$5;->this$0:Landroid/net/LinkTurboMonitorImpl;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$mendLinkTurboMonitor(Landroid/net/LinkTurboMonitorImpl;II)V

    :goto_0
    return-void
.end method

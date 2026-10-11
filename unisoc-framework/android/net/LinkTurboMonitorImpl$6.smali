.class Landroid/net/LinkTurboMonitorImpl$6;
.super Ljava/util/ArrayList;
.source "LinkTurboMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboMonitorImpl;->openNetworkAccelerationForGameList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LinkTurboMonitorImpl;


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl;)V
    .locals 1

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$6;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.dts.freefireth"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.ig"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.tmgp.sgame"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.mobile.legends"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netease.racerna"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.ea.gp.fifamobile"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "jp.konami.pesam"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.riotgames.league.wildrift"

    invoke-virtual {p0, v0}, Landroid/net/LinkTurboMonitorImpl$6;->add(Ljava/lang/Object;)Z

    return-void
.end method

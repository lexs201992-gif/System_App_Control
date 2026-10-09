.class public Lcom/inmobi/installer/InstallerBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SelfUpdate"

    invoke-static {v0}, Lcom/inmobi/installer/logger/InmobiLogger;->tag(Ljava/lang/String;)Lcom/inmobi/installer/logger/InmobiLogger$Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive from Boot = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lcom/inmobi/installer/logger/InmobiLogger$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/inmobi/installer/core/tt;

    invoke-direct {p2, p1}, Lcom/inmobi/installer/core/tt;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/inmobi/installer/core/e90;

    invoke-static {p1}, Lcom/inmobi/installer/core/utils/CommonUtils;->isDebuggableApplication(Landroid/content/Context;)Z

    invoke-direct {v0, p2}, Lcom/inmobi/installer/core/e90;-><init>(Lcom/inmobi/installer/core/tt;)V

    sget-object p2, Lcom/inmobi/installer/core/pj;->KEEP:Lcom/inmobi/installer/core/pj;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/installer/core/e90;->b(Landroid/content/Context;Lcom/inmobi/installer/core/pj;)V

    return-void
.end method

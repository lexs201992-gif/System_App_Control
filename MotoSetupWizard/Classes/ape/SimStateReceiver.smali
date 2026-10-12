.class public Lcom/ape/setupwizard/SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;
    }
.end annotation


# instance fields
.field private onSimSwitchListener:Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    iget-object p0, p0, Lcom/ape/setupwizard/SimStateReceiver;->onSimSwitchListener:Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;

    if-eqz p0, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;->simValid(Z)V

    :cond_1
    return-void
.end method

.method public setOnSimSwitchListener(Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/SimStateReceiver;->onSimSwitchListener:Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;

    return-void
.end method

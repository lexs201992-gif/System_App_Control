.class public final synthetic Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;

.field public final synthetic blacklist f$1:Landroid/os/UEventObserver$UEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;

    iput-object p2, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;->f$1:Landroid/os/UEventObserver$UEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;

    iget-object v1, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;->f$1:Landroid/os/UEventObserver$UEvent;

    invoke-static {v0, v1}, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;->$r8$lambda$8GonioN1_Lbc25SaTJa-A7hgZz0(Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

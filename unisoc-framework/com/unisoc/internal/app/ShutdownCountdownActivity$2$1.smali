.class Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;
.super Ljava/lang/Object;
.source "ShutdownCountdownActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;


# direct methods
.method constructor blacklist <init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    const-string v0, "ShutdownCountdownActivity"

    const-string v1, "ShutdownThread->shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;

    iget-object v0, v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;

    iget-object v0, v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;->this$1:Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;

    iget-object v0, v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmPm(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/IPowerManager;

    move-result-object v0

    const-string v1, "timer"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

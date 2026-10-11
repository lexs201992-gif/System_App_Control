.class Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "ShutdownCountdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisoc/internal/app/ShutdownCountdownActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;


# direct methods
.method constructor blacklist <init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ignored = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCountdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmHandler(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmShutdownAction(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-virtual {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->finish()V

    :cond_0
    return-void
.end method

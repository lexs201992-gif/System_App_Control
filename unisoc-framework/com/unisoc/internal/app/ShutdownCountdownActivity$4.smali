.class Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;
.super Ljava/lang/Object;
.source "ShutdownCountdownActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisoc/internal/app/ShutdownCountdownActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "ShutdownCountdownActivity"

    const-string v1, "Cancel shutdown."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmHandler(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmShutdownAction(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-virtual {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->finish()V

    return-void
.end method

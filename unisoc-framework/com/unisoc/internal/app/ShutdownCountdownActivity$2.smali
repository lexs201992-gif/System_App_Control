.class Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;
.super Ljava/lang/Object;
.source "ShutdownCountdownActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fputmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShutdownAction run \uff1a mSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$mgetImportVariables(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCountdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)I

    move-result v1

    const v2, 0x80b0001

    invoke-static {v0, v1, v2}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$msetSecondsForDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;II)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmHandler(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmShutdownAction(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/unisoc/internal/app/ShutdownCountdownActivity;

    invoke-static {v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->-$$Nest$fgetmHandler(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;

    invoke-direct {v1, p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2$1;-><init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

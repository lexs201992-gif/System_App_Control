.class Lcom/ape/setupwizard/activity/MotoTheme$1;
.super Landroid/os/Handler;
.source "MotoTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/MotoTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoTheme;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$1;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$1;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoTheme;->access$000(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/app/UiModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$1;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoTheme;->access$100(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/ape/setupwizard/utils/SPUtils;->setTheme(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$1;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoTheme;->access$000(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/app/UiModeManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme$1;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$200(Lcom/ape/setupwizard/activity/MotoTheme;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotoTheme"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

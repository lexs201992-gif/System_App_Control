.class Lcom/ape/setupwizard/activity/MotoNavigation$1;
.super Landroid/os/Handler;
.source "MotoNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/MotoNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoNavigation;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$1;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$1;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$000(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/om/OverlayManager;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$1;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$000(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/om/OverlayManager;

    move-result-object p0

    const-string p1, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/om/OverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$1;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$000(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/om/OverlayManager;

    move-result-object p0

    const-string p1, "com.android.internal.systemui.navbar.gestural"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/om/OverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string p1, "MotoNavigation"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

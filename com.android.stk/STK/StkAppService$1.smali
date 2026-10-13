.class Lcom/android/stk/StkAppService$1;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 2

    const-string p1, "StkAppService"

    const-string v0, "mRegistrationCallback onRegistered"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$maddToMenuSystemOrUpdateLabel(Lcom/android/stk/StkAppService;)V

    :cond_2
    return-void
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    const-string p1, "StkAppService"

    const-string v0, "mRegistrationCallback onUnregistered"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

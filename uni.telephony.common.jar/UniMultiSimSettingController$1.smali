.class Lcom/android/internal/telephony/UniMultiSimSettingController$1;
.super Landroid/database/ContentObserver;
.source "UniMultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UniMultiSimSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UniMultiSimSettingController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSetupWizardCompleteObserver : isDeviceProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    invoke-static {v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->-$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/UniMultiSimSettingController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->-$$Nest$mlog(Lcom/android/internal/telephony/UniMultiSimSettingController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    invoke-static {v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->-$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/UniMultiSimSettingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    invoke-static {v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->-$$Nest$fgetmNeedPopUpSimSettings(Lcom/android/internal/telephony/UniMultiSimSettingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->-$$Nest$msendSubChangeNotificationIfNeeded(Lcom/android/internal/telephony/UniMultiSimSettingController;I)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/UniMultiSimSettingController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->-$$Nest$fputmNeedPopUpSimSettings(Lcom/android/internal/telephony/UniMultiSimSettingController;Z)V

    :cond_0
    return-void
.end method

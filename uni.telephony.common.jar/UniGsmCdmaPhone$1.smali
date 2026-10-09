.class Lcom/android/internal/telephony/UniGsmCdmaPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "UniGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UniGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UniGsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UniGsmCdmaPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/UniGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/UniGsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/UniGsmCdmaPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/UniGsmCdmaPhone;->mIsPendingRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/UniGsmCdmaPhone;

    sget v1, Lcom/android/internal/telephony/GsmCdmaPhone;->ENABLE_UICC_APPS_MAX_RETRIES:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniGsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    :cond_0
    return-void
.end method

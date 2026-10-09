.class Lcom/android/internal/telephony/gsm/UniGsmMmiCode$1;
.super Landroid/os/Handler;
.source "UniGsmMmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UniGsmMmiCode;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UniGsmMmiCode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$1;->this$0:Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : msg.what= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniGsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$1;->this$0:Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->-$$Nest$monSetClipComplete(Lcom/android/internal/telephony/gsm/UniGsmMmiCode;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$1;->this$0:Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->-$$Nest$monQueryLiComplete(Lcom/android/internal/telephony/gsm/UniGsmMmiCode;Landroid/os/Bundle;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

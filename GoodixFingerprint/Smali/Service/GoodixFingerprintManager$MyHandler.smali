.class Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;


# direct methods
.method private constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Landroid/content/Context;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3eb

    const-string v2, "GoodixFingerprintManager"

    if-eq v0, v1, :cond_8

    const-string v1, "MSG_ACQUIRED no callback"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;->onRemovalSucceeded(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1200(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1200(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1200(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;->onRemovalError(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;->onAuthenticationFailed()V

    goto/16 :goto_0

    :cond_3
    const-string p0, "mUntrustedAuthenticationCallback no callback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;->onAuthenticationSucceeded(I)V

    goto/16 :goto_0

    :cond_4
    const-string p0, "MSG_AUTHENTICATION_SUCCEEDED no callback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;->onEnrollmentAcquired(I)V

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1000(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;->onAuthenticationAcquired(I)V

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1000(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;->onEnrollmentProgress(II)V

    goto :goto_0

    :cond_7
    const-string p0, "MSG_ENROLL_RESULT no callback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$200(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$AuthenticateFidoCallback;

    const-string p0, "handleMessage, mAuthenticateFidoCallback is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$DumpCallback;

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$500()Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {p0}, Lcom/goodix/fingerprint/utils/TestResultParser;->parser([B)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$500()Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;->onTestCmd(ILjava/util/HashMap;)V

    :cond_b
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/internal/telephony/uicc/UniIccRecords$1;
.super Landroid/telephony/PhoneStateListener;
.source "UniIccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UniIccRecords;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UniIccRecords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fputmLac(Lcom/android/internal/telephony/uicc/UniIccRecords;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/uicc/UniIccRecords;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniIccRecords;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCellLocationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmLac(Lcom/android/internal/telephony/uicc/UniIccRecords;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mccmnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/uicc/UniIccRecords;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    new-instance v2, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UniIccRecords;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fputmRadioInteractor(Lcom/android/internal/telephony/uicc/UniIccRecords;Lcom/android/unisoc/telephony/RadioInteractor;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/uicc/UniIccRecords;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniIccRecords;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->updateOperatorName(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/uicc/UniIccRecords;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniIccRecords;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->updateOperatorName(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

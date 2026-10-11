.class public Landroid/location/UnisocGpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "UnisocGpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;,
        Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field public static final blacklist GPS_ENC_NONE:I = 0x0

.field public static final blacklist GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final blacklist GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final blacklist GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final blacklist GPS_ENC_UNKNOWN:I = -0x1

.field public static final blacklist GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final blacklist GPS_NI_NEED_VERIFY:I = 0x2

.field public static final blacklist GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final blacklist GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final blacklist GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final blacklist GPS_NI_RESPONSE_IGNORE:I = 0x4

.field public static final blacklist GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final blacklist GPS_NI_TYPE_EMERGENCY_SUPL:I = 0x4

.field public static final blacklist GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final blacklist GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final blacklist GPS_NI_TYPE_VOICE:I = 0x1

.field public static final blacklist NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final blacklist NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final blacklist NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final blacklist NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final blacklist NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final blacklist NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final blacklist NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final blacklist NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final blacklist TAG:Ljava/lang/String; = "UnisocGpsNetInitiatedHandler"

.field private static greylist mIsHexInput:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNetInitiatedListener:Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;

.field private blacklist mNiNotificationBuilder:Landroid/app/Notification$Builder;

.field private blacklist mPlaySounds:Z

.field private blacklist mPopupImmediately:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/location/UnisocGpsNetInitiatedHandler;->mIsHexInput:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mPlaySounds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mPopupImmediately:Z

    iput-object p1, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;

    return-void
.end method

.method static blacklist decodeGSMPackedString([B)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x7

    rem-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "UnisocGpsNetInitiatedHandler"

    const-string v5, "Decoding of GSM packed string failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    :cond_1
    return-object v3
.end method

.method private static greylist decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/location/UnisocGpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for NI text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnisocGpsNetInitiatedHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :pswitch_0
    invoke-static {v0}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-static {v0}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-static {v0}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist decodeUCS2String([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static blacklist decodeUTF8String([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static blacklist getDialogMessage(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/location/UnisocGpsNetInitiatedHandler;->getNotifMessage(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDialogTitle(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/location/UnisocGpsNetInitiatedHandler;->getNotifTitle(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDlgIntent(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Landroid/location/UnisocGpsNetInitiatedHandler;->getDialogTitle(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Landroid/location/UnisocGpsNetInitiatedHandler;->getDialogMessage(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "notif_id"

    iget v4, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "timeout"

    iget v4, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "default_resp"

    iget v4, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateIntent, title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnisocGpsNetInitiatedHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static blacklist getNotifMessage(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const v0, 0x1040425

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v2, Landroid/location/UnisocGpsNetInitiatedHandler;->mIsHexInput:Z

    iget v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v1, v2, v3}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Landroid/location/UnisocGpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v2, v3, v4}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNotifTicker(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const v0, 0x1040426

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v2, Landroid/location/UnisocGpsNetInitiatedHandler;->mIsHexInput:Z

    iget v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v1, v2, v3}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Landroid/location/UnisocGpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v2, v3, v4}, Landroid/location/UnisocGpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNotifTitle(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const v0, 0x1040427

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist openNiDialog(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/location/UnisocGpsNetInitiatedHandler;->getDlgIntent(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openNiDialog, notifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnisocGpsNetInitiatedHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized blacklist setNiNotification(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Landroid/location/UnisocGpsNetInitiatedHandler;->getNotifTitle(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Landroid/location/UnisocGpsNetInitiatedHandler;->getNotifMessage(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnisocGpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNiNotification, notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080891

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    :cond_1
    iget-boolean v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mPlaySounds:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :goto_0
    iget-object v3, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Landroid/location/UnisocGpsNetInitiatedHandler;->getNotifTicker(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget v3, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v4, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static blacklist stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p1, :cond_0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    new-array v1, v0, [B

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public blacklist handleNiNotification(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3

    iget-boolean v0, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/location/UnisocGpsNetInitiatedHandler;->openNiDialog(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/location/UnisocGpsNetInitiatedHandler;->setNiNotification(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/location/UnisocGpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;

    iget v1, p1, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;->sendNiResponseInternal(II)V

    :cond_3
    return-void
.end method

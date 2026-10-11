.class public Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;
.super Lcom/android/internal/telephony/UniFrameworkTelephonyManager;
.source "UniFrameworkTelephonyManagerImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UniFrameworkTelephonyManagerImpl"

.field private static blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;-><init>()V

    return-void
.end method

.method private blacklist getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;
    .locals 1

    const-string v0, "uni_telephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IUniTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSubmitPdu(Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;Ljava/io/ByteArrayOutputStream;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 2

    const-string v0, "destPortZeroGetSubmitPdu"

    invoke-static {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v0, p3

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    array-length v1, p3

    invoke-virtual {p2, p3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object p1
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniFrameworkTelephonyManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist areUiccAppsEnabledCard(Landroid/content/Context;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "_id=?"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "uicc_applications_enabled"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0
.end method

.method public blacklist destPortZeroGetSubmitPdu([BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;Ljava/io/ByteArrayOutputStream;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 2

    array-length v0, p1

    const/16 v1, 0x8c

    if-le v0, v1, :cond_0

    const-string v0, "SMS data message may only contain 140"

    invoke-static {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getSubmitPdu(Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;Ljava/io/ByteArrayOutputStream;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public blacklist endAllLiveCalls(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IUniTelephony;->endAllLiveCalls(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException ex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist forceDetachDataConn(Landroid/os/Messenger;II)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IUniTelephony;->forceDetachDataConn(Landroid/os/Messenger;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling forceDetachDataConn ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist getHomeExceptService(I)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "getHomeExceptService"

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->getHomeExceptService(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    nop

    :goto_0
    return v0
.end method

.method public blacklist getIccFdnEnabled(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->getIccFdnEnabledForSubscriber(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException getIccFdnEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getMsisdnNumber(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->getMsisdnNumber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "UniFrameworkTelephonyManagerImpl"

    const-string v3, "RemoteException getMsisdnNumber = "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public blacklist getOpPreferredPrimaryCard()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IUniTelephony;->getOpPreferredPrimaryCard()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling getOpPreferredPrimaryCard ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getPayState(I)I
    .locals 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->getInstance()Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    move-result-object v1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->getUniIccRecordForPhone(I)Lcom/android/internal/telephony/uicc/UniIccRecords;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPayType()I

    move-result v0

    :cond_0
    return v0
.end method

.method public blacklist getPnnHomeName(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->getPnnHomeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getPreferredPrimaryCard()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IUniTelephony;->getPreferredPrimaryCard()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getRestrictPreferencePhoneId(I)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->getRestrictPreferencePhoneId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getRestrictedNetTypePhoneId()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IUniTelephony;->getRestrictedNetTypePhoneId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling getRestrictedNetTypePhoneId ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getRestrictedNetworkTypeBitMask(I)J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IUniTelephony;->getRestrictedNetworkTypeBitMask(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException ex ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return-wide v0
.end method

.method public blacklist getRomingExceptService(I)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "getRomingExceptService"

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->getRomingExceptService(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    nop

    :goto_0
    return v0
.end method

.method public blacklist getSimLockRemainTimes(II)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IUniTelephony;->getSimLockRemainTimes(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling getSimLockRemainTimes ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getSimLockStatus(II)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IUniTelephony;->getSimLockStatus(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling getSimLockStatus ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getSimLockVersion()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getSimlockWhitelist(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/android/unisoc/telephony/RadioInteractor;

    sget-object v2, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/unisoc/telephony/RadioInteractor;->getSimlockWhitelist(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spf SimlockWhitelist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniFrameworkTelephonyManagerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getSubsidyLockStatus(Landroid/content/Context;I)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/IUniTelephony;->getSubsidyLockStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling getSubsidyLockStatus ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getTypeLabelResourceEx(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const v0, 0x10407d7

    return v0

    :pswitch_0
    const v0, 0x80c005b

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xde
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist initSimLockController(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/OpSimLockController;

    return-void
.end method

.method public blacklist isAllDataDisconnected(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isAllDataDisconnected(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isAllowedEditNum(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isCallAllowedForSlot(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isCallAllowedForSlot(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling isCallAllowedForSlot ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isDataAllowedForSlot(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isDataAllowedForSlot(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling isDataAllowedForSlot ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isDataRestrictBySimLock(I)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->isOperatorSimLockEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getSimLockVersion()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->isOperatorSimLockEnabled(I)Z

    move-result v3

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getOpPreferredPrimaryCard()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v4, p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data restricted by simlock. operator primary card: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->isOperatorSimLockEnabled(I)Z

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->isOperatorSimLockEnabled(I)Z

    move-result v5

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->isDataAllowedForSlot(I)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v2, "data restricted by TRUE simlock."

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0

    :cond_4
    return v2
.end method

.method public blacklist isDataSwitchAllowedForSubsidy()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IUniTelephony;->isDataSwitchAllowedForSubsidy()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling isDataSwitchAllowedForSubsidy ex= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDefaultDataCardSwitchAllowed()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IUniTelephony;->isDefaultDataCardSwitchAllowed()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling isDefaultDataCardSwitchAllowed ex= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDefaultDataRoamingEnabled(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isDefaultDataRoamingEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isDisableSimAllowedByIccId(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IUniTelephony;->isDisableSimAllowedByIccId(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling isDisableSimAllowedByIccIdex ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDisableSimAllowedForSubsidy(I)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IUniTelephony;->isDisableSimAllowedForSubsidy(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling isDisableSimAllowedForSubsidy ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isEmptyApnAllowed(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isImpl()Z
    .locals 1

    const-string v0, "UniFrameworkTelephonyManagerImpl is online!"

    invoke-static {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isNationalRoamingSupported(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isNeedPopupPrimaryCardSettingPrompt()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IUniTelephony;->isNeedPopupPrimaryCardSettingPrompt()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isOperatorCardForSubsidy(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isOperatorCardForSubsidy(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling isOperatorCardForSubsidy ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isOperatorSimLockEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v2, 0x8030019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const v2, 0x803003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    const v2, 0x8030039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    const v2, 0x8030035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    const v2, 0x8030038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    const v2, 0x8030037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    const v2, 0x8030036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isPayStateSupported(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isPsDataOffSupported(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isRestrictPreference(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isRestrictPreference(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isSmsAllowedForSlot(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->isSmsAllowedForSlot(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling isSmsAllowedForSlot ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isSubscriptionPersoEnabled(I)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IUniTelephony;->isSubscriptionPersoEnabled(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling isSubscriptionPersoEnabled ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isWhiteListCard(I)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IUniTelephony;->isWhiteListCard(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling isWhiteListCard ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist popupDataEnabledForSubsidy(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IUniTelephony;->popupDataEnabledForSubsidy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling popupDataEnabledForSubsidy ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist restrictedNetworkTypeNeeded(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IUniTelephony;->restrictedNetworkTypeNeeded(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling restrictedNetworkTypeNeeded ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist setDataRoamingEnabled(IZ)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IUniTelephony;->setDataRoamingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException ex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist setEmergencyOnly(ZLandroid/os/Messenger;II)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IUniTelephony;->setEmergencyOnly(ZLandroid/os/Messenger;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling setEmergencyOnly ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Messenger;II)V
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IUniTelephony;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Messenger;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling setFacilityLock ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist setMsisdnNumber(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IUniTelephony;->setMsisdnNumber(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "UniFrameworkTelephonyManagerImpl"

    const-string v3, "RemoteException setMsisdnNumber = "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public blacklist setPsDataOff(IZI)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IUniTelephony;->setPsDataOff(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException ex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist setRadioPower(IZ)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IUniTelephony;->setRadioPower(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniFrameworkTelephonyManagerImpl"

    const-string v2, "RemoteException calling setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setSa(IILandroid/os/Messenger;II)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IUniTelephony;->setSa(IILandroid/os/Messenger;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniFrameworkTelephonyManagerImpl"

    const-string v2, "RemoteException calling setSa "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setUserDataEnabledForSubsidy(IZ)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IUniTelephony;->setUserDataEnabledForSubsidy(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling setUserDataEnabledForSubsidy ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist setVendorDataEnabled(IZI)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IUniTelephony;->setVendorDataEnabled(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException ex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist supplySimDepersonalization(IILjava/lang/String;)Landroid/telephony/PinResult;
    .locals 6

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->getIUniTelephony()Lcom/android/internal/telephony/IUniTelephony;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IUniTelephony;->supplySimDepersonalization(IILjava/lang/String;)[I

    move-result-object v2

    new-instance v3, Landroid/telephony/PinResult;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/PinResult;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling supplySimDepersonalization ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;->log(Ljava/lang/String;)V

    return-object v0
.end method

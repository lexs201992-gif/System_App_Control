.class public Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;
.super Ljava/lang/Object;
.source "TelcelOnekeyLockUtil.java"


# static fields
.field private static mInstance:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;
    .locals 3

    const-class v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    goto :goto_0

    :cond_0
    const-string p0, "TelcelOnekeyLockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  mInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected getNckCode()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    const-string v2, "TelcelOnekeyLockUtil"

    const-string v3, ""

    if-ge v0, v1, :cond_0

    const-string p0, "Invalid IMEI"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x14

    mul-long/2addr v0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNckCode exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3
.end method

.method public getRemainTimes()I
    .locals 3

    const-string v0, "TelcelOnekeyLockUtil"

    :try_start_0
    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "NCK_SIMLOCK_REMAIN_TIMES"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemainTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "getRemainTimes: -1"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method protected handleOperatorOnekeySimLock(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TelcelOnekeyLockUtil"

    const-string v1, "handleOperatorOnekeySimLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "34113411"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    const-class v1, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "34123412"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->resetSimLockRemainTimes(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected resetSimLockRemainTimes(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getRemainTimes()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->saveRemainTimes(I)V

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public saveRemainTimes(I)V
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "NCK_SIMLOCK_REMAIN_TIMES"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveRemainTimes: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelcelOnekeyLockUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

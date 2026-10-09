.class public Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;
.super Ljava/lang/Object;
.source "TigoOnekeyLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler;

.field private mMessenger:Landroid/os/Messenger;

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetFacilityLock(Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->setFacilityLock(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    return-object v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v1, p0

    new-array v2, v1, [I

    move v3, v0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-byte v4, p0, v3

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array p0, v1, [I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    move v3, v0

    :goto_2
    add-int/lit8 v4, v0, 0x8

    if-ge v3, v4, :cond_1

    aget v4, p0, v0

    aget v5, v2, v3

    add-int/2addr v4, v5

    aput v4, p0, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    aget v3, p0, v0

    rem-int/lit8 v3, v3, 0xa

    aput v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;
    .locals 3

    const-class v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    goto :goto_0

    :cond_0
    const-string p0, "TigoOnekeylockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  mInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mInstance:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private queryFacilityLock()V
    .locals 7

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const-string v1, "PN"

    const-string v2, "00000000"

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mMessenger:Landroid/os/Messenger;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/unisoc/telephony/RadioInteractor;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Messenger;II)V

    return-void
.end method

.method private setFacilityLock(Z)V
    .locals 9

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const-string v1, "PN"

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mMessenger:Landroid/os/Messenger;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/unisoc/telephony/RadioInteractor;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Messenger;II)V

    return-void
.end method


# virtual methods
.method protected handleOperatorOnekeySimLock(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler;-><init>(Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler-IA;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mHandler:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mHandler:Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil$MyHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOperatorOnekeySimLock: hasIccCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", simReadyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "865625"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", simAsentCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "37455625"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TigoOnekeylockUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->queryFacilityLock()V

    :cond_2
    return-void
.end method

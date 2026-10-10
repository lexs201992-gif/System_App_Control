.class public final Lcom/android/rkpdapp/metrics/ProvisioningAttempt;
.super Ljava/lang/Object;
.source "ProvisioningAttempt.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;,
        Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.android.rkpdapp"


# instance fields
.field private final mBinderWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

.field private final mCause:I

.field private mCertChainLength:I

.field private final mContext:Landroid/content/Context;

.field private mEnablement:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

.field private mHttpStatusError:I

.field private mIsKeyPoolEmpty:Z

.field private final mLockWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

.field private final mRemotelyProvisionedComponent:Ljava/lang/String;

.field private mRootCertFingerprint:Ljava/lang/String;

.field private final mServerWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

.field private mStatus:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field private final mTotalTimer:Lcom/android/rkpdapp/utils/StopWatch;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/rkpdapp/utils/StopWatch;

    const-string v1, "com.android.rkpdapp"

    invoke-direct {v0, v1}, Lcom/android/rkpdapp/utils/StopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mServerWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    new-instance v0, Lcom/android/rkpdapp/utils/StopWatch;

    invoke-direct {v0, v1}, Lcom/android/rkpdapp/utils/StopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mBinderWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    new-instance v0, Lcom/android/rkpdapp/utils/StopWatch;

    invoke-direct {v0, v1}, Lcom/android/rkpdapp/utils/StopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mLockWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    new-instance v0, Lcom/android/rkpdapp/utils/StopWatch;

    invoke-direct {v0, v1}, Lcom/android/rkpdapp/utils/StopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mTotalTimer:Lcom/android/rkpdapp/utils/StopWatch;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mIsKeyPoolEmpty:Z

    sget-object v1, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    iput-object v1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mStatus:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "<none>"

    iput-object v1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mRootCertFingerprint:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mCause:I

    iput-object p3, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mRemotelyProvisionedComponent:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mEnablement:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    return-void
.end method

.method public static createKeyConsumedAttemptMetrics(Landroid/content/Context;Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt;
    .locals 3

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getEnablementForComponent(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V

    return-object v0
.end method

.method public static createOutOfKeysAttemptMetrics(Landroid/content/Context;Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt;
    .locals 3

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getEnablementForComponent(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V

    return-object v0
.end method

.method public static createScheduledAttemptMetrics(Landroid/content/Context;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt;
    .locals 4

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    const-string v1, ""

    sget-object v2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V

    return-object v0
.end method

.method private static getEnablementForComponent(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "remote_provisioning.tee.rkp_only"

    invoke-static {p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->readRkpOnlyProperty(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/strongbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "remote_provisioning.strongbox.rkp_only"

    invoke-static {p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->readRkpOnlyProperty(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown remotely provisioned component name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.rkpdapp"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    return-object p0
.end method

.method private getIntEnablement()I
    .locals 2

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$1;->$SwitchMap$com$android$rkpdapp$metrics$ProvisioningAttempt$Enablement:[I

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mEnablement:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getIntStatus()I
    .locals 1

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$1;->$SwitchMap$com$android$rkpdapp$metrics$ProvisioningAttempt$Status:[I

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mStatus:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x21

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    :pswitch_3
    const/16 p0, 0x1e

    return p0

    :pswitch_4
    const/16 p0, 0x16

    return p0

    :pswitch_5
    const/16 p0, 0x15

    return p0

    :pswitch_6
    const/16 p0, 0x14

    return p0

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    :pswitch_10
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTransportTypeForActiveNetwork()I
    .locals 6

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "com.android.rkpdapp"

    const-string v1, "Unable to get ConnectivityManager instance"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0xb

    return p0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0x9

    return p0

    :cond_5
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0xa

    return p0

    :cond_6
    return v0

    :cond_7
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_8

    return v5

    :cond_8
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_9

    return v4

    :cond_9
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_b

    return v1

    :cond_b
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_c

    return v1

    :cond_c
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method private getUpTimeBucket()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method private static readRkpOnlyProperty(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->ENABLED_RKP_ONLY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->ENABLED_WITH_FALLBACK:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mTotalTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->stop()V

    invoke-direct/range {p0 .. p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getTransportTypeForActiveNetwork()I

    move-result v7

    const/16 v8, 0x1cf

    iget v9, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mCause:I

    iget-object v10, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mRemotelyProvisionedComponent:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getUpTimeBucket()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getIntEnablement()I

    move-result v12

    iget-boolean v13, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mIsKeyPoolEmpty:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getIntStatus()I

    move-result v14

    iget-object v15, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mRootCertFingerprint:Ljava/lang/String;

    iget v1, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mCertChainLength:I

    move/from16 v16, v1

    invoke-static/range {v8 .. v16}, Lcom/android/rkpdapp/metrics/RkpdStatsLog;->write(IILjava/lang/String;IIZILjava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->getIntStatus()I

    move-result v1

    iget v2, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mHttpStatusError:I

    const/16 v3, 0x1d0

    invoke-static {v3, v7, v1, v2}, Lcom/android/rkpdapp/metrics/RkpdStatsLog;->write(IIII)V

    const/16 v2, 0x1d1

    iget-object v1, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mServerWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result v3

    iget-object v1, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mBinderWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result v4

    iget-object v1, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mLockWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result v5

    iget-object v1, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mTotalTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result v6

    iget-object v8, v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mRemotelyProvisionedComponent:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/android/rkpdapp/metrics/RkpdStatsLog;->write(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public setCertChainLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mCertChainLength:I

    return-void
.end method

.method public setEnablement(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mEnablement:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    return-void
.end method

.method public setHttpStatusError(I)V
    .locals 0

    iput p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mHttpStatusError:I

    return-void
.end method

.method public setIsKeyPoolEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mIsKeyPoolEmpty:Z

    return-void
.end method

.method public setRootCertFingerprint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mRootCertFingerprint:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mStatus:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-void
.end method

.method public startBinderWait()Lcom/android/rkpdapp/utils/StopWatch;
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mBinderWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mBinderWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    return-object p0
.end method

.method public startLockWait()Lcom/android/rkpdapp/utils/StopWatch;
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mLockWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mLockWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    return-object p0
.end method

.method public startServerWait()Lcom/android/rkpdapp/utils/StopWatch;
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mServerWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->mServerWaitTimer:Lcom/android/rkpdapp/utils/StopWatch;

    return-object p0
.end method

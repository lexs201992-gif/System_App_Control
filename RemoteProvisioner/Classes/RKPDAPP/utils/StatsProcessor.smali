.class public Lcom/android/rkpdapp/utils/StatsProcessor;
.super Ljava/lang/Object;
.source "StatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;
    }
.end annotation


# direct methods
.method public static calcMinUnassignedToTriggerProvisioning(I)I
    .locals 4

    const-wide v0, 0x3fd999999999999aL    # 0.4

    int-to-double v2, p0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static processPool(Lcom/android/rkpdapp/database/ProvisionedKeyDao;Ljava/lang/String;ILjava/time/Instant;)Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;
    .locals 3

    new-instance v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;

    invoke-direct {v0}, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getTotalKeysForIrpc(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getTotalUnassignedKeysForIrpc(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p1, p3}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getTotalExpiringKeysForIrpc(Ljava/lang/String;Ljava/time/Instant;)I

    move-result p0

    iput v2, v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->keysUnassigned:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->keysInUse:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->idealTotalSignedKeys:I

    sub-int/2addr v2, p0

    invoke-static {p2}, Lcom/android/rkpdapp/utils/StatsProcessor;->calcMinUnassignedToTriggerProvisioning(I)I

    move-result p0

    const/4 p1, 0x0

    if-gt v2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const-string p2, "RkpdKeyPoolStats"

    if-nez p0, :cond_1

    const-string p0, "Sufficient keys are available, no CSR needed."

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->keysToGenerate:I

    goto :goto_1

    :cond_1
    iget p0, v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->idealTotalSignedKeys:I

    iput p0, v0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->keysToGenerate:I

    :goto_1
    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

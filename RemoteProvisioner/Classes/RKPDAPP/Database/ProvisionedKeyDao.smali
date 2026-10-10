.class public abstract Lcom/android/rkpdapp/database/ProvisionedKeyDao;
.super Ljava/lang/Object;
.source "ProvisionedKeyDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAllKeys()V
.end method

.method public abstract deleteExpiringKeys(Ljava/time/Instant;)V
.end method

.method public abstract getKeyForClientAndIrpc(Ljava/lang/String;II)Lcom/android/rkpdapp/database/ProvisionedKey;
.end method

.method public getOrAssignKey(Ljava/lang/String;Ljava/time/Instant;II)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getKeyForClientAndIrpc(Ljava/lang/String;II)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getUnassignedKeyForIrpc(Ljava/lang/String;Ljava/time/Instant;)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->updateKey(Lcom/android/rkpdapp/database/ProvisionedKey;)V

    return-object p1
.end method

.method public abstract getTotalExpiringKeysForIrpc(Ljava/lang/String;Ljava/time/Instant;)I
.end method

.method public abstract getTotalKeysForIrpc(Ljava/lang/String;)I
.end method

.method public abstract getTotalUnassignedKeysForIrpc(Ljava/lang/String;)I
.end method

.method abstract getUnassignedKeyForIrpc(Ljava/lang/String;Ljava/time/Instant;)Lcom/android/rkpdapp/database/ProvisionedKey;
.end method

.method public abstract insertKeys(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/ProvisionedKey;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateKey(Lcom/android/rkpdapp/database/ProvisionedKey;)V
.end method

.method public abstract upgradeKeyBlob(I[B[B)I
.end method

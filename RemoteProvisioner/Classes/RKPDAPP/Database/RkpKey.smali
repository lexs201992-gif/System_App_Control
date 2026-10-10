.class public final Lcom/android/rkpdapp/database/RkpKey;
.super Ljava/lang/Object;
.source "RkpKey.java"


# instance fields
.field private final mCoseKey:Lco/nstant/in/cbor/model/DataItem;

.field private final mIrpcHal:Ljava/lang/String;

.field private final mKeyBlob:[B

.field private final mMacedPublicKey:[B

.field private final mPublicKey:[B


# direct methods
.method public constructor <init>([B[BLco/nstant/in/cbor/model/DataItem;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/database/RkpKey;->mKeyBlob:[B

    iput-object p2, p0, Lcom/android/rkpdapp/database/RkpKey;->mMacedPublicKey:[B

    iput-object p3, p0, Lcom/android/rkpdapp/database/RkpKey;->mCoseKey:Lco/nstant/in/cbor/model/DataItem;

    iput-object p4, p0, Lcom/android/rkpdapp/database/RkpKey;->mIrpcHal:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/rkpdapp/database/RkpKey;->mPublicKey:[B

    return-void
.end method


# virtual methods
.method public generateProvisionedKey([BLjava/time/Instant;)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 7

    new-instance v6, Lcom/android/rkpdapp/database/ProvisionedKey;

    iget-object v1, p0, Lcom/android/rkpdapp/database/RkpKey;->mKeyBlob:[B

    iget-object v2, p0, Lcom/android/rkpdapp/database/RkpKey;->mIrpcHal:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/rkpdapp/database/RkpKey;->mPublicKey:[B

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/rkpdapp/database/ProvisionedKey;-><init>([BLjava/lang/String;[B[BLjava/time/Instant;)V

    return-object v6
.end method

.method public getCoseKey()Lco/nstant/in/cbor/model/DataItem;
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/database/RkpKey;->mCoseKey:Lco/nstant/in/cbor/model/DataItem;

    return-object p0
.end method

.method public getMacedPublicKey()[B
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/database/RkpKey;->mMacedPublicKey:[B

    return-object p0
.end method

.method public getPublicKey()[B
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/database/RkpKey;->mPublicKey:[B

    return-object p0
.end method

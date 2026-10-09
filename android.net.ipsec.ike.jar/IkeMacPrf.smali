.class public Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;
.source "IkeMacPrf.java"


# static fields
.field private static final blacklist PSEUDORANDOM_FUNCTION_AES128_XCBC_KEY_LEN:I = 0x10


# direct methods
.method private constructor blacklist <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;-><init>(IILjava/lang/String;Z)V

    return-void
.end method

.method public static blacklist create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .locals 7

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;->id:I

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized PRF ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    const/16 v1, 0x10

    const-string v2, "AESCMAC"

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x40

    const-string v2, "HmacSHA512"

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x30

    const-string v2, "HmacSHA384"

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x20

    const-string v2, "HmacSHA256"

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x10

    const/4 v3, 0x0

    const-string v2, "ALGO_NAME_JCE_UNSUPPORTED"

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x14

    const-string v2, "HmacSHA1"

    nop

    :goto_0
    new-instance v4, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;-><init>(IILjava/lang/String;Z)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist modifyAesCmacKeyIfNeeded([B)[B
    .locals 2

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-array v0, v1, [B

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private blacklist modifyAesXCbcKeyIfNeeded([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;-><init>()V

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mac([B[BZ)[B

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public blacklist generateKeyMat([B[BI)[B
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/net/crypto/KeyGenerationUtils;->prfPlus(Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateRekeyedSKeySeed([B[B[B[B)[B
    .locals 2

    array-length v0, p4

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist generateSKeySeed([B[B[B)[B
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getKeyLength()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    const/4 v1, 0x0

    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {p2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist getKeyLength()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getKeyLength()I

    move-result v0

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "Pseudorandom Function"

    return-object v0
.end method

.method public blacklist signBytes([B[B)[B
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->modifyAesXCbcKeyIfNeeded([B)[B

    move-result-object v0

    move-object p1, v0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mac([B[BZ)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to generate MAC: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getAlgorithmId()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->modifyAesCmacKeyIfNeeded([B)[B

    move-result-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->signBytes([B[B)[B

    move-result-object v0

    return-object v0
.end method

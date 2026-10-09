.class public abstract Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;
.source "IkeCipher.java"


# static fields
.field private static final blacklist BLOCK_SIZE_CHACHA_POLY:I = 0x4

.field protected static final blacklist BLOCK_SIZE_NOT_SPECIFIED:I = 0x0

.field private static final blacklist IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IV_LEN_3DES:I = 0x8

.field private static final blacklist IV_LEN_AES_CBC:I = 0x10

.field private static final blacklist IV_LEN_AES_CTR:I = 0x8

.field private static final blacklist IV_LEN_AES_GCM:I = 0x8

.field private static final blacklist IV_LEN_CHACHA20_POLY1305:I = 0x8

.field private static final blacklist KEY_LEN_3DES:I = 0x18

.field private static final blacklist KEY_LEN_CHACHA20_POLY1305:I = 0x20

.field private static final blacklist SALT_LEN_AES_CHACHA20_POLY1305:I = 0x4

.field private static final blacklist SALT_LEN_AES_CTR:I = 0x4

.field private static final blacklist SALT_LEN_AES_GCM:I = 0x4

.field protected static final blacklist SALT_LEN_NOT_INCLUDED:I


# instance fields
.field private final blacklist mBlockSize:I

.field protected final blacklist mCipher:Ljavax/crypto/Cipher;

.field private final blacklist mIsAead:Z

.field private final blacklist mIvLen:I

.field protected final blacklist mSaltLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "cbc(aes)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "rfc3686(ctr(aes))"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, "rfc4106(gcm(aes))"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const-string v2, "rfc7539esp(chacha20,poly1305)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected constructor blacklist <init>(IIILjava/lang/String;ZII)V
    .locals 4

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;-><init>(IILjava/lang/String;)V

    iput p3, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mIvLen:I

    iput-boolean p5, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mIsAead:Z

    iput p6, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mSaltLen:I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mCipher:Ljavax/crypto/Cipher;

    if-nez p7, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p7

    :goto_0
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mBlockSize:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .locals 7

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    const/16 v0, 0x8

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized Encryption Algorithm ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/16 v2, 0x20

    const/16 v3, 0x8

    const-string v4, "ChaCha20/Poly1305/NoPadding"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;-><init>(IIILjava/lang/String;II)V

    return-object v0

    :sswitch_1
    move v2, v0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v3

    div-int/lit8 v2, v3, 0x8

    const-string v4, "AES/GCM/NoPadding"

    const/4 v5, 0x4

    const/16 v3, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCombinedModeCipher;-><init>(IIILjava/lang/String;I)V

    return-object v0

    :sswitch_2
    move v2, v0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v3

    div-int/lit8 v2, v3, 0x8

    const-string v4, "AES/CTR/NoPadding"

    const/4 v5, 0x4

    const/16 v3, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;-><init>(IIILjava/lang/String;I)V

    return-object v0

    :sswitch_3
    move v2, v0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v3

    div-int/2addr v3, v2

    const/16 v2, 0x10

    const-string v4, "AES/CBC/NoPadding"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;-><init>(IIILjava/lang/String;)V

    return-object v0

    :sswitch_4
    move v2, v0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;

    const/16 v3, 0x18

    const-string v4, "DESede/CBC/NoPadding"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeNormalModeCipher;-><init>(IIILjava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getIpSecAlgorithmName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->IKE_ALGO_TO_IPSEC_ALGO:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist buildIpSecAlgorithmWithKey([B)Landroid/net/IpSecAlgorithm;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->validateKeyLenOrThrow([B)V

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getAlgorithmId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->buildIpSecAlgorithmWithKeyImpl([B)Landroid/net/IpSecAlgorithm;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getAlgorithmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in IPsec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist buildIpSecAlgorithmWithKeyImpl([B)Landroid/net/IpSecAlgorithm;
.end method

.method public blacklist generateIv()[B
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getIvLen()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mBlockSize:I

    return v0
.end method

.method public blacklist getIvLen()I
    .locals 1

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mIvLen:I

    return v0
.end method

.method public blacklist getKeyLength()I
    .locals 2

    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->getKeyLength()I

    move-result v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mSaltLen:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "Encryption Algorithm"

    return-object v0
.end method

.method public blacklist isAead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->mIsAead:Z

    return v0
.end method

.method protected blacklist validateKeyLenOrThrow([B)V
    .locals 3

    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getKeyLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected key with length of : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getKeyLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Received key with length of : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

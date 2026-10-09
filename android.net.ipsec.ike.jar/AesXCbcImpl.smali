.class public Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;
.super Ljava/lang/Object;
.source "AesXCbcImpl.java"


# static fields
.field private static final blacklist AES_CBC:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final blacklist AES_CBC_BLOCK_LEN:I = 0x10

.field private static final blacklist AES_CBC_IV_LEN:I = 0x10

.field private static final blacklist AES_XCBC_96_MAC_LEN:I = 0xc

.field private static final blacklist E_INITIAL:[B

.field private static final blacklist KEY1_SEED_HEX_STRING:Ljava/lang/String; = "01010101010101010101010101010101"

.field private static final blacklist KEY2_SEED_HEX_STRING:Ljava/lang/String; = "02020202020202020202020202020202"

.field private static final blacklist KEY3_SEED_HEX_STRING:Ljava/lang/String; = "03030303030303030303030303030303"


# instance fields
.field private final blacklist mCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->E_INITIAL:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private blacklist encryptAesBlock([B[B)[B
    .locals 6

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed to sign data: "

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static blacklist padData([BI)[B
    .locals 6

    array-length v0, p0

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p1

    mul-int/2addr v1, p1

    sub-int/2addr v1, v0

    add-int v2, v0, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-array v3, v1, [B

    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method private static blacklist xorByteArrays([B[B)[B
    .locals 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist mac([B[BZ)[B
    .locals 12

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    array-length v1, p2

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move-object v3, p2

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->padData([BI)[B

    move-result-object v3

    :cond_1
    const-string v4, "01010101010101010101010101010101"

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v4

    const-string v5, "02020202020202020202020202020202"

    invoke-static {v5}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v5

    const-string v6, "03030303030303030303030303030303"

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v6

    sget-object v7, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->E_INITIAL:[B

    array-length v8, v3

    div-int/2addr v8, v0

    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v10, v8, -0x1

    if-ge v9, v10, :cond_2

    mul-int v10, v9, v0

    mul-int v11, v9, v0

    add-int/2addr v11, v0

    invoke-static {v3, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10, v7}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    array-length v9, v3

    sub-int/2addr v9, v0

    array-length v10, v3

    invoke-static {v3, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-static {v9, v7}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v9

    if-eqz v1, :cond_3

    invoke-static {v9, v6}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v9

    goto :goto_2

    :cond_3
    invoke-static {v9, v5}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->xorByteArrays([B[B)[B

    move-result-object v9

    :goto_2
    invoke-direct {p0, v4, v9}, Lcom/android/internal/net/ipsec/ike/crypto/AesXCbcImpl;->encryptAesBlock([B[B)[B

    move-result-object v10

    if-eqz p3, :cond_4

    const/16 v11, 0xc

    invoke-static {v10, v2, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    :cond_4
    return-object v10
.end method

.class public Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeSkPayload.java"


# instance fields
.field protected final blacklist mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .locals 10

    const/4 v0, 0x0

    new-array v4, v0, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .locals 9

    array-length v0, p3

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    return-void
.end method

.method constructor blacklist <init>(ZLcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    return-void
.end method

.method protected constructor blacklist <init>(ZZI[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    move v3, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;-><init>([BILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    return-void
.end method

.method constructor blacklist <init>(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v3, 0x20

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(ZZI[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->encode()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected blacklist getPayloadLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "SK"

    return-object v0
.end method

.method public blacklist getUnencryptedData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getUnencryptedData()[B

    move-result-object v0

    return-object v0
.end method

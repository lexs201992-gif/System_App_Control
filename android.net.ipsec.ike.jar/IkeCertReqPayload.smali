.class public Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeCertReqPayload.java"


# instance fields
.field public final blacklist caSubjectPublicKeyInforHashes:[B

.field public final blacklist certEncodingType:I


# direct methods
.method public constructor blacklist <init>(Z[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    const/16 v0, 0x26

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->certEncodingType:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->caSubjectPublicKeyInforHashes:[B

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->caSubjectPublicKeyInforHashes:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->certEncodingType:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->caSubjectPublicKeyInforHashes:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected blacklist getPayloadLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;->caSubjectPublicKeyInforHashes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "CertReq"

    return-object v0
.end method

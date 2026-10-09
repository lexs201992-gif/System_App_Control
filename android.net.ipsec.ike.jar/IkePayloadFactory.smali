.class final Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;
.super Ljava/lang/Object;
.source "IkePayloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;,
        Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;
    }
.end annotation


# static fields
.field private static final blacklist PAYLOAD_HEADER_CRITICAL_BIT_SET:B = -0x80t

.field static blacklist sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist getIkePayload(IZLjava/nio/ByteBuffer;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->isCriticalPayload(B)Z

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v3, v4, :cond_0

    new-array v4, v3, [B

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v5, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;

    invoke-interface {v5, p0, v1, p1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;->decodeIkePayload(IZZ[B)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    :cond_0
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Invalid Payload Length: Payload length is too long."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v4, "Invalid Payload Length: Payload length is too short."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static blacklist getIkeSkPayload(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;",
            "[B[B)",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x1c

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->isCriticalPayload(B)Z

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    array-length v4, p1

    add-int/lit8 v1, v4, -0x1c

    if-lt v1, v3, :cond_1

    if-gt v1, v3, :cond_0

    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;

    move v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface/range {v4 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;->decodeIkeSkPayload(ZZ[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Invalid length of SK Payload: Payload length is too short or SK Payload is not the only payload."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Invalid length of SK Payload: Payload length is too long."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist isCriticalPayload(B)Z
    .locals 2

    and-int/lit8 v0, p0, -0x80

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

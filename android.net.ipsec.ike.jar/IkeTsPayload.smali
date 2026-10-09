.class public final Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeTsPayload.java"


# static fields
.field private static final blacklist TS_HEADER_LEN:I = 0x4

.field private static final blacklist TS_HEADER_RESERVED_LEN:I = 0x3


# instance fields
.field public final blacklist numTs:I

.field public final blacklist trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;


# direct methods
.method constructor blacklist <init>(Z[BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    if-eqz p3, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    invoke-static {v2, v1}, Landroid/net/ipsec/ike/IkeTrafficSelector;->decodeIkeTrafficSelectors(I[B)[Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-void

    :cond_1
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Cannot find Traffic Selector in TS payload."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Z[Landroid/net/ipsec/ike/IkeTrafficSelector;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    array-length v0, p2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TS Payload requires at least one Traffic Selector."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist contains(Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;)Z
    .locals 10

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Landroid/net/ipsec/ike/IkeTrafficSelector;->contains(Landroid/net/ipsec/ike/IkeTrafficSelector;)Z

    move-result v9

    if-eqz v9, :cond_0

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, Landroid/net/ipsec/ike/IkeTrafficSelector;->encodeToByteBuffer(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .locals 6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget v5, v4, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->payloadType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Payload Type for Traffic Selector Payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "TSr"

    return-object v0

    :pswitch_1
    const-string v0, "TSi"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

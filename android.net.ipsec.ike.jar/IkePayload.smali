.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.super Ljava/lang/Object;
.source "IkePayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkePayload$ProtocolId;,
        Lcom/android/internal/net/ipsec/ike/message/IkePayload$PayloadType;
    }
.end annotation


# static fields
.field public static final blacklist GENERIC_HEADER_LENGTH:I = 0x4

.field public static final blacklist IP_PORT_LEN:I = 0x2

.field private static final blacklist PAYLOAD_HEADER_CRITICAL_BIT_UNSET:B = 0x0t

.field public static final blacklist PAYLOAD_TYPE_AUTH:I = 0x27

.field public static final blacklist PAYLOAD_TYPE_CERT:I = 0x25

.field public static final blacklist PAYLOAD_TYPE_CERT_REQUEST:I = 0x26

.field public static final blacklist PAYLOAD_TYPE_CP:I = 0x2f

.field public static final blacklist PAYLOAD_TYPE_DELETE:I = 0x2a

.field public static final blacklist PAYLOAD_TYPE_EAP:I = 0x30

.field public static final blacklist PAYLOAD_TYPE_ID_INITIATOR:I = 0x23

.field public static final blacklist PAYLOAD_TYPE_ID_RESPONDER:I = 0x24

.field public static final blacklist PAYLOAD_TYPE_KE:I = 0x22

.field public static final blacklist PAYLOAD_TYPE_NONCE:I = 0x28

.field public static final blacklist PAYLOAD_TYPE_NOTIFY:I = 0x29

.field public static final blacklist PAYLOAD_TYPE_NO_NEXT:I = 0x0

.field public static final blacklist PAYLOAD_TYPE_SA:I = 0x21

.field public static final blacklist PAYLOAD_TYPE_SK:I = 0x2e

.field public static final blacklist PAYLOAD_TYPE_SKF:I = 0x35

.field public static final blacklist PAYLOAD_TYPE_TS_INITIATOR:I = 0x2c

.field public static final blacklist PAYLOAD_TYPE_TS_RESPONDER:I = 0x2d

.field public static final blacklist PAYLOAD_TYPE_VENDOR:I = 0x2b

.field public static final blacklist PROTOCOL_ID_AH:I = 0x2

.field public static final blacklist PROTOCOL_ID_ESP:I = 0x3

.field public static final blacklist PROTOCOL_ID_IKE:I = 0x1

.field public static final blacklist PROTOCOL_ID_UNSET:I = 0x0

.field private static final blacklist PROTOCOL_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SPI_LEN_IKE:B = 0x8t

.field public static final blacklist SPI_LEN_IPSEC:B = 0x4t

.field public static final blacklist SPI_LEN_NOT_INCLUDED:B

.field public static final blacklist SPI_NOT_INCLUDED:I


# instance fields
.field public final blacklist isCritical:Z

.field public final blacklist payloadType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->PROTOCOL_TO_STR:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->PROTOCOL_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "Protocol Unset"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->PROTOCOL_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "IKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->PROTOCOL_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "AH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->PROTOCOL_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "ESP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    iput-boolean p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->isCritical:Z

    return-void
.end method

.method protected static blacklist encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V
    .locals 2

    int-to-byte v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static blacklist getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)TT;"
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    :goto_0
    return-object v1
.end method

.method public static blacklist getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    if-ne p0, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist getProtocolTypeString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->PROTOCOL_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
.end method

.method protected abstract blacklist getPayloadLength()I
.end method

.method public abstract blacklist getTypeString()Ljava/lang/String;
.end method

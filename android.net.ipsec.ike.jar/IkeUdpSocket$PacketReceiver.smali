.class final Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;
.super Ljava/lang/Object;
.source "IkeUdpSocket.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PacketReceiver"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handlePacket([BLandroid/util/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->parseAndDemuxIkePacket([BLandroid/util/LongSparseArray;Ljava/lang/String;)V

    return-void
.end method

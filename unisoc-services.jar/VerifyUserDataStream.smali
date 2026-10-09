.class public Lcom/fingerprints/extension/stream/VerifyUserDataStream;
.super Ljava/lang/Object;
.source "VerifyUserDataStream.java"


# instance fields
.field public encapsulatedResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public entityId:J

.field public fingerId:I

.field public mStream:[B

.field public result:I

.field public sizeResultBlob:I

.field public userId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->encapsulatedResult:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public streamTo([B)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->result:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->userId:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->entityId:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->sizeResultBlob:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->fingerId:I

    iget v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->sizeResultBlob:I

    new-array v3, v2, [B

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->encapsulatedResult:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/fingerprints/extension/util/ArrayUtils;->toArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return v1
.end method

.method public toStream()[B
    .locals 7

    iget v0, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->sizeResultBlob:I

    add-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x0

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    iget v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->result:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->userId:J

    invoke-static {v2, v3}, Lcom/fingerprints/extension/util/BytesUtil;->longToBytes(J)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    add-int/2addr v1, v5

    const/16 v6, 0x8

    invoke-static {v2, v4, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->entityId:J

    invoke-static {v2, v3}, Lcom/fingerprints/extension/util/BytesUtil;->longToBytes(J)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    add-int/2addr v1, v6

    invoke-static {v2, v4, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->sizeResultBlob:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    add-int/2addr v1, v6

    invoke-static {v2, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->fingerId:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    add-int/2addr v1, v5

    invoke-static {v2, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->encapsulatedResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    add-int/2addr v1, v5

    iget v5, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->sizeResultBlob:I

    invoke-static {v2, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->mStream:[B

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyUserDataStream{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->entityId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sizeResultBlob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->sizeResultBlob:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fingerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->fingerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encapsulatedResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fingerprints/extension/stream/VerifyUserDataStream;->encapsulatedResult:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

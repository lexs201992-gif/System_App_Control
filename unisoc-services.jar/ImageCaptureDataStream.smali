.class public Lcom/fingerprints/extension/stream/ImageCaptureDataStream;
.super Ljava/lang/Object;
.source "ImageCaptureDataStream.java"


# instance fields
.field public cacResult:I

.field public captureResult:I

.field public coverage:I

.field public enhancedImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public enrollResult:I

.field public identifyResult:I

.field public identifyState:I

.field private mLogger:Lcom/fingerprints/extension/util/Logger;

.field private mStream:[B

.field public mode:I

.field public quality:I

.field public rawImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public remainingSamples:I

.field public templateUpdateResult:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fingerprints/extension/util/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const/16 v0, 0x28

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->rawImage:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->enhancedImage:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getStream()[B
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    return-object v0
.end method

.method public print()V
    .locals 3

    iget-object v0, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " captureResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->captureResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " identifyResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->identifyResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " identifyState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->identifyState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " templateUpdateResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->templateUpdateResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enrollResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->enrollResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cacResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->cacResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remainingSamples:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->remainingSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " coverage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->coverage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public streamTo([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mode:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->captureResult:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->identifyResult:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->identifyState:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->templateUpdateResult:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->enrollResult:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->cacResult:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->userId:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->remainingSamples:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->coverage:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->quality:I

    const/4 v2, 0x0

    return v2
.end method

.method public toStream()[B
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mode:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->captureResult:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->identifyResult:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->identifyState:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->templateUpdateResult:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->enrollResult:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->cacResult:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->userId:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->remainingSamples:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->coverage:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->quality:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    add-int v5, v0, v1

    move v0, v5

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fingerprints/extension/stream/ImageCaptureDataStream;->mStream:[B

    return-object v2
.end method

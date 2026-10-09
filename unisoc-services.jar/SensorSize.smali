.class public Lcom/fingerprints/extension/engineering/SensorSize;
.super Ljava/lang/Object;
.source "SensorSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorSize"


# instance fields
.field public mHeight:I

.field private mLogger:Lcom/fingerprints/extension/util/Logger;

.field public mWidth:I


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

    iput-object v0, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mWidth:I

    iput v0, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mHeight:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fingerprints/extension/util/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mLogger:Lcom/fingerprints/extension/util/Logger;

    iput p2, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mHeight:I

    iput p1, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mWidth:I

    return-void
.end method


# virtual methods
.method public print()V
    .locals 3

    iget-object v0, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fingerprints/extension/engineering/SensorSize;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

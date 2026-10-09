.class public Lcom/fingerprints/extension/navigation/NavigationConfig;
.super Ljava/lang/Object;
.source "NavigationConfig.java"


# instance fields
.field public backGroundAlgo:I

.field public doubleClickTimeInterval:I

.field public holdNoImageMinThreshold:I

.field private mLogger:Lcom/fingerprints/extension/util/Logger;

.field private mStream:[B

.field public swipeImageTransMinThreshold:I

.field public tapImageTransMaxThreshold:I

.field public tapNoImageMaxThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fingerprints/extension/util/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    const-class v0, Lcom/fingerprints/extension/navigation/NavigationConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/fingerprints/extension/navigation/NavigationConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fingerprints/extension/util/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getStream()[B
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    return-object v0
.end method

.method public print()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public streamTo([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->tapNoImageMaxThreshold:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->holdNoImageMinThreshold:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->doubleClickTimeInterval:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->tapImageTransMaxThreshold:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->swipeImageTransMinThreshold:I

    add-int v2, v0, v1

    move v0, v2

    invoke-static {p1, v2}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v2

    iput v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->backGroundAlgo:I

    const/4 v2, 0x0

    return v2
.end method

.method public toStream()[B
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->tapNoImageMaxThreshold:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->holdNoImageMinThreshold:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    add-int v5, v1, v0

    move v1, v5

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->doubleClickTimeInterval:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    add-int v5, v1, v0

    move v1, v5

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->tapImageTransMaxThreshold:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    add-int v5, v1, v0

    move v1, v5

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->swipeImageTransMinThreshold:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    add-int v5, v1, v0

    move v1, v5

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->backGroundAlgo:I

    invoke-static {v2}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    add-int v5, v1, v0

    move v1, v5

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->mStream:[B

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationConfigStream{tapNoImageMaxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->tapNoImageMaxThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", holdNoImageMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->holdNoImageMinThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", doubleClickTimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->doubleClickTimeInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tapImageTransMaxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->tapImageTransMaxThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swipeImageTransMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->swipeImageTransMinThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backGroundAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/navigation/NavigationConfig;->backGroundAlgo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

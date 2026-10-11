.class public final Lcom/android/internal/telephony/uicc/UniIccServiceTable;
.super Ljava/lang/Object;
.source "UniIccServiceTable.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UniUiccConstants;


# static fields
.field static final blacklist LOG_TAG:Ljava/lang/String; = "IccServiceTable"


# instance fields
.field private blacklist mAppType:I

.field private final blacklist mIccServiceTable:[B


# direct methods
.method public constructor blacklist <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mIccServiceTable:[B

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    return-void
.end method

.method private blacklist isAvailable(I)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailable for servic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccServiceTable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v2, 0x2

    const-string v3, " fails, max service is "

    const-string v4, "isAvailable for service "

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v2, :cond_2

    div-int/lit8 v0, p1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mIccServiceTable:[B

    array-length v7, v2

    if-lt v0, v7, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mIccServiceTable:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    rem-int/lit8 v1, p1, 0x8

    aget-byte v2, v2, v0

    shl-int v3, v6, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    return v5

    :cond_2
    if-ne v0, v6, :cond_5

    div-int/lit8 v0, p1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mIccServiceTable:[B

    array-length v7, v2

    if-lt v0, v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mIccServiceTable:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    rem-int/lit8 v1, p1, 0x4

    aget-byte v2, v2, v0

    const/4 v3, 0x3

    shl-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    move v5, v6

    :cond_4
    return v5

    :cond_5
    return v5
.end method


# virtual methods
.method blacklist fdnAvaliable()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fdnAvaliable return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IccServiceTable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method blacklist oplAvaliable()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oplAvaliable return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IccServiceTable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method blacklist oplNrAvaliable()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oplAvaliable return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IccServiceTable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method blacklist pnnAvaliable()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pnnAvaliable return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IccServiceTable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method blacklist psDataOffAvaliable()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist psDataOffInfoAvaliable()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->mAppType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x83

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->isAvailable(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/android/internal/telephony/uicc/UniOplNrRecord;
.super Lcom/android/internal/telephony/uicc/UniOplRecord;
.source "UniOplNrRecord.java"


# instance fields
.field public blacklist PNNrecordnum:I

.field public blacklist mOplNrplmn:[I

.field public blacklist mOplNrtac1:I

.field public blacklist mOplNrtac2:I


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniOplRecord;-><init>([B)V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->OplNrplmn([B)V

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrtac1:I

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrtac2:I

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->PNNrecordnum:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public blacklist OplNrplmn([B)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    aput v2, v0, v1

    aget-byte v2, p1, v1

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    and-int/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v0, v5

    aget-byte v2, p1, v5

    and-int/2addr v2, v3

    const/4 v6, 0x2

    aput v2, v0, v6

    aget-byte v2, p1, v6

    and-int/2addr v2, v3

    const/4 v7, 0x3

    aput v2, v0, v7

    aget-byte v2, p1, v6

    shr-int/2addr v2, v4

    and-int/2addr v2, v3

    aput v2, v0, v4

    aget-byte v2, p1, v5

    shr-int/2addr v2, v4

    and-int/2addr v2, v3

    const/4 v4, 0x5

    aput v2, v0, v4

    if-ne v3, v2, :cond_0

    aput v1, v0, v4

    :cond_0
    return-void
.end method

.method public blacklist getPnnRecordNum()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->PNNrecordnum:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPL Record mOplNrplmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrplmn:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOplNrtac1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrtac1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOplNrtac2 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->mOplNrtac2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,PNNrecordnum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniOplNrRecord;->PNNrecordnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/internal/telephony/uicc/UniSimTlv;
.super Ljava/lang/Object;
.source "UniSimTlv.java"


# instance fields
.field blacklist mCurDataLength:I

.field blacklist mCurDataOffset:I

.field blacklist mCurOffset:I

.field blacklist mHasValidTlvObject:Z

.field blacklist mRecord:[B

.field blacklist mTlvLength:I

.field blacklist mTlvOffset:I


# direct methods
.method public constructor blacklist <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mRecord:[B

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mTlvOffset:I

    iput p3, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mTlvLength:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurOffset:I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mHasValidTlvObject:Z

    return-void
.end method

.method private blacklist parseCurrentTlvObject()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurOffset:I

    aget-byte v3, v1, v2

    if-eqz v3, :cond_4

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v5, 0x80

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataLength:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataOffset:I

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v5, 0x81

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataOffset:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mTlvOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mTlvLength:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method


# virtual methods
.method public blacklist getData()[B
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataLength:I

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public blacklist getTag()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mRecord:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public blacklist isValidObject()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mHasValidTlvObject:Z

    return v0
.end method

.method public blacklist nextObject()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mCurOffset:I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSimTlv;->mHasValidTlvObject:Z

    return v0
.end method

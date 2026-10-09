.class public Lcom/fingerprints/extension/stream/SensorInfoStream;
.super Ljava/lang/Object;
.source "SensorInfoStream.java"


# instance fields
.field public mCompanionChipHardwareId:I

.field public mCompanionDieValidFlag:I

.field public mCompanyDieInfoLotId:Ljava/lang/String;

.field public mDieInfoProductTimestamp:Ljava/lang/String;

.field public mHardwareId:I

.field public mMaxNumOtpBitErrorsInByte:I

.field public mProductType:I

.field public mSensorDieInfoLotId:Ljava/lang/String;

.field public mSensorDieValidFlag:I

.field private mStream:[B

.field public mTotalNumOtpBitErrors:I

.field public mVendorData:[B

.field public mVendorHwValidFlag:I

.field public mWaferId:I

.field public mWaferPositionX:I

.field public mWaferPositionY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x62

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    return-void
.end method


# virtual methods
.method public getStream()[B
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    return-object v0
.end method

.method public streamTo([B)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/16 v4, 0x20

    invoke-static {p1, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mSensorDieValidFlag:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mHardwareId:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferId:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferPositionX:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferPositionY:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanionDieValidFlag:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanionChipHardwareId:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mVendorHwValidFlag:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mTotalNumOtpBitErrors:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mMaxNumOtpBitErrorsInByte:I

    add-int v5, v0, v1

    move v0, v5

    invoke-static {p1, v5}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v5

    iput v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mProductType:I

    new-array v5, v3, [B

    add-int v6, v0, v1

    move v0, v6

    const/4 v7, 0x0

    invoke-static {p1, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mSensorDieInfoLotId:Ljava/lang/String;

    new-array v6, v2, [B

    add-int v8, v0, v3

    move v0, v8

    invoke-static {p1, v8, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mDieInfoProductTimestamp:Ljava/lang/String;

    new-array v8, v3, [B

    add-int v9, v0, v2

    move v0, v9

    invoke-static {p1, v9, v8, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v9, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanyDieInfoLotId:Ljava/lang/String;

    new-array v9, v4, [B

    iput-object v9, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mVendorData:[B

    add-int v10, v0, v3

    move v0, v10

    invoke-static {p1, v10, v9, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v7
.end method

.method public toStream()[B
    .locals 9

    const/16 v0, 0xa

    const/4 v1, 0x6

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x4

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mSensorDieValidFlag:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mHardwareId:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferId:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferPositionX:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferPositionY:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanionDieValidFlag:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanionChipHardwareId:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mVendorHwValidFlag:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mTotalNumOtpBitErrors:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mMaxNumOtpBitErrorsInByte:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mProductType:I

    invoke-static {v5}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mSensorDieInfoLotId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v4

    move v3, v8

    invoke-static {v5, v7, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mDieInfoProductTimestamp:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v1

    move v3, v8

    invoke-static {v5, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanyDieInfoLotId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v0

    move v3, v8

    invoke-static {v5, v7, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mVendorData:[B

    iget-object v6, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    add-int v8, v3, v1

    move v3, v8

    invoke-static {v5, v7, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mStream:[B

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorInfoStream{mSensorDieValidFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mSensorDieValidFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHardwareId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mHardwareId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaferId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaferPositionX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferPositionX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaferPositionY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mWaferPositionY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCompanionDieValidFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanionDieValidFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCompanionChipHardwareId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanionChipHardwareId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVendorHwValidFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mVendorHwValidFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalNumOtpBitErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mTotalNumOtpBitErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxNumOtpBitErrorsInByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mMaxNumOtpBitErrorsInByte:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProductType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mProductType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSensorDieInfoLotId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mSensorDieInfoLotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDieInfoProductTimestamp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mDieInfoProductTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCompanyDieInfoLotId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fingerprints/extension/stream/SensorInfoStream;->mCompanyDieInfoLotId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

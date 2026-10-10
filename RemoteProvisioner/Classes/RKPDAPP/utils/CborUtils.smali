.class public Lcom/android/rkpdapp/utils/CborUtils;
.super Ljava/lang/Object;
.source "CborUtils.java"


# static fields
.field private static final EMPTY_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    sput-object v0, Lcom/android/rkpdapp/utils/CborUtils;->EMPTY_MAP:[B

    return-void
.end method

.method public static buildCertificateRequest([B[B[B[BLco/nstant/in/cbor/model/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    const-string v0, "RkpdCborUtils"

    :try_start_0
    const-string v1, "ProtectedData"

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    invoke-static {p2, v1, v2}, Lcom/android/rkpdapp/utils/CborUtils;->decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    check-cast p2, Lco/nstant/in/cbor/model/Array;

    const-string v1, "MacedKeysToSign"

    invoke-static {p3, v1, v2}, Lcom/android/rkpdapp/utils/CborUtils;->decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p3

    check-cast p3, Lco/nstant/in/cbor/model/Array;

    const-string v1, "DeviceInfo"

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    invoke-static {p0, v1, v2}, Lcom/android/rkpdapp/utils/CborUtils;->decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Map;

    new-instance v1, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "fingerprint"

    invoke-direct {v1, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v2, v1}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v3}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    invoke-virtual {v3}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/CborBuilder;

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UnverifiedDeviceInfo is missing a fingerprint entry"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p1, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string p2, "UnverifiedDeviceInfo missing fingerprint entry."

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Malformed CBOR"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/android/rkpdapp/RkpdException;

    sget-object p3, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    invoke-direct {p2, p3, p1, p0}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static buildProvisioningInfo(Landroid/content/Context;)[B
    .locals 7

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v2}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    invoke-virtual {v2}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v2

    const-string v3, "fingerprint"

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v2

    new-instance v3, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v4, "id"

    invoke-direct {v3, v4}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    new-instance v4, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getId(Landroid/content/Context;)I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v4, v5, v6}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/MapBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/CborBuilder;

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "RkpdCborUtils"

    const-string v1, "CBOR serialization failed."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/rkpdapp/utils/CborUtils;->EMPTY_MAP:[B

    return-object p0
.end method

.method public static buildUnverifiedDeviceInfo()Lco/nstant/in/cbor/model/Map;
    .locals 4

    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    new-instance v1, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "fingerprint"

    invoke-direct {v1, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    return-object v0
.end method

.method private static checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect CBOR type for field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Actual: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RkpdCborUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static concatenateByteArrays([B[B)[B
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {v1, p2, p1}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    return-object p0

    :cond_0
    new-instance p2, Lcom/android/rkpdapp/RkpdException;

    sget-object v0, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in proper Cbor format. Expected size 1. Actual: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw p2
.end method

.method public static encodeCbor(Lco/nstant/in/cbor/model/DataItem;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static extractRkpKeyFromMacedKey([BLjava/lang/String;Landroid/hardware/security/keymint/MacedPublicKey;)Lcom/android/rkpdapp/database/RkpKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    iget-object v0, p2, Landroid/hardware/security/keymint/MacedPublicKey;->macedKey:[B

    const-string v1, "MacedPublicKeys"

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    invoke-static {v0, v1, v2}, Lcom/android/rkpdapp/utils/CborUtils;->decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {v0}, Lcom/android/rkpdapp/utils/CborUtils;->getBytesFromBstr(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v0

    const-string v1, "byte stream"

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    invoke-static {v0, v1, v2}, Lcom/android/rkpdapp/utils/CborUtils;->decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lco/nstant/in/cbor/model/Map;

    new-instance v0, Lco/nstant/in/cbor/model/NegativeInteger;

    const-wide/16 v1, -0x2

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/NegativeInteger;-><init>(J)V

    invoke-virtual {v4, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    new-instance v1, Lco/nstant/in/cbor/model/NegativeInteger;

    const-wide/16 v5, -0x3

    invoke-direct {v1, v5, v6}, Lco/nstant/in/cbor/model/NegativeInteger;-><init>(J)V

    invoke-virtual {v4, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v1}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v1

    array-length v3, v1

    if-ne v3, v2, :cond_0

    invoke-static {v0, v1}, Lcom/android/rkpdapp/utils/CborUtils;->concatenateByteArrays([B[B)[B

    move-result-object v6

    new-instance v0, Lcom/android/rkpdapp/database/RkpKey;

    iget-object v3, p2, Landroid/hardware/security/keymint/MacedPublicKey;->macedKey:[B

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/rkpdapp/database/RkpKey;-><init>([B[BLco/nstant/in/cbor/model/DataItem;Ljava/lang/String;[B)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "COSE_Key y-coordinate is not correct."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "COSE_Key x-coordinate is not correct."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBytesFromBstr(Lco/nstant/in/cbor/model/DataItem;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    if-ne v0, v1, :cond_0

    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error while decoding CBOR. Expected bstr value."

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeProtectedHeaders()Lco/nstant/in/cbor/model/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    new-instance v1, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    new-instance v2, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v3, v4}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    return-object v0
.end method

.method private static parseDeviceConfig(Lcom/android/rkpdapp/GeekResponse;Lco/nstant/in/cbor/model/DataItem;)Z
    .locals 5

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    const-string v1, "DeviceConfig"

    invoke-static {p1, v0, v1}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lco/nstant/in/cbor/model/Map;

    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "num_extra_attestation_keys"

    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "time_to_refresh_hours"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    new-instance v3, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v4, "provisioning_url"

    invoke-direct {v3, v4}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    if-eqz v0, :cond_2

    sget-object v3, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    const-string v4, "ExtraKeys"

    invoke-static {v0, v3, v4}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    check-cast v0, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/rkpdapp/GeekResponse;->numExtraAttestationKeys:I

    :cond_2
    if-eqz v2, :cond_4

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    const-string v3, "TimeToRefresh"

    invoke-static {v2, v0, v3}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    check-cast v2, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/rkpdapp/GeekResponse;->timeToRefresh:Ljava/time/Duration;

    :cond_4
    if-eqz p1, :cond_6

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    const-string v2, "ProvisioningURL"

    invoke-static {p1, v0, v2}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/rkpdapp/GeekResponse;->provisioningUrl:Ljava/lang/String;

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static parseGeekResponse([B)Lcom/android/rkpdapp/GeekResponse;
    .locals 14

    const-string v0, "RkpdCborUtils"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/rkpdapp/GeekResponse;

    invoke-direct {v2}, Lcom/android/rkpdapp/GeekResponse;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/nstant/in/cbor/model/DataItem;

    sget-object v6, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    const-string v7, "CborResponse"

    invoke-static {v5, v6, v7}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v7, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of certificate array entries. Expected: 2 or 3. Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/nstant/in/cbor/model/DataItem;

    const-string v9, "EekAndCurveArr"

    invoke-static {v5, v6, v9}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {v5}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/nstant/in/cbor/model/DataItem;

    sget-object v10, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    const-string v11, "EekAndCurve"

    invoke-static {v9, v10, v11}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {v9}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eq v11, v8, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong size. Expected: 2. Actual: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lco/nstant/in/cbor/model/DataItem;

    sget-object v12, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    const-string v13, "Curve"

    invoke-static {v11, v12, v13}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lco/nstant/in/cbor/model/DataItem;

    const-string v12, "EekCertChain"

    invoke-static {v11, v10, v12}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v11, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v11, v10}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v11, v12}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {v9}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/android/rkpdapp/GeekResponse;->addGeek(I[B)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_1
    return-object v1

    :cond_7
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/nstant/in/cbor/model/DataItem;

    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    const-string v6, "Challenge"

    invoke-static {v3, v5, v6}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    return-object v1

    :cond_8
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v3}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/rkpdapp/GeekResponse;->setChallenge([B)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_9

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {v2, p0}, Lcom/android/rkpdapp/utils/CborUtils;->parseDeviceConfig(Lcom/android/rkpdapp/GeekResponse;Lco/nstant/in/cbor/model/DataItem;)Z

    move-result p0

    if-nez p0, :cond_9

    return-object v1

    :cond_9
    return-object v2

    :cond_a
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improper formatting of CBOR response. Expected size 1. Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "CBOR parsing/serializing failed."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static parseSignedCertificates([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "RkpdCborUtils"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v2}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    const-string v6, "CborResponse"

    invoke-static {v4, v5, v6}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of certificate array entries. Expected: 2. Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    sget-object v6, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    const-string v7, "SharedCertificates"

    invoke-static {v4, v6, v7}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    const-string v6, "UniqueCertificates"

    invoke-static {v4, v5, v6}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Array;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    const-string v6, "UniqueCertificate"

    invoke-static {v4, v5, v6}, Lcom/android/rkpdapp/utils/CborUtils;->checkType(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/MajorType;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    return-object v1

    :cond_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v4, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v4}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v3

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improper formatting of CBOR response. Expected size 1. Actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "Writing bytes failed."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception p0

    const-string v2, "CBOR decoding failed."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v1
.end method

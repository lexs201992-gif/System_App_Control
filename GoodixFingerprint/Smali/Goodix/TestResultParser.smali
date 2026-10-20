.class public Lcom/goodix/fingerprint/utils/TestResultParser;
.super Ljava/lang/Object;
.source "TestResultParser.java"


# direct methods
.method private static decodeDouble([BII)D
    .locals 6

    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    int-to-long v0, p2

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    int-to-long v2, p2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 p2, 0x8

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    add-int/lit8 p2, p1, 0x2

    aget-byte p2, p0, p2

    int-to-long v2, p2

    and-long/2addr v2, v4

    const/16 p2, 0x10

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    add-int/lit8 p2, p1, 0x3

    aget-byte p2, p0, p2

    int-to-long v2, p2

    and-long/2addr v2, v4

    const/16 p2, 0x18

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    add-int/lit8 p2, p1, 0x4

    aget-byte p2, p0, p2

    int-to-long v2, p2

    and-long/2addr v2, v4

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    add-int/lit8 p2, p1, 0x5

    aget-byte p2, p0, p2

    int-to-long v2, p2

    and-long/2addr v2, v4

    const/16 p2, 0x28

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    add-int/lit8 p2, p1, 0x6

    aget-byte p2, p0, p2

    int-to-long v2, p2

    and-long/2addr v2, v4

    const/16 p2, 0x30

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v4

    const/16 p2, 0x38

    shl-long/2addr p0, p2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static decodeFloat([BII)F
    .locals 1

    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method private static decodeInt16([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static decodeInt32([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static decodeInt64([BI)J
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static decodeInt8([BI)B
    .locals 0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static parser([B)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TestResultParser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v3

    add-int/lit8 v1, v1, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "value = "

    packed-switch v3, :pswitch_data_0

    const-string v6, "utf-8"

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    sparse-switch v3, :sswitch_data_0

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    packed-switch v3, :pswitch_data_7

    packed-switch v3, :pswitch_data_8

    goto :goto_0

    :sswitch_0
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v4

    add-int/lit8 v1, v1, 0x4

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    :sswitch_1
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt64([BI)J

    move-result-wide v6

    add-int/lit8 v1, v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    :sswitch_2
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v6

    add-int/lit8 v1, v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    const/4 v6, 0x4

    invoke-static {p0, v1, v6}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeFloat([BII)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v6

    add-int/lit8 v1, v1, 0x4

    invoke-static {p0, v1, v6}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeFloat([BII)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v6

    add-int/lit8 v1, v1, 0x4

    invoke-static {p0, v1, v6}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeDouble([BII)D

    move-result-wide v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt16([BI)S

    move-result v6

    add-int/lit8 v1, v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt8([BI)B

    move-result v6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    :sswitch_3
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v4

    add-int/lit8 v1, v1, 0x4

    if-lez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/2addr v4, v1

    invoke-static {p0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto/16 :goto_0

    :pswitch_7
    :sswitch_4
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v4

    add-int/lit8 v1, v1, 0x4

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    add-int/2addr v1, v4

    goto/16 :goto_0

    :pswitch_8
    :sswitch_5
    invoke-static {p0, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result v6

    add-int/lit8 v1, v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x150 -> :sswitch_5
        0x258 -> :sswitch_5
        0x384 -> :sswitch_5
        0x387 -> :sswitch_5
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_5
        0x3f0 -> :sswitch_5
        0x3f1 -> :sswitch_5
        0x3f2 -> :sswitch_5
        0x3f3 -> :sswitch_5
        0x3f4 -> :sswitch_5
        0x3f5 -> :sswitch_5
        0x3f6 -> :sswitch_4
        0x3f7 -> :sswitch_3
        0x3f8 -> :sswitch_3
        0x3f9 -> :sswitch_3
        0x3fa -> :sswitch_5
        0x3fb -> :sswitch_3
        0x3fc -> :sswitch_3
        0x3fd -> :sswitch_3
        0x3fe -> :sswitch_3
        0x3ff -> :sswitch_5
        0x400 -> :sswitch_3
        0x401 -> :sswitch_3
        0x402 -> :sswitch_3
        0x403 -> :sswitch_5
        0x404 -> :sswitch_5
        0x405 -> :sswitch_5
        0x406 -> :sswitch_5
        0x407 -> :sswitch_5
        0x408 -> :sswitch_5
        0x409 -> :sswitch_5
        0x40a -> :sswitch_5
        0x40b -> :sswitch_5
        0x40c -> :sswitch_5
        0x40d -> :sswitch_5
        0x40e -> :sswitch_5
        0x40f -> :sswitch_3
        0x410 -> :sswitch_5
        0x411 -> :sswitch_5
        0x412 -> :sswitch_5
        0x413 -> :sswitch_3
        0x414 -> :sswitch_5
        0x415 -> :sswitch_4
        0x44c -> :sswitch_5
        0x44d -> :sswitch_5
        0x44e -> :sswitch_5
        0x44f -> :sswitch_3
        0x4b0 -> :sswitch_2
        0x4b1 -> :sswitch_2
        0x4b2 -> :sswitch_2
        0x4b3 -> :sswitch_2
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_2
        0x4b6 -> :sswitch_2
        0x4b7 -> :sswitch_2
        0x4b8 -> :sswitch_2
        0x4b9 -> :sswitch_2
        0x4ba -> :sswitch_0
        0x514 -> :sswitch_5
        0x515 -> :sswitch_5
        0x516 -> :sswitch_5
        0x578 -> :sswitch_5
        0x579 -> :sswitch_5
        0x57a -> :sswitch_5
        0x57b -> :sswitch_5
        0x57c -> :sswitch_5
        0x57d -> :sswitch_5
        0x57e -> :sswitch_5
        0x580 -> :sswitch_1
        0x581 -> :sswitch_1
        0x582 -> :sswitch_5
        0x583 -> :sswitch_5
        0x584 -> :sswitch_5
        0x585 -> :sswitch_5
        0x586 -> :sswitch_5
        0x587 -> :sswitch_3
        0x588 -> :sswitch_3
        0x589 -> :sswitch_5
        0x58a -> :sswitch_5
        0x58b -> :sswitch_3
        0x5dc -> :sswitch_3
        0x5dd -> :sswitch_5
        0x1450 -> :sswitch_5
        0x14b4 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x190
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2cf
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2d9
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x320
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

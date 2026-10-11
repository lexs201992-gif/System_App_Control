.class public Lcom/android/internal/telephony/UniGsmAlphabet;
.super Ljava/lang/Object;
.source "UniGsmAlphabet.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/EncodeException;

    const-string v3, "string is not ascii string"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist stringToGsmAlphaSS(Ljava/lang/String;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    :goto_0
    const/16 v7, 0x7f

    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    move v2, v8

    if-le v2, v7, :cond_3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    :cond_0
    if-le v2, v3, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    move v3, v7

    if-ge v2, v4, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    move v4, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x3

    const/16 v9, 0x80

    if-eqz v6, :cond_a

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    sub-int v10, v3, v4

    if-gt v10, v9, :cond_9

    if-ge v6, v8, :cond_6

    goto :goto_3

    :cond_6
    const v10, 0x8000

    if-lt v4, v10, :cond_7

    const/16 v1, 0x52

    goto :goto_5

    :cond_7
    shr-int/lit8 v10, v3, 0x7

    shr-int/lit8 v11, v4, 0x7

    if-ne v10, v11, :cond_8

    const/16 v1, 0x51

    goto :goto_5

    :cond_8
    const/16 v1, 0x50

    goto :goto_5

    :cond_9
    :goto_3
    const/16 v1, 0x50

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v1, 0x0

    :goto_5
    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_a

    :sswitch_0
    add-int/lit8 v14, v6, 0x4

    new-array v14, v14, [B

    move-object v10, v14

    const/16 v14, -0x7e

    aput-byte v14, v10, v12

    int-to-byte v12, v6

    aput-byte v12, v10, v13

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    and-int/lit16 v11, v4, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v8

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v6, :cond_d

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-lt v8, v9, :cond_b

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v8, v9

    move v2, v8

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    and-int/lit8 v2, v8, 0x7f

    int-to-char v8, v2

    invoke-static {v8}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v8

    move v2, v8

    :goto_7
    add-int/lit8 v8, v5, 0x4

    int-to-byte v11, v2

    aput-byte v11, v10, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :sswitch_1
    add-int/lit8 v8, v6, 0x3

    new-array v8, v8, [B

    move-object v10, v8

    const/16 v8, -0x7f

    aput-byte v8, v10, v12

    int-to-byte v8, v6

    aput-byte v8, v10, v13

    shr-int/lit8 v8, v4, 0x7

    int-to-byte v8, v8

    aput-byte v8, v10, v11

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v6, :cond_d

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    and-int/lit8 v2, v8, 0x7f

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-lt v8, v9, :cond_c

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v8, v5, 0x3

    int-to-byte v11, v2

    aput-byte v11, v10, v8

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    int-to-char v11, v11

    invoke-static {v11}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v10, v8

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :sswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/UniGsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v7

    move-object v10, v7

    const/16 v7, -0x80

    aput-byte v7, v10, v12

    goto :goto_b

    :sswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/UniGsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v7

    move-object v10, v7

    goto :goto_b

    :goto_a
    invoke-static {v7}, Lcom/android/internal/telephony/UniGsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v7

    :cond_d
    :goto_b
    return-object v10

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1}, Lcom/android/internal/telephony/EncodeException;-><init>()V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x50 -> :sswitch_2
        0x51 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/android/internal/telephony/UniIccUtils;
.super Ljava/lang/Object;
.source "UniIccUtils.java"


# static fields
.field private static blacklist KSC_BEGAINFIRST:I = 0x0

.field private static blacklist KSC_BEGAINSECOND:I = 0x0

.field private static blacklist KSC_ENDFIRST:I = 0x0

.field private static blacklist KSC_ENDSECOND:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "UniIccUtils"

.field private static final blacklist RECORD_TYPE_MASK:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xa1

    sput v0, Lcom/android/internal/telephony/UniIccUtils;->KSC_BEGAINSECOND:I

    const/16 v0, 0xfe

    sput v0, Lcom/android/internal/telephony/UniIccUtils;->KSC_ENDSECOND:I

    const/16 v0, 0xc0

    sput v0, Lcom/android/internal/telephony/UniIccUtils;->KSC_BEGAINFIRST:I

    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/telephony/UniIccUtils;->KSC_ENDFIRST:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adnStringFieldToString([BII)Ljava/lang/String;
    .locals 9

    if-eqz p2, :cond_e

    if-nez p0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    const-string v1, "UniIccUtils"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p2, v3, :cond_2

    aget-byte v3, p0, p1

    const/16 v4, -0x80

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, p2, -0x1

    div-int/2addr v3, v2

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    mul-int/lit8 v7, v3, 0x2

    const-string v8, "utf-16be"

    invoke-direct {v5, p0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "implausible UnsupportedEncodingException"

    invoke-static {v1, v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/UniIccUtils;->isSupportKscLanguage()Z

    move-result v3

    if-eqz v3, :cond_5

    if-lt p2, v2, :cond_5

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xb0

    if-eq v2, v3, :cond_3

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    sget v3, Lcom/android/internal/telephony/UniIccUtils;->KSC_BEGAINFIRST:I

    if-lt v2, v3, :cond_5

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    sget v3, Lcom/android/internal/telephony/UniIccUtils;->KSC_ENDFIRST:I

    if-gt v2, v3, :cond_5

    :cond_3
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sget v3, Lcom/android/internal/telephony/UniIccUtils;->KSC_BEGAINSECOND:I

    if-lt v2, v3, :cond_5

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sget v3, Lcom/android/internal/telephony/UniIccUtils;->KSC_ENDSECOND:I

    if-gt v2, v3, :cond_5

    move v2, p2

    const/4 v3, 0x0

    :goto_2
    if-lez v2, :cond_4

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, p0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "KSC5601"

    invoke-direct {v4, p0, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    return-object v0

    :catch_1
    move-exception v0

    const-string v4, "implausible UnsupportedEncodingException KSC5601"

    invoke-static {v1, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt p2, v3, :cond_7

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    add-int/lit8 v3, p2, -0x3

    if-le v2, v3, :cond_6

    add-int/lit8 v2, p2, -0x3

    :cond_6
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    int-to-char v1, v3

    add-int/lit8 p1, p1, 0x3

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    if-lt p2, v3, :cond_9

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    add-int/lit8 v3, p2, -0x4

    if-le v2, v3, :cond_8

    add-int/lit8 v2, p2, -0x4

    :cond_8
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v1, v3

    add-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    :cond_9
    :goto_3
    if-eqz v0, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-lez v2, :cond_c

    aget-byte v4, p0, p1

    if-gez v4, :cond_a

    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_b

    add-int v5, p1, v4

    aget-byte v5, p0, v5

    if-ltz v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v4

    sub-int/2addr v2, v4

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, ""

    nop

    const v5, 0x1040431

    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    goto :goto_6

    :catch_2
    move-exception v5

    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_e
    :goto_7
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getPrintableId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static blacklist isSupportKscLanguage()Z
    .locals 3

    const-string v0, "ro.vendor.feature.adn.5c601.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

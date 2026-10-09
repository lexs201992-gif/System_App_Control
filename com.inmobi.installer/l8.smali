.class public Lcom/inmobi/installer/core/l8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/installer/core/l8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/inmobi/installer/core/l8;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/inmobi/installer/core/l8;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field public transient b:I

.field public transient c:Ljava/lang/String;

.field public final d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/inmobi/installer/core/l8$a;

    invoke-direct {v0}, Lcom/inmobi/installer/core/l8$a;-><init>()V

    new-instance v0, Lcom/inmobi/installer/core/l8;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/inmobi/installer/core/l8;-><init>([B)V

    sput-object v0, Lcom/inmobi/installer/core/l8;->e:Lcom/inmobi/installer/core/l8;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/installer/core/l8;->d:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 12

    sget-object v0, Lcom/inmobi/installer/core/b;->a:[B

    iget-object v1, p0, Lcom/inmobi/installer/core/l8;->d:[B

    const-string v2, "$this$encodeBase64"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    array-length v4, v1

    array-length v5, v1

    rem-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v1, v5

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v1, v8

    add-int/lit8 v10, v6, 0x1

    and-int/lit16 v11, v5, 0xff

    shr-int/2addr v11, v3

    aget-byte v11, v0, v11

    aput-byte v11, v2, v6

    add-int/lit8 v6, v10, 0x1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v11, v7, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v5, v11

    aget-byte v5, v0, v5

    aput-byte v5, v2, v10

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v3

    and-int/lit16 v10, v8, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v7, v10

    aget-byte v7, v0, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v7, v8, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v2, v5

    move v5, v9

    goto :goto_0

    :cond_0
    array-length v7, v1

    sub-int/2addr v7, v4

    const/4 v4, 0x1

    const/16 v8, 0x3d

    if-eq v7, v4, :cond_2

    if-eq v7, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v1, v5

    aget-byte v1, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit16 v7, v5, 0xff

    shr-int/2addr v7, v3

    aget-byte v7, v0, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v7, v1, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v5, v7

    aget-byte v5, v0, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/2addr v1, v3

    aget-byte v0, v0, v1

    aput-byte v0, v2, v6

    int-to-byte v0, v8

    aput-byte v0, v2, v4

    goto :goto_1

    :cond_2
    aget-byte v1, v1, v5

    add-int/lit8 v4, v6, 0x1

    and-int/lit16 v5, v1, 0xff

    shr-int/lit8 v3, v5, 0x2

    aget-byte v3, v0, v3

    aput-byte v3, v2, v6

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    aput-byte v0, v2, v4

    add-int/lit8 v0, v3, 0x1

    int-to-byte v1, v8

    aput-byte v1, v2, v3

    aput-byte v1, v2, v0

    :goto_1
    const-string v0, "$this$toUtf8String"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/inmobi/installer/core/l8;
    .locals 2

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/inmobi/installer/core/l8;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v1, p0, Lcom/inmobi/installer/core/l8;->d:[B

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v1, "MessageDigest.getInstance(algorithm).digest(data)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/inmobi/installer/core/l8;-><init>([B)V

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    array-length v0, v0

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/inmobi/installer/core/l8;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/installer/core/l8;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/inmobi/installer/core/l8;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/inmobi/installer/core/l8;->f(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v4}, Lcom/inmobi/installer/core/l8;->f(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    return v3
.end method

.method public d()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/inmobi/installer/core/am0;->c:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/inmobi/installer/core/l8;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/inmobi/installer/core/l8;

    invoke-virtual {p1}, Lcom/inmobi/installer/core/l8;->c()I

    move-result v1

    iget-object v3, p0, Lcom/inmobi/installer/core/l8;->d:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1

    array-length v1, v3

    invoke-virtual {p1, v2, v3, v2, v1}, Lcom/inmobi/installer/core/l8;->g(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(I)B
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public g(I[BII)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    invoke-static {v0, p2, p1, p3, p4}, Lcom/inmobi/installer/core/wt;->a([B[BIII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Lcom/inmobi/installer/core/l8;I)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, p2}, Lcom/inmobi/installer/core/l8;->g(I[BII)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/inmobi/installer/core/l8;->b:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/inmobi/installer/core/l8;->b:I

    :goto_0
    return v0
.end method

.method public i()Lcom/inmobi/installer/core/l8;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/inmobi/installer/core/l8;->d:[B

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-byte v2, v1, v0

    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_0

    goto :goto_3

    :cond_0
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v5, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_3

    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/inmobi/installer/core/l8;

    invoke-direct {v0, v1}, Lcom/inmobi/installer/core/l8;-><init>([B)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_4
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/installer/core/l8;->e()[B

    move-result-object v0

    const-string v1, "$this$toUtf8String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/inmobi/installer/core/l8;->c:Ljava/lang/String;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public k(Lcom/inmobi/installer/core/v7;I)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$commonWrite"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/installer/core/l8;->d:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/inmobi/installer/core/v7;->write([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inmobi/installer/core/l8;->d:[B

    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "[size=0]"

    goto/16 :goto_1c

    :cond_1
    array-length v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_2
    :goto_1
    const/16 v9, 0x40

    if-ge v5, v2, :cond_47

    aget-byte v10, v1, v5

    const/16 v11, 0xd

    const/16 v12, 0x9f

    const/16 v13, 0x7f

    const/16 v14, 0x1f

    const v15, 0xfffd

    const/high16 v4, 0x10000

    const/16 v16, 0x2

    const/16 v3, 0xa

    if-ltz v10, :cond_13

    add-int/lit8 v17, v6, 0x1

    if-ne v6, v9, :cond_3

    goto/16 :goto_19

    :cond_3
    if-eq v10, v3, :cond_8

    if-eq v10, v11, :cond_8

    if-ltz v10, :cond_4

    if-ge v14, v10, :cond_6

    :cond_4
    if-le v13, v10, :cond_5

    goto :goto_2

    :cond_5
    if-lt v12, v10, :cond_7

    :cond_6
    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_46

    :cond_8
    if-ne v10, v15, :cond_9

    goto/16 :goto_18

    :cond_9
    if-ge v10, v4, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x2

    :goto_4
    add-int/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    :goto_5
    move/from16 v6, v17

    if-ge v5, v2, :cond_2

    aget-byte v10, v1, v5

    if-ltz v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v17, v6, 0x1

    if-ne v6, v9, :cond_b

    goto/16 :goto_19

    :cond_b
    if-eq v10, v3, :cond_10

    if-eq v10, v11, :cond_10

    if-ltz v10, :cond_c

    if-ge v14, v10, :cond_e

    :cond_c
    if-le v13, v10, :cond_d

    goto :goto_6

    :cond_d
    if-lt v12, v10, :cond_f

    :cond_e
    const/4 v6, 0x1

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_46

    :cond_10
    if-ne v10, v15, :cond_11

    goto/16 :goto_18

    :cond_11
    if-ge v10, v4, :cond_12

    const/4 v6, 0x1

    goto :goto_8

    :cond_12
    const/4 v6, 0x2

    :goto_8
    add-int/2addr v7, v6

    goto :goto_5

    :cond_13
    shr-int/lit8 v8, v10, 0x5

    const/4 v4, -0x2

    const/16 v15, 0x80

    if-ne v8, v4, :cond_20

    add-int/lit8 v4, v5, 0x1

    if-gt v2, v4, :cond_14

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_14
    aget-byte v4, v1, v4

    and-int/lit16 v8, v4, 0xc0

    if-ne v8, v15, :cond_15

    const/4 v8, 0x1

    goto :goto_9

    :cond_15
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_16

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_16
    xor-int/lit16 v4, v4, 0xf80

    shl-int/lit8 v8, v10, 0x6

    xor-int/2addr v4, v8

    if-ge v4, v15, :cond_17

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_17
    add-int/lit8 v8, v6, 0x1

    if-ne v6, v9, :cond_18

    goto/16 :goto_19

    :cond_18
    if-eq v4, v3, :cond_1d

    if-eq v4, v11, :cond_1d

    if-ltz v4, :cond_19

    if-ge v14, v4, :cond_1b

    :cond_19
    if-le v13, v4, :cond_1a

    goto :goto_a

    :cond_1a
    if-lt v12, v4, :cond_1c

    :cond_1b
    const/4 v3, 0x1

    goto :goto_b

    :cond_1c
    :goto_a
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_46

    :cond_1d
    const v3, 0xfffd

    if-ne v4, v3, :cond_1e

    goto/16 :goto_18

    :cond_1e
    const/high16 v3, 0x10000

    if-ge v4, v3, :cond_1f

    const/16 v16, 0x1

    :cond_1f
    add-int v7, v7, v16

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_17

    :cond_20
    shr-int/lit8 v8, v10, 0x4

    const v12, 0xd800

    const v13, 0xdfff

    if-ne v8, v4, :cond_31

    add-int/lit8 v4, v5, 0x2

    if-gt v2, v4, :cond_21

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_21
    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v14, v8, 0xc0

    if-ne v14, v15, :cond_22

    const/4 v14, 0x1

    goto :goto_c

    :cond_22
    const/4 v14, 0x0

    :goto_c
    if-nez v14, :cond_23

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_23
    aget-byte v4, v1, v4

    and-int/lit16 v14, v4, 0xc0

    if-ne v14, v15, :cond_24

    const/4 v14, 0x1

    goto :goto_d

    :cond_24
    const/4 v14, 0x0

    :goto_d
    if-nez v14, :cond_25

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_25
    const v14, -0x1e080

    xor-int/2addr v4, v14

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v4, v8

    shl-int/lit8 v8, v10, 0xc

    xor-int/2addr v4, v8

    const/16 v8, 0x800

    if-ge v4, v8, :cond_26

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_26
    if-le v12, v4, :cond_27

    goto :goto_e

    :cond_27
    if-lt v13, v4, :cond_28

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_28
    :goto_e
    add-int/lit8 v8, v6, 0x1

    if-ne v6, v9, :cond_29

    goto/16 :goto_19

    :cond_29
    if-eq v4, v3, :cond_2e

    if-eq v4, v11, :cond_2e

    if-ltz v4, :cond_2a

    const/16 v3, 0x1f

    if-ge v3, v4, :cond_2c

    :cond_2a
    const/16 v3, 0x7f

    if-le v3, v4, :cond_2b

    goto :goto_f

    :cond_2b
    const/16 v3, 0x9f

    if-lt v3, v4, :cond_2d

    :cond_2c
    const/4 v3, 0x1

    goto :goto_10

    :cond_2d
    :goto_f
    const/4 v3, 0x0

    :goto_10
    if-nez v3, :cond_46

    :cond_2e
    const v3, 0xfffd

    if-ne v4, v3, :cond_2f

    goto/16 :goto_18

    :cond_2f
    const/high16 v3, 0x10000

    if-ge v4, v3, :cond_30

    const/16 v16, 0x1

    :cond_30
    add-int v7, v7, v16

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_17

    :cond_31
    shr-int/lit8 v8, v10, 0x3

    if-ne v8, v4, :cond_45

    add-int/lit8 v4, v5, 0x3

    if-gt v2, v4, :cond_32

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_32
    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v14, v8, 0xc0

    if-ne v14, v15, :cond_33

    const/4 v14, 0x1

    goto :goto_11

    :cond_33
    const/4 v14, 0x0

    :goto_11
    if-nez v14, :cond_34

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_34
    add-int/lit8 v14, v5, 0x2

    aget-byte v14, v1, v14

    and-int/lit16 v11, v14, 0xc0

    if-ne v11, v15, :cond_35

    const/4 v11, 0x1

    goto :goto_12

    :cond_35
    const/4 v11, 0x0

    :goto_12
    if-nez v11, :cond_36

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_36
    aget-byte v4, v1, v4

    and-int/lit16 v11, v4, 0xc0

    if-ne v11, v15, :cond_37

    const/4 v11, 0x1

    goto :goto_13

    :cond_37
    const/4 v11, 0x0

    :goto_13
    if-nez v11, :cond_38

    if-ne v6, v9, :cond_46

    goto/16 :goto_19

    :cond_38
    const v11, 0x381f80

    xor-int/2addr v4, v11

    shl-int/lit8 v11, v14, 0x6

    xor-int/2addr v4, v11

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v4, v8

    shl-int/lit8 v8, v10, 0x12

    xor-int/2addr v4, v8

    const v8, 0x10ffff

    if-le v4, v8, :cond_39

    if-ne v6, v9, :cond_46

    goto :goto_19

    :cond_39
    if-le v12, v4, :cond_3a

    goto :goto_14

    :cond_3a
    if-lt v13, v4, :cond_3b

    if-ne v6, v9, :cond_46

    goto :goto_19

    :cond_3b
    :goto_14
    const/high16 v8, 0x10000

    if-ge v4, v8, :cond_3c

    if-ne v6, v9, :cond_46

    goto :goto_19

    :cond_3c
    add-int/lit8 v8, v6, 0x1

    if-ne v6, v9, :cond_3d

    goto :goto_19

    :cond_3d
    if-eq v4, v3, :cond_42

    const/16 v3, 0xd

    if-eq v4, v3, :cond_42

    if-ltz v4, :cond_3e

    const/16 v3, 0x1f

    if-ge v3, v4, :cond_40

    :cond_3e
    const/16 v3, 0x7f

    if-le v3, v4, :cond_3f

    goto :goto_15

    :cond_3f
    const/16 v3, 0x9f

    if-lt v3, v4, :cond_41

    :cond_40
    const/4 v3, 0x1

    goto :goto_16

    :cond_41
    :goto_15
    const/4 v3, 0x0

    :goto_16
    if-nez v3, :cond_46

    :cond_42
    const v3, 0xfffd

    if-ne v4, v3, :cond_43

    goto :goto_18

    :cond_43
    const/high16 v3, 0x10000

    if-ge v4, v3, :cond_44

    const/16 v16, 0x1

    :cond_44
    add-int v7, v7, v16

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x4

    :goto_17
    move v6, v8

    goto/16 :goto_1

    :cond_45
    if-ne v6, v9, :cond_46

    goto :goto_19

    :cond_46
    :goto_18
    const/4 v7, -0x1

    :cond_47
    :goto_19
    const-string v2, "\u2026]"

    const/16 v3, 0x5d

    const-string v4, "[size="

    const/4 v5, -0x1

    if-ne v7, v5, :cond_4c

    array-length v5, v1

    if-gt v5, v9, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[hex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/installer/core/l8;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1c

    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    if-gt v9, v4, :cond_49

    const/4 v4, 0x1

    goto :goto_1a

    :cond_49
    const/4 v4, 0x0

    :goto_1a
    if-eqz v4, :cond_4b

    array-length v4, v1

    if-ne v9, v4, :cond_4a

    move-object v4, v0

    goto :goto_1b

    :cond_4a
    new-instance v4, Lcom/inmobi/installer/core/l8;

    const/4 v5, 0x0

    invoke-static {v1, v5, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/inmobi/installer/core/l8;-><init>([B)V

    :goto_1b
    invoke-virtual {v4}, Lcom/inmobi/installer/core/l8;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endIndex > length("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/installer/core/l8;->j()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\\"

    const-string v9, "\\\\"

    invoke-static {v6, v8, v9}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-static {v6, v8, v9}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\r"

    const-string v9, "\\r"

    invoke-static {v6, v8, v9}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v7, v5, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c
    return-object v1
.end method

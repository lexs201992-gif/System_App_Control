.class public Lco/nstant/in/cbor/model/Tag;
.super Lco/nstant/in/cbor/model/DataItem;
.source "Tag.java"


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    iput-wide p1, p0, Lco/nstant/in/cbor/model/Tag;->value:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lco/nstant/in/cbor/model/Tag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/Tag;

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lco/nstant/in/cbor/model/Tag;->value:J

    iget-wide v2, v0, Lco/nstant/in/cbor/model/Tag;->value:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lco/nstant/in/cbor/model/Tag;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lco/nstant/in/cbor/model/Tag;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lco/nstant/in/cbor/model/Tag;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class Lco/nstant/in/cbor/model/ChunkableDataItem;
.super Lco/nstant/in/cbor/model/DataItem;
.source "ChunkableDataItem.java"


# instance fields
.field private chunked:Z


# direct methods
.method protected constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/ChunkableDataItem;

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    iget-boolean p1, v0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isChunked()Z
    .locals 0

    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return p0
.end method

.method public setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;
    .locals 0

    iput-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return-object p0
.end method

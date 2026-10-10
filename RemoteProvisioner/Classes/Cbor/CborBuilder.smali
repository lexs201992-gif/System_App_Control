.class public Lco/nstant/in/cbor/CborBuilder;
.super Lco/nstant/in/cbor/builder/AbstractBuilder;
.source "CborBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "Lco/nstant/in/cbor/CborBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/builder/AbstractBuilder;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lco/nstant/in/cbor/CborBuilder;->dataItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/CborBuilder;
    .locals 1

    iget-object v0, p0, Lco/nstant/in/cbor/CborBuilder;->dataItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/CborBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/CborBuilder;

    new-instance v1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {v1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object v1
.end method

.method public addMap()Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/CborBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/CborBuilder;

    new-instance v1, Lco/nstant/in/cbor/builder/MapBuilder;

    invoke-direct {v1, p0, v0}, Lco/nstant/in/cbor/builder/MapBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Map;)V

    return-object v1
.end method

.method public build()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/nstant/in/cbor/CborBuilder;->dataItems:Ljava/util/List;

    return-object p0
.end method

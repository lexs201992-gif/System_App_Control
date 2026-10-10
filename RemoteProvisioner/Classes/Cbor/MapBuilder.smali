.class public Lco/nstant/in/cbor/builder/MapBuilder;
.super Lco/nstant/in/cbor/builder/AbstractBuilder;
.source "MapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "*>;>",
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final map:Lco/nstant/in/cbor/model/Map;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lco/nstant/in/cbor/model/Map;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lco/nstant/in/cbor/builder/MapBuilder;->map:Lco/nstant/in/cbor/model/Map;

    return-void
.end method


# virtual methods
.method public end()Lco/nstant/in/cbor/builder/AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/AbstractBuilder;->getParent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/builder/AbstractBuilder;

    return-object p0
.end method

.method public put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lco/nstant/in/cbor/builder/MapBuilder;->map:Lco/nstant/in/cbor/model/Map;

    invoke-virtual {v0, p1, p2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/builder/AbstractBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.class public Lco/nstant/in/cbor/builder/ArrayBuilder;
.super Lco/nstant/in/cbor/builder/AbstractBuilder;
.source "ArrayBuilder.java"


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
.field private final array:Lco/nstant/in/cbor/model/Array;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lco/nstant/in/cbor/model/Array;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lco/nstant/in/cbor/builder/ArrayBuilder;->array:Lco/nstant/in/cbor/model/Array;

    return-void
.end method


# virtual methods
.method public add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lco/nstant/in/cbor/builder/ArrayBuilder;->array:Lco/nstant/in/cbor/model/Array;

    invoke-virtual {v0, p1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    return-object p0
.end method

.method public add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;->convert([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    return-object p0
.end method

.method public addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    new-instance v1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {v1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object v1
.end method

.method public end()Lco/nstant/in/cbor/builder/AbstractBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lco/nstant/in/cbor/builder/ArrayBuilder;->array:Lco/nstant/in/cbor/model/Array;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Array;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    :cond_0
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/AbstractBuilder;->getParent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/builder/AbstractBuilder;

    return-object p0
.end method

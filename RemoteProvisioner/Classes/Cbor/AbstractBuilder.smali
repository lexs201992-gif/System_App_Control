.class public abstract Lco/nstant/in/cbor/builder/AbstractBuilder;
.super Ljava/lang/Object;
.source "AbstractBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final parent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/nstant/in/cbor/builder/AbstractBuilder;->parent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;
    .locals 0

    new-instance p0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method protected convert([B)Lco/nstant/in/cbor/model/DataItem;
    .locals 0

    new-instance p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    return-object p0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lco/nstant/in/cbor/builder/AbstractBuilder;->parent:Ljava/lang/Object;

    return-object p0
.end method

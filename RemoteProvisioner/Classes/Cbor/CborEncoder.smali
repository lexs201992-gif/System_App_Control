.class public Lco/nstant/in/cbor/CborEncoder;
.super Ljava/lang/Object;
.source "CborEncoder.java"


# instance fields
.field private final arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

.field private final byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

.field private final mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

.field private final negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

.field private final specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

.field private final tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

.field private final unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

.field private final unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/ArrayEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/ArrayEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/MapEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/MapEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/TagEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/TagEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/SpecialEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/SpecialEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/DataItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    :cond_0
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/DataItem;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/DataItem;->getTag()Lco/nstant/in/cbor/model/Tag;

    move-result-object v0

    iget-object v1, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/encoder/TagEncoder;->encode(Lco/nstant/in/cbor/model/Tag;)V

    :cond_1
    sget-object v0, Lco/nstant/in/cbor/CborEncoder$1;->$SwitchMap$co$nstant$in$cbor$model$MajorType:[I

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Unknown major type"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/TagEncoder;->encode(Lco/nstant/in/cbor/model/Tag;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/Special;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/SpecialEncoder;->encode(Lco/nstant/in/cbor/model/Special;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/MapEncoder;->encode(Lco/nstant/in/cbor/model/Map;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ArrayEncoder;->encode(Lco/nstant/in/cbor/model/Array;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/NegativeInteger;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->encode(Lco/nstant/in/cbor/model/NegativeInteger;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;->encode(Lco/nstant/in/cbor/model/UnsignedInteger;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

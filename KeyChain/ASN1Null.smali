.class public abstract Lorg/bouncycastle/asn1/ASN1Null;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Null.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 0

    instance-of p0, p1, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NULL"

    return-object p0
.end method

.class public Lcom/android/rkpdapp/utils/X509Utils;
.super Ljava/lang/Object;
.source "X509Utils.java"


# direct methods
.method public static formatX509Certs([B)[Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/rkpdapp/utils/X509Utils;->isCertChainValid([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/rkpdapp/RkpdException;

    sget-object v2, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string v3, "Could not validate certificate chain."

    invoke-direct {v1, v2, v3}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse certificate chain."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RkpdX509Utils"

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object v0, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string v2, "Failed to interpret DER encoded certificate chain"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static getAndFormatRawPublicKey(Ljava/security/cert/X509Certificate;)[B
    .locals 9

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_0

    const-string p0, "RkpdX509Utils"

    const-string v0, "Certificate public key is not an instance of ECPublicKey"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v1, 0x40

    new-array v2, v1, [B

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x1

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/16 v7, 0x20

    if-ne v3, v5, :cond_1

    invoke-static {v0, v4, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    array-length v3, v0

    rsub-int/lit8 v3, v3, 0x20

    array-length v8, v0

    invoke-static {v0, v6, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    if-ne v0, v5, :cond_2

    invoke-static {p0, v4, v2, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    array-length v0, p0

    sub-int/2addr v1, v0

    array-length v0, p0

    invoke-static {p0, v6, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object v2
.end method

.method public static isCertChainValid([Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/android/rkpdapp/utils/X509Utils;->isSelfSignedCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p0}, Lcom/android/rkpdapp/utils/X509Utils;->verifyCertChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSelfSignedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "RkpdX509Utils"

    const-string v1, "Error verifying self signed certificate"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static verifyCertChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/security/cert/TrustAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    const-string v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2

    new-instance v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v3, p0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    invoke-virtual {v3, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RkpdX509Utils"

    const-string v1, "certificate chain validation failed."

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

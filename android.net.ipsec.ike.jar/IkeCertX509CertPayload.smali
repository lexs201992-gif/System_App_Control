.class public final Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;
.source "IkeCertX509CertPayload.java"


# instance fields
.field public final blacklist certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method protected constructor blacklist <init>(Z[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;-><init>(ZI)V

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p2

    if-lt v1, v2, :cond_0

    nop

    return-void

    :cond_0
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "Unexpected trailing bytes."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "No certificate parsed from received data."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certEncodingType:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .locals 2

    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    return v1

    :catch_0
    move-exception v1

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "Cert(X509)"

    return-object v0
.end method

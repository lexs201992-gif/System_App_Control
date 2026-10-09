.class Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;
.super Ljava/lang/Object;
.source "IkePayloadFactory.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkePayloadDecoder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decodeIkePayload(IZZ[B)Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;-><init>(IZ)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;-><init>(Z[B)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;-><init>(Z[B)V

    return-object v0

    :pswitch_3
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    invoke-direct {v1, p2, p4, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;-><init>(Z[BZ)V

    return-object v1

    :pswitch_4
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    invoke-direct {v0, p2, p4, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;-><init>(Z[BZ)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;-><init>(Z[B)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;-><init>(Z[B)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(Z[B)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;-><init>(Z[B)V

    return-object v0

    :pswitch_9
    invoke-static {p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->getIkeAuthPayload(Z[B)Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;-><init>(Z[B)V

    return-object v0

    :pswitch_b
    invoke-static {p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;->getIkeCertPayload(Z[B)Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-direct {v1, p2, p4, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;-><init>(Z[BZ)V

    return-object v1

    :pswitch_d
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-direct {v0, p2, p4, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;-><init>(Z[BZ)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;-><init>(Z[B)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZZ[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist decodeIkeSkPayload(ZZ[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;-><init>(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    return-object v0

    :cond_0
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    move-object p2, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    return-object p2
.end method

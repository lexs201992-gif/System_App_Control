.class public Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;
.super Ljava/lang/Object;
.source "Ike3gppDeviceIdentityUtils.java"


# static fields
.field private static final blacklist DEVICE_IDENTITY_PAYLOAD_LENGTH:I = 0xb

.field private static final blacklist DEVICE_IDENTITY_PAYLOAD_LENGTH_FIELD_VAL:S = 0x9s

.field private static final blacklist DEVICE_IDENTITY_TYPE_IMEI:B = 0x1t

.field private static final blacklist DEVICE_IDENTITY_TYPE_IMEISV:B = 0x2t

.field private static final blacklist ENCODED_DEVICE_IDENTITY_LENGTH:I = 0x8

.field private static final blacklist IMEISV_LENGTH:I = 0x10

.field private static final blacklist IMEI_LENGTH:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateDeviceIdentityPayload(Ljava/lang/String;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;->isValidDeviceIdentity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    nop

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-ne v1, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v2, 0x8

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x10

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    int-to-byte v7, v7

    if-ne v1, v3, :cond_2

    const/4 v8, 0x7

    if-ne v5, v8, :cond_2

    or-int/lit16 v8, v7, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    goto :goto_2

    :cond_2
    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v8, v7

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    :goto_2
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const v5, 0xa08d

    invoke-direct {v3, v5, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device identity should be a 15 or 16 digit numeric string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isValidDeviceIdentity(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v1, "[0-9]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

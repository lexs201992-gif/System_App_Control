.class public Lcom/android/rkpdapp/database/ProvisionedKey;
.super Ljava/lang/Object;
.source "ProvisionedKey.java"


# instance fields
.field public certificateChain:[B

.field public clientUid:Ljava/lang/Integer;

.field public expirationTime:Ljava/time/Instant;

.field public irpcHal:Ljava/lang/String;

.field public keyBlob:[B

.field public keyId:Ljava/lang/Integer;

.field public publicKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;[B[BLjava/time/Instant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    iput-object p2, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    iput-object p4, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    iput-object p5, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    return-void
.end method

.method private static truncate(Ljava/time/Instant;)Ljava/time/Instant;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Ljava/time/Instant;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/rkpdapp/database/ProvisionedKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/rkpdapp/database/ProvisionedKey;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    iget-object v3, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    iget-object v3, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    iget-object v3, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-static {v1}, Lcom/android/rkpdapp/database/ProvisionedKey;->truncate(Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v1

    iget-object v3, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-static {v3}, Lcom/android/rkpdapp/database/ProvisionedKey;->truncate(Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-static {v1}, Lcom/android/rkpdapp/database/ProvisionedKey;->truncate(Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v1

    iget-object v2, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionedKey{keyBlob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", irpcHal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", publicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certificateChain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

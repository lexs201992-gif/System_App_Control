.class public Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
.super Ljava/lang/Object;
.source "IkeSpiGenerator.java"


# instance fields
.field private final blacklist mRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public blacklist allocateSpi(Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->sAssignedIkeSpis:Ljava/util/Set;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;-><init>(Ljava/net/InetAddress;J)V

    return-object v2
.end method

.method public blacklist allocateSpi(Ljava/net/InetAddress;J)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->sAssignedIkeSpis:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;-><init>(Ljava/net/InetAddress;J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate IKE SPI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with source address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

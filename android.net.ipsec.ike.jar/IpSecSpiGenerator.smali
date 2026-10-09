.class public Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
.super Ljava/lang/Object;
.source "IpSecSpiGenerator.java"


# instance fields
.field private final blacklist mIpSecManager:Landroid/net/IpSecManager;

.field private final blacklist mRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public blacklist allocateSpi(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Landroid/net/IpSecManager;->allocateSecurityParameterIndex(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/net/IpSecManager;->allocateSecurityParameterIndex(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    return-object v0
.end method

.method public blacklist allocateSpi(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/IpSecManager;->allocateSecurityParameterIndex(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    return-object v0
.end method

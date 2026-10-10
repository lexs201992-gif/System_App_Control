.class public Landroid/security/rkp/service/RemotelyProvisionedKey;
.super Ljava/lang/Object;
.source "RemotelyProvisionedKey.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final mEncodedCertChain:[B

.field private final mKeyBlob:[B


# direct methods
.method protected constructor <init>(Lcom/android/rkpdapp/RemotelyProvisionedKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/rkpdapp/RemotelyProvisionedKey;->keyBlob:[B

    iput-object v0, p0, Landroid/security/rkp/service/RemotelyProvisionedKey;->mKeyBlob:[B

    iget-object v0, p1, Lcom/android/rkpdapp/RemotelyProvisionedKey;->encodedCertChain:[B

    iput-object v0, p0, Landroid/security/rkp/service/RemotelyProvisionedKey;->mEncodedCertChain:[B

    return-void
.end method


# virtual methods
.method public getEncodedCertChain()[B
    .locals 1

    iget-object v0, p0, Landroid/security/rkp/service/RemotelyProvisionedKey;->mEncodedCertChain:[B

    return-object v0
.end method

.method public getKeyBlob()[B
    .locals 1

    iget-object v0, p0, Landroid/security/rkp/service/RemotelyProvisionedKey;->mKeyBlob:[B

    return-object v0
.end method

.class public Lcom/fingerprints/extension/navigation/FingerprintNavigation;
.super Ljava/lang/Object;
.source "FingerprintNavigation.java"

# interfaces
.implements Lcom/fingerprints/extension/IFpcServiceCallback;


# static fields
.field public static key:Ljava/lang/String;


# instance fields
.field private mFpcService:Lcom/fingerprints/extension/FpcService;

.field private mLogger:Lcom/fingerprints/extension/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Navigation"

    sput-object v0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fingerprints/extension/util/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "FingerprintNavigation"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    invoke-static {}, Lcom/fingerprints/extension/FpcService;->getInstance()Lcom/fingerprints/extension/FpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mFpcService:Lcom/fingerprints/extension/FpcService;

    sget-object v2, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/fingerprints/extension/FpcService;->setCallback(Ljava/lang/String;Lcom/fingerprints/extension/IFpcServiceCallback;)V

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNavigationConfig()Lcom/fingerprints/extension/navigation/NavigationConfig;
    .locals 5

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "getNavigationConfig"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    new-instance v0, Lcom/fingerprints/extension/navigation/NavigationConfig;

    invoke-direct {v0}, Lcom/fingerprints/extension/navigation/NavigationConfig;-><init>()V

    iget-object v2, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v2, :cond_0

    const/16 v3, 0xca

    invoke-virtual {v0}, Lcom/fingerprints/extension/navigation/NavigationConfig;->getStream()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    invoke-virtual {v0}, Lcom/fingerprints/extension/navigation/NavigationConfig;->getStream()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/navigation/NavigationConfig;->streamTo([B)I

    iget-object v2, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0}, Lcom/fingerprints/extension/navigation/NavigationConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v2, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-object v0
.end method

.method public isEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "isEnabled"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [B

    iget-object v4, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v4, :cond_0

    const/16 v5, 0xcc

    invoke-virtual {v4, v5, v3}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    const/4 v4, 0x0

    aget-byte v5, v3, v4

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v0, v2

    iget-object v2, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v2, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return v0
.end method

.method public onServiceCallback(I[B[B)V
    .locals 0

    return-void
.end method

.method public onServiceDied()V
    .locals 2

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "onServiceDied"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mFpcService:Lcom/fingerprints/extension/FpcService;

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNavigation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "setNavigation"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    const/16 v2, 0xc9

    invoke-static {p1}, Lcom/fingerprints/extension/util/BytesUtil;->boolToBytes(Z)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

.method public setNavigationConfig(Lcom/fingerprints/extension/navigation/NavigationConfig;)V
    .locals 4

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "setNavigationConfig"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p1}, Lcom/fingerprints/extension/navigation/NavigationConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    const/16 v2, 0xcb

    invoke-virtual {p1}, Lcom/fingerprints/extension/navigation/NavigationConfig;->toStream()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/navigation/FingerprintNavigation;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

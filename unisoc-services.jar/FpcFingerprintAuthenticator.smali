.class public Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;
.super Ljava/lang/Object;
.source "FpcFingerprintAuthenticator.java"

# interfaces
.implements Lcom/fingerprints/extension/IFpcServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static key:Ljava/lang/String;


# instance fields
.field private mEmptyBytes:[B

.field private mFpcService:Lcom/fingerprints/extension/FpcService;

.field private mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/fingerprints/extension/util/Logger;

.field private mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fingerprints/extension/authenticator/FingerprintAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Authenticator2"

    sput-object v0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->key:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v0, " "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mEmptyBytes:[B

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "FpcFingerprintAuthenticator"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/fingerprints/extension/FpcService;->getInstance()Lcom/fingerprints/extension/FpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/fingerprints/extension/FpcService;->setCallback(Ljava/lang/String;Lcom/fingerprints/extension/IFpcServiceCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v2, "Failed to get mExtensionService"

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/util/Logger;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;)V
    .locals 5

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " authenticate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    const/16 v1, 0x192

    iget-object v4, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mEmptyBytes:[B

    invoke-virtual {v0, v1, v4}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .locals 5

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cancel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    const/16 v1, 0x195

    iget-object v4, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mEmptyBytes:[B

    invoke-virtual {v0, v1, v4}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

.method public enroll(Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;)V
    .locals 5

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enroll"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    const/16 v1, 0x191

    iget-object v4, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mEmptyBytes:[B

    invoke-virtual {v0, v1, v4}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

.method public enumerate(Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;)V
    .locals 5

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enumerate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v0, :cond_0

    const/16 v1, 0x193

    iget-object v4, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mEmptyBytes:[B

    invoke-virtual {v0, v1, v4}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceCallback(I[B[B)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v0

    iget-object v1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-interface {v1, v0}, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;->onError(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onAcquired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v0

    iget-object v1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-interface {v1, v0}, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;->onAcquired(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onRemoved"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v1

    invoke-static {p2, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v0

    iget-object v2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-interface {v2, v1, v0}, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;->onRemoved(II)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onEnumerate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v1

    invoke-static {p2, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v0

    iget-object v2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-interface {v2, v1, v0}, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;->onEnumerate(II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onAuthenticated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v0

    iget-object v1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-interface {v1, v0}, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;->onAuthenticated(I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onEnrollResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v1

    invoke-static {p2, v0}, Lcom/fingerprints/extension/util/BytesUtil;->toInt([BI)I

    move-result v0

    iget-object v2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-interface {v2, v1, v0}, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;->onEnrollResult(II)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDied()V
    .locals 2

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "onServiceDied"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

.method public remove(ILcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;)V
    .locals 5

    iget-object v0, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " remove"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->enter(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mReceiver:Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator$IAuthenticatorServiceReceiver;

    invoke-static {p1}, Lcom/fingerprints/extension/util/BytesUtil;->intToBytes(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mFpcService:Lcom/fingerprints/extension/FpcService;

    if-eqz v1, :cond_0

    const/16 v4, 0x194

    invoke-virtual {v1, v4, v0}, Lcom/fingerprints/extension/FpcService;->request(I[B)I

    :cond_0
    iget-object v1, p0, Lcom/fingerprints/extension/authenticator2/FpcFingerprintAuthenticator;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fingerprints/extension/util/Logger;->exit(Ljava/lang/String;)V

    return-void
.end method

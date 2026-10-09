.class public Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateIkeLocalIkeInit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;
    }
.end annotation


# instance fields
.field private blacklist mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

.field private blacklist mIkeInitRequestBytes:[B

.field private blacklist mIkeInitResponseBytes:[B

.field private blacklist mIkeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

.field private blacklist mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

.field private blacklist mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field private blacklist mPeerSignatureHashAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mPeerSignatureHashAlgorithms:Ljava/util/Set;

    return-void
.end method

.method private blacklist buildIkeInitReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->allocateSpi(Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getSaProposalsInternal()[Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->peerSelectedDhGroup:I

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v8

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalPort()I

    move-result v9

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemotePort()I

    move-result v10

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v11

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mneedEnableForceUdpEncap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Z

    move-result v12

    move-wide v5, v4

    move-wide v3, v2

    move v2, v0

    invoke-static/range {v1 .. v12}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getIkeInitSaRequestPayloads([Landroid/net/ipsec/ike/IkeSaProposal;IJJLjava/net/InetAddress;Ljava/net/InetAddress;IILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Z)Ljava/util/List;

    move-result-object v0

    move-object v11, v1

    move-wide v2, v3

    move-wide v4, v5

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v6, 0x402e

    invoke-direct {v1, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->ALL_SIGNATURE_ALGO_TYPES:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->ALL_SIGNATURE_ALGO_TYPES:[S

    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-short v8, v1, v7

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/16 v7, 0x402f

    invoke-direct {v1, v7, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v6, 0x21

    const/16 v7, 0x22

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    new-instance v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v6, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object v6
.end method

.method private blacklist buildReqWithCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    instance-of v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v4, 0x4006

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v3, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    iget-wide v5, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v7, 0x29

    const/16 v8, 0x22

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v3, v2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object v3
.end method

.method private blacklist getNotifyCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .locals 5

    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v1, 0x29

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v4, 0x4006

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist handleNatDetection(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeMessage;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mdidPeerIncludeNattDetectionPayloads(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->markSeverNattUnsupported()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v4, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$misLocalOrRemoteNatDetected(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;JJLjava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result p2

    :try_start_0
    iget-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object p3

    invoke-virtual {p3, p2, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleNatDetectionResultInIkeInit(ZJ)V
    :try_end_0
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p3, v0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private blacklist sendRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->registerIkeSpi(J)V

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->encode()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitRequestBytes:[B

    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    const/16 v1, 0x28

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    :cond_0
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    return-void
.end method

.method private blacklist validateIkeInitResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->allocateSpi(Ljava/net/InetAddress;J)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received unexpected payload in IKE INIT response. Payload type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteVendorIds:Ljava/util/List;

    move-object v9, v7

    check-cast v9, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;->vendorId:[B

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    move-object v8, v7

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    sparse-switch v9, :sswitch_data_0

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received unknown or unexpected status notifications with notify type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mPeerSignatureHashAlgorithms:Ljava/util/Set;

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->getSignatureHashAlgorithmsFromIkeNotifyPayload(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :sswitch_1
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    if-nez v4, :cond_0

    move-object v4, v8

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v9, "More than one NOTIFY_TYPE_NAT_DETECTION_DESTINATION_IP found"

    invoke-direct {v6, v9}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_3
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v6

    throw v6

    :pswitch_3
    const/4 v5, 0x1

    move-object v8, v7

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iput-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    goto :goto_1

    :pswitch_4
    goto :goto_1

    :pswitch_5
    move-object v2, v7

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    goto :goto_1

    :pswitch_6
    move-object v1, v7

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    nop

    :goto_1
    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    const-class v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    const/16 v7, 0x21

    invoke-virtual {p1, v7, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {v6, v1, v8, v9}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getVerifiedNegotiatedIkeProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Landroid/util/Pair;

    move-result-object v8

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    :cond_3
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getPrfTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    const-class v7, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    const/16 v8, 0x22

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget v9, v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    if-eq v8, v9, :cond_5

    iget v8, v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget v9, v9, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->peerSelectedDhGroup:I

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v9, "Received KE payload with mismatched DH group."

    invoke-direct {v8, v9}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    :goto_2
    const/16 v8, 0x4004

    invoke-virtual {p1, v8}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->hasNotifyPayload(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, p2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->handleNatDetection(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V

    :cond_6
    return-void

    :cond_7
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v7, "SA, KE, or Nonce payload missing."

    invoke-direct {v6, v7}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4004 -> :sswitch_3
        0x4005 -> :sswitch_2
        0x402e -> :sswitch_1
        0x402f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist enterState()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mInitialSetupData is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->buildIkeInitReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->sendRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist exitState()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->exitState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    :cond_2
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected blacklist handleReceivedIkePacket(Landroid/os/Message;)V
    .locals 8

    const-string v0, "handleReceivedIkePacket: "

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;

    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikePacketBytes:[B

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Received an "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->getBasicInfoString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Packet size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    iget-boolean v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v4

    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid decoding status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    move-object v6, v4

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    const-string v7, "Discard unencrypted response with syntax error"

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected decoding status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_0

    :pswitch_2
    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitResponseBytes:[B

    move-object v5, v4

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->incrementLocalRequestMessageId()V

    nop

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v5, "Received a request while waiting for IKE_INIT response. Discard it."

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .locals 14

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/16 v2, 0x22

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->getNotifyCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v2
    :try_end_0
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    nop

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->handleCookieAndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->buildReqWithCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->sendRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    :try_end_1
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v6, p1

    goto/16 :goto_2

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->validateIkeInitResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v9, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    if-nez v4, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v4

    move v10, v4

    :goto_0
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getKeyLength()I

    move-result v11

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildSaLifetimeAlarmScheduler(J)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object v12
    :try_end_2
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, p1

    :try_start_3
    invoke-static/range {v5 .. v12}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->makeFirstIkeSaRecord(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IILcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p1, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    iget-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object p1, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object p1

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v3

    aget-object v3, v3, v1

    iget v9, v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v11, v3

    :goto_1
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    new-instance v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitRequestBytes:[B

    iget-object v10, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitResponseBytes:[B

    iget-object v11, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v12, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v13, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mPeerSignatureHashAlgorithms:Ljava/util/Set;

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;[B[BLcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Ljava/util/Set;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    goto/16 :goto_4

    :cond_3
    move-object v6, p1

    new-instance p1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected EXCHANGE_TYPE_IKE_SA_INIT but received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, p1

    :goto_2
    instance-of p1, v0, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    if-eqz p1, :cond_5

    move-object v13, v0

    check-cast v13, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    invoke-virtual {v13}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;->getDhGroup()I

    move-result v8

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams;->getSaProposalsInternal()[Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    nop

    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterIkeSpi(J)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitRequestBytes:[B

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->openSession()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SET_NETWORK cmd in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->handleReceivedIkePacket(Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_1
        0x13d -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    return-void
.end method

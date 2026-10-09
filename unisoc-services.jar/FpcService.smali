.class public Lcom/fingerprints/extension/FpcService;
.super Ljava/lang/Object;
.source "FpcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static instance:Lcom/fingerprints/extension/FpcService;

.field private static mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fingerprints/extension/IFpcServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFpcExtensionCallback:Lcom/fingerprints/fpc/extension/IFpcExtensionCallback;

.field private mLogger:Lcom/fingerprints/extension/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fingerprints/extension/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fingerprints/extension/util/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/extension/FpcService;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Lcom/fingerprints/extension/FpcService$1;

    invoke-direct {v0, p0}, Lcom/fingerprints/extension/FpcService$1;-><init>(Lcom/fingerprints/extension/FpcService;)V

    iput-object v0, p0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionCallback:Lcom/fingerprints/fpc/extension/IFpcExtensionCallback;

    sget-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fingerprints/extension/FpcService;->getExtensionService()Lcom/fingerprints/fpc/extension/IFpcExtension;

    move-result-object v0

    sput-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fingerprints/extension/FpcService;)Lcom/fingerprints/extension/util/Logger;
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fingerprints/extension/FpcService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method private getExtensionService()Lcom/fingerprints/fpc/extension/IFpcExtension;
    .locals 3

    sget-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fingerprints/fpc/extension/IFpcExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fingerprints/fpc/extension/IFpcExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fingerprints/extension/FpcService;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/fingerprints/fpc/extension/IFpcExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/fpc/extension/IFpcExtension;

    move-result-object v0

    sput-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    :cond_0
    sget-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable get service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fingerprints/fpc/extension/IFpcExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/fingerprints/fpc/extension/IFpcExtension;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    iget-object v1, p0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionCallback:Lcom/fingerprints/fpc/extension/IFpcExtensionCallback;

    invoke-interface {v0, v1}, Lcom/fingerprints/fpc/extension/IFpcExtension;->setCallback(Lcom/fingerprints/fpc/extension/IFpcExtensionCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v2, "Unable linkToDeath"

    invoke-virtual {v1, v2, v0}, Lcom/fingerprints/extension/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    return-object v0
.end method

.method public static getInstance()Lcom/fingerprints/extension/FpcService;
    .locals 1

    sget-object v0, Lcom/fingerprints/extension/FpcService;->instance:Lcom/fingerprints/extension/FpcService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fingerprints/extension/FpcService;

    invoke-direct {v0}, Lcom/fingerprints/extension/FpcService;-><init>()V

    sput-object v0, Lcom/fingerprints/extension/FpcService;->instance:Lcom/fingerprints/extension/FpcService;

    :cond_0
    sget-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-object v0, Lcom/fingerprints/extension/FpcService;->instance:Lcom/fingerprints/extension/FpcService;

    return-object v0
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/os/IBinder;

    return-object v1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v1, "FpcExtension service died"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fingerprints/extension/FpcService;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fingerprints/extension/IFpcServiceCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/fingerprints/extension/IFpcServiceCallback;->onServiceDied()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public request(I[B)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/fingerprints/extension/FpcService;->mFpcExtensionService:Lcom/fingerprints/fpc/extension/IFpcExtension;

    invoke-interface {v1, p1, p2}, Lcom/fingerprints/fpc/extension/IFpcExtension;->request(I[B)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/fingerprints/extension/FpcService;->mLogger:Lcom/fingerprints/extension/util/Logger;

    const-string v3, "failed request"

    invoke-virtual {v2, v3}, Lcom/fingerprints/extension/util/Logger;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public setCallback(Ljava/lang/String;Lcom/fingerprints/extension/IFpcServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class abstract Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;
.super Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
.source "DaemonProxy.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HwBinderDaemon"
.end annotation


# instance fields
.field mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

.field final synthetic this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;


# direct methods
.method private constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxyBase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/DaemonProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;)V

    return-void
.end method


# virtual methods
.method abstract handleServiceDied()V
.end method

.method public serviceDied(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->handleServiceDied()V

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;->onDaemonDied()V

    :cond_0
    return-void
.end method

.method toArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [Ljava/lang/Byte;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array p1, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method toArrayList([B)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/Byte;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    return-object p1
.end method

.method toIntArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array p1, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

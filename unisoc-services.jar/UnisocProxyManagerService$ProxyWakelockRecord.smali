.class Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;
.super Ljava/lang/Object;
.source "UnisocProxyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/proxy/UnisocProxyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyWakelockRecord"
.end annotation


# instance fields
.field private mCallback:Landroid/os/IWakeLockCallback;

.field private final mDisplayId:I

.field private mFlags:I

.field private mHistoryTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/IWakeLockCallback;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mCallback:Landroid/os/IWakeLockCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)I
    .locals 0

    iget p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlags(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)I
    .locals 0

    iget p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHistoryTag(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mHistoryTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPid(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)I
    .locals 0

    iget p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mPid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToken(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkSource(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/WorkSource;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method

.method constructor <init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mFlags:I

    iput-object p4, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mToken:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mWorkSource:Landroid/os/WorkSource;

    iput-object p7, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mHistoryTag:Ljava/lang/String;

    iput p8, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mDisplayId:I

    iput p9, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mPid:I

    iput-object p10, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mCallback:Landroid/os/IWakeLockCallback;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxyWakeLockRecord [ mPkgName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mToken ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mTag ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;
.super Ljava/lang/Object;
.source "SystemBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$SysStatusReceiver;,
        Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final SUB_LENTH:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/unipnp/server/EventManager;

.field private mPlugged:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;)Lcom/unipnp/server/EventManager;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mEventManager:Lcom/unipnp/server/EventManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckUsbPlugIn(Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->checkUsbPlugIn(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPackName(Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->getPackName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/unipnp/server/EventManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mPlugged:Z

    iput-object p1, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {p1}, Lcom/unipnp/server/EventManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->registerReceiver()V

    return-void
.end method

.method private checkUsbPlugIn(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mPlugged:Z

    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mPlugged:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ACTION_BATTERY_CHANGED usb status has changed new mPlugged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mPlugged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mPlugged:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mEventManager:Lcom/unipnp/server/EventManager;

    const-string v2, "unievent_device_usb_plugged"

    invoke-static {v2}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    :cond_2
    return-void
.end method

.method private getPackName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " start ----------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->values()[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected registerReceiver()V
    .locals 14

    new-instance v1, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$SysStatusReceiver;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$SysStatusReceiver;-><init>(Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$SysStatusReceiver-IA;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v0

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->values()[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->value()Ljava/lang/String;

    move-result-object v7

    if-eq v7, v4, :cond_0

    invoke-virtual {v5}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v0

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v1

    move-object v10, v13

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.class public Lcom/unipnp/server/systemevent/SystemStatusObserver;
.super Ljava/lang/Object;
.source "SystemStatusObserver.java"


# static fields
.field private static final ACTION_CHANGE_DISPLAY_CONFIG:Ljava/lang/String; = "sprd.action.change_display_config"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPeakRefreshRate:I

.field private final mEventManager:Lcom/unipnp/server/EventManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/unipnp/server/systemevent/SystemStatusObserver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemStatusObserver;)Lcom/unipnp/server/EventManager;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mEventManager:Lcom/unipnp/server/EventManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unipnp/server/systemevent/SystemStatusObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unipnp/server/EventManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mDefaultPeakRefreshRate:I

    iput-object p1, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {p1}, Lcom/unipnp/server/EventManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/unipnp/server/systemevent/SystemStatusObserver;->registerObserver()V

    return-void
.end method

.method private registerDisplayObserver()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sprd.action.change_display_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/unipnp/server/systemevent/SystemStatusObserver$2;

    iget-object v3, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {v3}, Lcom/unipnp/server/EventManager;->getUms()Lcom/unipnp/server/UnionManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipnp/server/UnionManagerService;->getUmsHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/unipnp/server/systemevent/SystemStatusObserver$2;-><init>(Lcom/unipnp/server/systemevent/SystemStatusObserver;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unipnp/server/systemevent/SystemStatusObserver;->TAG:Ljava/lang/String;

    const-string v2, "registerDisplayObserver error!"

    invoke-static {v1, v2, v0}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private registerRefreshRate()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/unipnp/server/systemevent/SystemStatusObserver$3;

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {v1}, Lcom/unipnp/server/EventManager;->getUms()Lcom/unipnp/server/UnionManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipnp/server/UnionManagerService;->getUmsHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unipnp/server/systemevent/SystemStatusObserver$3;-><init>(Lcom/unipnp/server/systemevent/SystemStatusObserver;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemStatusObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unisoc_refreshrate_peak_type"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unipnp/server/systemevent/SystemStatusObserver;->TAG:Ljava/lang/String;

    const-string v2, "registerRefreshRate error!"

    invoke-static {v1, v2, v0}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private registerUserSwitchObserver()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/unipnp/server/systemevent/SystemStatusObserver$1;

    invoke-direct {v1, p0}, Lcom/unipnp/server/systemevent/SystemStatusObserver$1;-><init>(Lcom/unipnp/server/systemevent/SystemStatusObserver;)V

    sget-object v2, Lcom/unipnp/server/systemevent/SystemStatusObserver;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unipnp/server/systemevent/SystemStatusObserver;->TAG:Ljava/lang/String;

    const-string v2, "registerUserSwitchObserver error!"

    invoke-static {v1, v2, v0}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/unipnp/server/systemevent/SystemStatusObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " start ----------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : unievent_user_changed"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : sprd.action.change_display_config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected registerObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/unipnp/server/systemevent/SystemStatusObserver;->registerUserSwitchObserver()V

    invoke-direct {p0}, Lcom/unipnp/server/systemevent/SystemStatusObserver;->registerDisplayObserver()V

    invoke-direct {p0}, Lcom/unipnp/server/systemevent/SystemStatusObserver;->registerRefreshRate()V

    return-void
.end method

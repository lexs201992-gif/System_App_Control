.class public Lcom/unipnp/server/systemevent/SystemListener;
.super Ljava/lang/Object;
.source "SystemListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipnp/server/systemevent/SystemListener$FlingGestureDetector;,
        Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;,
        Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;,
        Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;,
        Lcom/unipnp/server/systemevent/SystemListener$SystemRotateListener;
    }
.end annotation


# static fields
.field private static final IS_CLEARABLE:Ljava/lang/String; = "isClearAble"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String;

.field private static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private mCallStateListener:Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/unipnp/server/EventManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/unipnp/server/systemevent/SystemListener;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mEventManager:Lcom/unipnp/server/EventManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/unipnp/server/systemevent/SystemListener;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipnp/server/systemevent/SystemListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unipnp/server/systemevent/SystemListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/systemevent/SystemListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unipnp/server/EventManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {p1}, Lcom/unipnp/server/EventManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/unipnp/server/systemevent/SystemListener;->registerListener()V

    return-void
.end method

.method private registerAppTransitionListener()V
    .locals 2

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/unipnp/server/systemevent/SystemListener$1;

    invoke-direct {v1, p0}, Lcom/unipnp/server/systemevent/SystemListener$1;-><init>(Lcom/unipnp/server/systemevent/SystemListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

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

    sget-object v2, Lcom/unipnp/server/systemevent/SystemListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " start ----------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : MotionEvent.ACTION_DOWN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : MotionEvent.ACTION_POINTER_DOWN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : MotionEvent.ACTION_MOVE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : MotionEvent.ACTION_HOVER_MOVE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : MotionEvent.ACTION_UP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : MotionEvent.ACTION_CANCEL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Event : onFling"

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

.method protected registerListener()V
    .locals 4

    sget-object v0, Lcom/unipnp/server/systemevent/SystemListener;->TAG:Ljava/lang/String;

    const-string v1, "register SystemListener"

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/unipnp/server/systemevent/SystemListener$FlingGestureDetector;

    invoke-direct {v2, p0}, Lcom/unipnp/server/systemevent/SystemListener$FlingGestureDetector;-><init>(Lcom/unipnp/server/systemevent/SystemListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {v0}, Lcom/unipnp/server/EventManager;->getUms()Lcom/unipnp/server/UnionManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipnp/server/UnionManagerService;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;

    invoke-direct {v2, p0, v1}, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;-><init>(Lcom/unipnp/server/systemevent/SystemListener;Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener-IA;)V

    iget-object v3, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_0
    new-instance v2, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;

    invoke-direct {v2, p0, v1}, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;-><init>(Lcom/unipnp/server/systemevent/SystemListener;Lcom/unipnp/server/systemevent/SystemListener$CallStateListener-IA;)V

    iput-object v2, p0, Lcom/unipnp/server/systemevent/SystemListener;->mCallStateListener:Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/unipnp/server/systemevent/SystemListener;->mCallStateListener:Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    new-instance v1, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;

    invoke-direct {v1, p0}, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;-><init>(Lcom/unipnp/server/systemevent/SystemListener;)V

    new-instance v1, Lcom/unipnp/server/systemevent/SystemListener$SystemRotateListener;

    invoke-direct {v1, p0}, Lcom/unipnp/server/systemevent/SystemListener$SystemRotateListener;-><init>(Lcom/unipnp/server/systemevent/SystemListener;)V

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-direct {p0}, Lcom/unipnp/server/systemevent/SystemListener;->registerAppTransitionListener()V

    return-void
.end method

.method protected unregister()V
    .locals 2

    sget-object v0, Lcom/unipnp/server/systemevent/SystemListener;->TAG:Ljava/lang/String;

    const-string v1, "unregister SystemListener"

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unipnp/server/systemevent/SystemListener;->mCallStateListener:Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener;->mCallStateListener:Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;

    return-void
.end method

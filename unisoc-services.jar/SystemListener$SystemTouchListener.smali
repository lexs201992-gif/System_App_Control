.class final Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;
.super Ljava/lang/Object;
.source "SystemListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/systemevent/SystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unipnp/server/systemevent/SystemListener;


# direct methods
.method private constructor <init>(Lcom/unipnp/server/systemevent/SystemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unipnp/server/systemevent/SystemListener;Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;-><init>(Lcom/unipnp/server/systemevent/SystemListener;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v0}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmGestureDetector(Lcom/unipnp/server/systemevent/SystemListener;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v0}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmGestureDetector(Lcom/unipnp/server/systemevent/SystemListener;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemTouchListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v0}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unievent_motion_event"

    invoke-static {v2, v1}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

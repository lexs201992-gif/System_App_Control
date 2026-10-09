.class final Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "SystemListener.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/systemevent/SystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unipnp/server/systemevent/SystemListener;


# direct methods
.method private constructor <init>(Lcom/unipnp/server/systemevent/SystemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unipnp/server/systemevent/SystemListener;Lcom/unipnp/server/systemevent/SystemListener$CallStateListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;-><init>(Lcom/unipnp/server/systemevent/SystemListener;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 3

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStateListener onCallStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v0}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;

    move-result-object v0

    const-string v1, "unievent_call_state_offhook"

    invoke-static {v1}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateListener CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v0}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;

    move-result-object v0

    const-string v1, "unievent_call_state_ringing"

    invoke-static {v1}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateListener CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemListener$CallStateListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v0}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;

    move-result-object v0

    const-string v1, "unievent_call_state_idle"

    invoke-static {v1}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateListener CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

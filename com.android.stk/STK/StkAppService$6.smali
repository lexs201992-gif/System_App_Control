.class Lcom/android/stk/StkAppService$6;
.super Landroid/app/HomeVisibilityListener;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->registerHomeVisibilityObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$6;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/stk/StkAppService$6;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmServiceHandler(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/stk/StkAppService$6;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmServiceHandler(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/stk/StkAppService$6;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$munregisterHomeVisibilityObserver(Lcom/android/stk/StkAppService;)V

    :cond_0
    return-void
.end method

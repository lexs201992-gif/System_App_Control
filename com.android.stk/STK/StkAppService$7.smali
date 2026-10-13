.class Lcom/android/stk/StkAppService$7;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->registerLocaleChangeReceiver()V
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

    iput-object p1, p0, Lcom/android/stk/StkAppService$7;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/stk/StkAppService$7;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmServiceHandler(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/stk/StkAppService$7;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmServiceHandler(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

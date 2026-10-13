.class Lcom/android/stk/StkAppService$4;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->registerUserPresentReceiver()V
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

    iput-object p1, p0, Lcom/android/stk/StkAppService$4;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/stk/StkAppService$4;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p2}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/stk/StkAppService$4;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p2, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelNotificationOnKeyguard(Lcom/android/stk/StkAppService;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/android/stk/StkLauncherActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "StkLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkLauncherActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkLauncherActivity$2;->this$0:Lcom/android/stk/StkLauncherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "card_absent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/stk/StkLauncherActivity$2;->this$0:Lcom/android/stk/StkLauncherActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :cond_1
    return-void
.end method

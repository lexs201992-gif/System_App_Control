.class Lcom/android/stk/StkInputActivity$3;
.super Ljava/lang/Object;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkInputActivity$3;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    const-string v0, "StkInputActivity"

    const-string v1, "The alarm time is reached"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity$3;->this$0:Lcom/android/stk/StkInputActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fputmAlarmTime(Lcom/android/stk/StkInputActivity;J)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity$3;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    return-void
.end method

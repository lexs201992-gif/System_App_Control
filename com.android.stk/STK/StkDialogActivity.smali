.class public Lcom/android/stk/StkDialogActivity;
.super Landroid/app/Activity;
.source "StkDialogActivity.java"


# instance fields
.field private appService:Lcom/android/stk/StkAppService;

.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmTime:J

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mIsResponseSent:Z

.field private mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method static bridge synthetic -$$Nest$fgetappService(Lcom/android/stk/StkDialogActivity;)Lcom/android/stk/StkAppService;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsResponseSent(Lcom/android/stk/StkDialogActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/android/stk/StkDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlarmTime(Lcom/android/stk/StkDialogActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lcom/android/stk/StkDialogActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lcom/android/stk/StkDialogActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    new-instance v0, Lcom/android/stk/StkDialogActivity$4;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$4;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/stk/StkDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$5;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/stk/StkDialogActivity$6;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$6;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cancelTimeOut()V
    .locals 4

    iget-wide v0, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut - slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v2, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    :cond_0
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const-string v0, "SLOT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initFromIntent - ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_1

    :cond_1
    const-string v0, "********"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], slot id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StkDialogActivity"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendResponse(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    return-void
.end method

.method private sendResponse(IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    iget v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    const/4 v1, -0x1

    const-string v2, "StkDialogActivity"

    if-ne v0, v1, :cond_0

    const-string p0, "sim id is invalid"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignore response: id is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResponse resID["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] confirmed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "confirm"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/stk/StkAppService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    :cond_3
    return-void
.end method

.method private startTimeOut()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v0, :cond_1

    const v0, 0xea60

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a98

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    const-string v5, "StkDialogActivity"

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "StkDialogActivity"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget p0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, p0}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService$StkContext;->setImmediateDialogInstance(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x680080

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, sim id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StkDialogActivity"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, p1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_DIALOG_ACTIVITY"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "SLOT_ID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    :goto_0
    iget-object p1, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez p1, :cond_2

    const-string p1, "onCreate - appService is null"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$1;-><init>(Lcom/android/stk/StkDialogActivity;)V

    const v3, 0x7f0e002a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/stk/StkDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$2;-><init>(Lcom/android/stk/StkDialogActivity;)V

    const v3, 0x7f0e0028

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/stk/StkDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/stk/StkDialogActivity$3;-><init>(Lcom/android/stk/StkDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    return-void

    :cond_3
    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v4, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v2, v4}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/stk/StkAppService$StkContext;->setImmediateDialogInstance(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget v4, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v2, v4}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingDialogInstance(Landroid/app/Activity;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0b0074

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0800e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v4, 0x8

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v2, :cond_9

    :cond_8
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy - mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isDialogPending(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/stk/StkDialogActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "StkDialogActivity"

    const-string v1, "onNewIntent - updating the same Dialog box"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    if-nez v0, :cond_1

    const/16 v0, 0x16

    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget p0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/stk/StkAppService;->setDisplayTextDlgVisibility(ZI)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "StkDialogActivity"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const-string v0, "response_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    const-string v0, "alarm_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    const-string v0, "slotid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    iget-wide v3, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startTimeOut()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume - mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v0, :cond_0

    const-string p0, "User should clear text..showing message forever"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->setDisplayTextDlgVisibility(ZI)V

    iget-wide v0, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startTimeOut()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "StkDialogActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "response_sent"

    iget-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "alarm_time"

    iget-wide v1, p0, Lcom/android/stk/StkDialogActivity;->mAlarmTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "slotid"

    iget p0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart, sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop - before Send CONFIRM false mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StkDialogActivity"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

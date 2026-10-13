.class public Lcom/android/stk/StkMenuActivity;
.super Landroid/app/ListActivity;
.source "StkMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private appService:Lcom/android/stk/StkAppService;

.field private mAcceptUsersInput:Z

.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmTime:J

.field private mIsResponseSent:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mState:I

.field private mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetappService(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkAppService;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/android/stk/StkMenuActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/stk/StkMenuActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAcceptUsersInput(Lcom/android/stk/StkMenuActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlarmTime(Lcom/android/stk/StkMenuActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelTimeOut(Lcom/android/stk/StkMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lcom/android/stk/StkMenuActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgressBar(Lcom/android/stk/StkMenuActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->showProgressBar(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$1;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/stk/StkMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$2;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/stk/StkMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$3;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cancelTimeOut()V
    .locals 4

    iget-wide v0, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut - slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v2, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    :cond_0
    return-void
.end method

.method private displayMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v2, v1}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v0, v0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setSelection(I)V

    :cond_3
    return-void
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 1

    const-string v0, "StkMenuActivity"

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/Item;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "NPE Invalid menu"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "IOOBE Invalid menu"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "StkMenuActivity"

    if-eqz p1, :cond_0

    const-string v1, "STATE"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const-string v1, "SLOT_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "finish!"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :goto_0
    return-void
.end method

.method private sendResponse(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    return-void
.end method

.method private sendResponse(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResponse resID["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] itemId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] help["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->showProgressBar(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "menu selection"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "help"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget p0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/stk/StkAppService;->sendResponse(Landroid/os/Bundle;I)V

    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startTimeOut()V
    .locals 8

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    const-string v5, "StkMenuActivity"

    iget-object v6, p0, Lcom/android/stk/StkMenuActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    iget p1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    iget p1, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v1, p1, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    :catch_0
    :cond_2
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/ListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    const-string v0, "StkMenuActivity"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v1, 0x7f0b0075

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const p1, 0x7f0b0073

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setContentView(I)V

    const p1, 0x7f0801d9

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f0801d7

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const p1, 0x7f080167

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, p1}, Landroid/app/ListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez p1, :cond_0

    const-string p1, "onCreate - appService is null"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "session_ended"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "refresh_uninstall"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "card_absent"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onCreate - AirPlaneMode is on"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {p1, v0}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const-string p2, "onCreateContextMenu"

    const-string p3, "StkMenuActivity"

    invoke-static {p3, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "add menu"

    invoke-static {p3, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f0e0044

    invoke-interface {p1, p2, p2, p2, p0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const p0, 0x7f0e0067

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v1, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->isMenuPending(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "handleDestroy - Send End Session"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptUsersInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/stk/StkAppService;->setmHomeKeyEvent(Z)V

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_BACK - mState["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_3
    const-string p1, "STATE_SECONDARY"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x15

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return v2

    :cond_4
    const-string p1, "STATE_MAIN"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return v2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    const-string p2, "StkMenuActivity"

    if-nez p1, :cond_0

    const-string p0, "mAcceptUsersInput:false"

    invoke-static {p2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p4}, Lcom/android/stk/StkAppService;->setmHomeKeyEvent(Z)V

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "Item is null"

    invoke-static {p2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p3, "gsm.sys.modem.recovery"

    const-string p5, "0"

    invoke-static {p3, p5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onListItemClick Id: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", mState: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xb

    iget p1, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, p2, p1, p4}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->invalidateOptionsMenu()V

    invoke-direct {p0, p4}, Lcom/android/stk/StkMenuActivity;->showProgressBar(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->setmHomeKeyEvent(Z)V

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_2
    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, slot id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptUsersInput = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    goto :goto_0

    :cond_0
    const-string p0, "onPause: null appService."

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const-string v0, "accept_users_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->isMainMenuAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->showProgressBar(Z)V

    :cond_1
    :goto_0
    const-string v0, "response_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    const-string v0, "alarm_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume, slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v0, :cond_0

    const-string v0, "appService is null"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->setmHomeKeyEvent(Z)V

    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->getMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v0, :cond_2

    const-string v0, "menu is null"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->displayMenu()V

    iget-wide v0, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    :cond_3
    invoke-virtual {p0}, Landroid/app/ListActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "accept_users_input"

    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "response_sent"

    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "alarm_time"

    iget-wide v1, p0, Lcom/android/stk/StkMenuActivity;->mAlarmTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StkMenuActivity"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/android/stk/StkAppService$StkContext;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StkContext"
.end annotation


# instance fields
.field protected lastSelectedItem:Ljava/lang/String;

.field protected launchBrowser:Z

.field private mActivityInstance:Landroid/app/Activity;

.field protected mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field protected mCmdInProgress:Z

.field protected mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field protected mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mDelayToCheckTime:I

.field private mDialogInstance:Landroid/app/Activity;

.field private mDisplayTextDlgIsVisibile:Z

.field protected mDisplayTextResponsed:Z

.field private mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mIdleModeTextVisible:Z

.field private mImmediateDialogInstance:Landroid/app/Activity;

.field protected mIsDialogPending:Z

.field protected mIsInputPending:Z

.field protected mIsMenuPending:Z

.field protected mIsSessionFromUser:Z

.field protected mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mMenuIsVisible:Z

.field protected mMenuState:I

.field protected mNoResponseFromUser:Z

.field protected mNotificationOnKeyguard:Z

.field protected mOpCode:I

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field protected mSetupMenuState:I

.field private mSlotId:I

.field protected mStkServiceState:I

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityInstance(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSetupEventCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkAppService$StkContext;->mDelayToCheckTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogInstance(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayTextDlgIsVisibile(Lcom/android/stk/StkAppService$StkContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextDlgIsVisibile:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleModeTextVisible(Lcom/android/stk/StkAppService$StkContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActivityInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSetupEventCmd(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;I)V
    .locals 0

    iput p1, p0, Lcom/android/stk/StkAppService$StkContext;->mDelayToCheckTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisplayTextDlgIsVisibile(Lcom/android/stk/StkAppService$StkContext;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextDlgIsVisibile:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIdleModeTextVisible(Lcom/android/stk/StkAppService$StkContext;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImmediateDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mImmediateDialogInstance:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlotId(Lcom/android/stk/StkAppService$StkContext;I)V
    .locals 0

    iput p1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mNotificationOnKeyguard:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mNoResponseFromUser:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    iput v0, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    iput v0, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    iput v1, p0, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mImmediateDialogInstance:Landroid/app/Activity;

    iput v0, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextDlgIsVisibile:Z

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextVisible:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mIsSessionFromUser:Z

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    iput v0, p0, Lcom/android/stk/StkAppService$StkContext;->mDelayToCheckTime:I

    return-void
.end method


# virtual methods
.method final declared-synchronized getImmediateDialogInstance()Landroid/app/Activity;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmediateDialogInstance act : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mImmediateDialogInstance:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mImmediateDialogInstance:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized getPendingActivityInstance()Landroid/app/Activity;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPendingActivityInstance act : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized getPendingDialogInstance()Landroid/app/Activity;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPendingDialogInstance act : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized setImmediateDialogInstance(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmediateDialogInstance act : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    const/16 v2, 0xd

    invoke-static {v0, v2, v1, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcallSetActivityInstMsg(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized setPendingActivityInstance(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingActivityInstance act : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    const/16 v2, 0x8

    invoke-static {v0, v2, v1, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcallSetActivityInstMsg(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized setPendingDialogInstance(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingDialogInstance act : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    const/16 v2, 0x9

    invoke-static {v0, v2, v1, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcallSetActivityInstMsg(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

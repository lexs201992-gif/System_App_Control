.class public Lcom/android/stk/StkInputActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private appService:Lcom/android/stk/StkAppService;

.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmTime:J

.field private mIsResponseSent:Z

.field private mMoreOptions:Landroid/view/View;

.field private mNormalLayout:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPromptView:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mState:I

.field private mStkInput:Lcom/android/internal/telephony/cat/Input;

.field private mTextIn:Landroid/widget/EditText;

.field private mYesNoLayout:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/android/stk/StkInputActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlarmTime(Lcom/android/stk/StkInputActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPopupMenu(Lcom/android/stk/StkInputActivity;Landroid/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelTimeOut(Lcom/android/stk/StkInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$moptionsItemSelectedInternal(Lcom/android/stk/StkInputActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->optionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mMoreOptions:Landroid/view/View;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    new-instance v0, Lcom/android/stk/StkInputActivity$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$3;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/stk/StkInputActivity$4;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$4;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cancelTimeOut()V
    .locals 4

    iget-wide v0, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut - slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v2, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    :cond_0
    return-void
.end method

.method private configInputDisplay()V
    .locals 5

    const v0, 0x7f0801cc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, v1, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/stk/StkDigitsKeyListener;->getInstance()Lcom/android/stk/StkDigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v1, "hide_digits_helper_text_on_stk_input_screen_bool"

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-static {p0, v1, v2}, Lcom/android/stk/StkAppService;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const v2, 0x7f0e003e

    goto :goto_0

    :cond_2
    const v2, 0x7f0e001b

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    const v1, 0x7f0e001d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    const v1, 0x7f0800e4

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget v1, p0, Lcom/android/stk/StkInputActivity;->mState:I

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v4, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    filled-new-array {v3}, [Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v1, v1, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_6
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->updateButton()V

    :goto_2
    return-void
.end method

.method private createOptionsMenuInternal(Landroid/view/Menu;)V
    .locals 3

    const/4 p0, 0x1

    const v0, 0x7f0e0067

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p0, 0x2

    const v0, 0x7f0e0044

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFromIntent - slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "INPUT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Input;

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    const-string v0, "SLOT_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate - slot id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/android/stk/StkInputActivity;->mState:I

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->configInputDisplay()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private optionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "StkInputActivity"

    const-string p1, "Already responded"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 p1, 0xc

    const-string v0, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    return v1

    :cond_2
    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1
.end method

.method private prepareOptionsMenuInternal(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private startTimeOut()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x7530

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    const-string v5, "StkInputActivity"

    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private updateButton()V
    .locals 2

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget p0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-ge v1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    const-string v1, "StkInputActivity"

    if-eqz v0, :cond_0

    const-string p0, "Already responded"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f080123

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "YES"

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string p1, "NO"

    :goto_0
    const-string v0, "handleClick, ready to response"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    return-void

    :pswitch_3
    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->createOptionsMenuInternal(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->prepareOptionsMenuInternal(Landroid/view/Menu;)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v0, Lcom/android/stk/StkInputActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$1;-><init>(Lcom/android/stk/StkInputActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v0, Lcom/android/stk/StkInputActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$2;-><init>(Lcom/android/stk/StkInputActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080068
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate - mIsResponseSent["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StkInputActivity"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f040007

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

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

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez p1, :cond_1

    const-string p1, "onCreate - appService is null"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const p1, 0x7f0b0071

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0801db

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f040009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f080123

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkInputActivity;->mMoreOptions:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->mMoreOptions:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p1, 0x7f0800eb

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const p1, 0x7f08016a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    const p1, 0x7f08006a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f08006b

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801ff

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    const p1, 0x7f08014b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->initFromIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "airplane_mode_on"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz p1, :cond_4

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "onCreate - AirPlaneMode is on"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {p1, v0}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->createOptionsMenuInternal(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy - before Send End Session mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->isInputPending(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "handleDestroy - Send End Session"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    const/4 v1, 0x1

    const-string v2, "StkInputActivity"

    if-eqz v0, :cond_0

    const-string p0, "Already responded"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "onKeyDown - KEYCODE_BACK"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->optionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause - mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->prepareOptionsMenuInternal(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mMoreOptions:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "input_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->updateButton()V

    const-string v0, "alarm_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume - mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response_sent"

    iget-boolean v1, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "input_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm_time"

    iget-wide v1, p0, Lcom/android/stk/StkInputActivity;->mAlarmTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop - mIsResponseSent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StkInputActivity"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->updateButton()V

    return-void
.end method

.method sendResponse(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    return-void
.end method

.method sendResponse(ILjava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    iget v0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    const/4 v1, -0x1

    const-string v2, "StkInputActivity"

    if-ne v0, v1, :cond_0

    const-string p0, "slot id is invalid"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StkAppService is null, Ignore response: id is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mMoreOptions:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResponse resID["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] input[*****] help["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mIsResponseSent:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    const-string p1, "input"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "help"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget p0, p0, Lcom/android/stk/StkInputActivity;->mSlotId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/stk/StkAppService;->sendResponse(Landroid/os/Bundle;I)V

    return-void
.end method

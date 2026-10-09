.class public Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;
.super Landroid/app/Activity;
.source "TelcelOnekeyLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler;,
        Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;,
        Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$OnItemClickListenerImpl;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnOK:Landroid/widget/Button;

.field public mCancelListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultMode:I

.field private mEditPwd:Landroid/widget/EditText;

.field private mEditPwdConfirm:Landroid/widget/EditText;

.field private mHandler:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler;

.field private mIsLocked:Z

.field private mListView:Landroid/widget/ListView;

.field public mLockUnLockListener:Landroid/view/View$OnClickListener;

.field private mMessenger:Landroid/os/Messenger;

.field private mOpList:Ljava/util/List;

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mSimLockUtil:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

.field private mTextView:Landroid/widget/TextView;

.field private mTxtConfirm:Landroid/widget/TextView;

.field private mTxtRemainTimesMsg:Landroid/widget/TextView;

.field private mTxtRemainTimesValue:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1RydRxgO448k4Zj9y9PQO2vPZFg(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;ZILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->lambda$showUnlockAlert$0(ZILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3234UbdnZSAUj5QIfJSbWyKXplo(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->lambda$showLockAlert$1(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mAdapter:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditPwd(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditPwdConfirm(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLocked(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mIsLocked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsLocked(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mIsLocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMode(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->updateMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViews(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->updateViews(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverifyNck(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->verifyNck()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mDefaultMode:I

    new-instance v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler-IA;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mHandler:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mHandler:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$MyHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$1;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mLockUnLockListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$2;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private doLock()V
    .locals 6

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const-string v1, "PN"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mMessenger:Landroid/os/Messenger;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/unisoc/telephony/RadioInteractor;->setFacilityLockByUser(Ljava/lang/String;ZLandroid/os/Messenger;II)V

    return-void
.end method

.method private doUnLock()V
    .locals 6

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const-string v1, "PN"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mMessenger:Landroid/os/Messenger;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/unisoc/telephony/RadioInteractor;->setFacilityLockByUser(Ljava/lang/String;ZLandroid/os/Messenger;II)V

    return-void
.end method

.method private getMode()I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mDefaultMode:I

    return p0
.end method

.method private getRemainTimes()I
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mSimLockUtil:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-virtual {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getRemainTimes()I

    move-result p0

    return p0
.end method

.method private initiViews()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mOpList:Ljava/util/List;

    new-instance v0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mOpList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mAdapter:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mAdapter:Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$SimLockAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$OnItemClickListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$OnItemClickListenerImpl;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$OnItemClickListenerImpl-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0900b5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtConfirm:Landroid/widget/TextView;

    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesMsg:Landroid/widget/TextView;

    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesValue:Landroid/widget/TextView;

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mLockUnLockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$showLockAlert$1(ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->doLock()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$showUnlockAlert$0(ZILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mSimLockUtil:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-virtual {p1, p3}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->resetSimLockRemainTimes(Z)V

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->doUnLock()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    const-string p4, ""

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0d0027

    if-eq p2, p1, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->getRemainTimes()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mSimLockUtil:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-virtual {p2, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->saveRemainTimes(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->updateMode(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private queryFacilityLock()V
    .locals 7

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const-string v1, "PN"

    const-string v2, "00000000"

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mMessenger:Landroid/os/Messenger;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/unisoc/telephony/RadioInteractor;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Messenger;II)V

    return-void
.end method

.method private showLockAlert(ZI)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0062

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0d0061

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;Z)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showUnlockAlert(ZI)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0062

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0061

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;ZI)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateMode(I)V
    .locals 1

    iput p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mDefaultMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode updated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mDefaultMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelcelOnekeyLockActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateViews(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesValue:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->getRemainTimes()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->getRemainTimes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesValue:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mTxtRemainTimesValue:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private verifyNck()V
    .locals 7

    iget-object v0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mSimLockUtil:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-virtual {v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getNckCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->getMode()I

    move-result v2

    const v3, 0x7f0d0027

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d004a

    invoke-direct {p0, v5, v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showUnlockAlert(ZI)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d004b

    invoke-direct {p0, v4, v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showUnlockAlert(ZI)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showUnlockAlert(ZI)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->getMode()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mEditPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d0048

    invoke-direct {p0, v5, v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showLockAlert(ZI)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0d0049

    invoke-direct {p0, v4, v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showLockAlert(ZI)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0d0026

    invoke-direct {p0, v4, v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showLockAlert(ZI)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4, v3}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->showLockAlert(ZI)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getInstance()Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mSimLockUtil:Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    new-instance p1, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {p1, p0}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->queryFacilityLock()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->updateMode(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->initiViews()V

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockActivity;->updateViews(I)V

    return-void
.end method

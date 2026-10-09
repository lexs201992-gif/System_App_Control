.class public Lcom/unisoc/phone/uplmn/UplmnSettings;
.super Landroid/app/Activity;
.source "UplmnSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;,
        Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;
    }
.end annotation


# instance fields
.field private mActInt:[I

.field private mActStr:[Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mAppType:I

.field private mET_Act:Landroid/widget/EditText;

.field private mET_Index:Landroid/widget/EditText;

.field private mET_Plmn:Landroid/widget/EditText;

.field private mFh:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

.field private mFileID:I

.field private mHandler:Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

.field private mIsUsim:Z

.field private mLengthUnit:I

.field private mListView:Landroid/widget/ListView;

.field private mLooper:Landroid/os/Looper;

.field private mOffset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mPlmn:[Ljava/lang/String;

.field private mPlmnAct:[Ljava/lang/String;

.field private mPlmnActList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;

.field private mSubId:I

.field private mUplmnEditDialog:Landroid/app/AlertDialog;

.field private mUplmnLen:I

.field private mUplmnNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActInt(Lcom/unisoc/phone/uplmn/UplmnSettings;)[I
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActStr(Lcom/unisoc/phone/uplmn/UplmnSettings;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/unisoc/phone/uplmn/UplmnSettings;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmET_Act(Lcom/unisoc/phone/uplmn/UplmnSettings;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Act:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmET_Index(Lcom/unisoc/phone/uplmn/UplmnSettings;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Index:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmET_Plmn(Lcom/unisoc/phone/uplmn/UplmnSettings;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Plmn:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUsim(Lcom/unisoc/phone/uplmn/UplmnSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mIsUsim:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLengthUnit(Lcom/unisoc/phone/uplmn/UplmnSettings;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mLengthUnit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListView(Lcom/unisoc/phone/uplmn/UplmnSettings;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffset(Lcom/unisoc/phone/uplmn/UplmnSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/unisoc/phone/uplmn/UplmnSettings;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlmn(Lcom/unisoc/phone/uplmn/UplmnSettings;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmn:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlmnAct(Lcom/unisoc/phone/uplmn/UplmnSettings;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlmnActList(Lcom/unisoc/phone/uplmn/UplmnSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnActList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUplmnLen(Lcom/unisoc/phone/uplmn/UplmnSettings;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnLen:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUplmnNum(Lcom/unisoc/phone/uplmn/UplmnSettings;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmUplmnLen(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnLen:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUplmnNum(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mDisplayToast(Lcom/unisoc/phone/uplmn/UplmnSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInput(Lcom/unisoc/phone/uplmn/UplmnSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisoc/phone/uplmn/UplmnSettings;->checkInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteUplmn(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->deleteUplmn(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeArray(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->initializeArray(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/unisoc/phone/uplmn/UplmnSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnewUplmn(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->newUplmn(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAct(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->setAct(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConfirmDeleteDialog(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->showConfirmDeleteDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEditDialog(Lcom/unisoc/phone/uplmn/UplmnSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/uplmn/UplmnSettings;->showEditDialog(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUplmn(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->updateUplmn(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmn:[Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnActList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mSubId:I

    iput v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPhoneId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mLengthUnit:I

    iput v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnLen:I

    iput v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    return-void
.end method

.method private DisplayToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private checkInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[^0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const v1, 0x7f0d0069

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f0d003f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0d0041

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0d0068

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_4

    const p1, 0x7f0d004e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_6

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    return v2
.end method

.method private convertActToBinary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    rsub-int/lit8 v1, p0, 0x4

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private convertActToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "8000"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "0080"

    goto :goto_0

    :cond_1
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "4000"

    goto :goto_0

    :cond_2
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "C0C0"

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private convertPlmnToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 p0, 0x6

    new-array v0, p0, [C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ne v1, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v5

    const/16 p0, 0x46

    aput-char p0, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p0, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private deleteUplmn(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mLengthUnit:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnActList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFh:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFileID:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mHandler:Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method

.method private getEditDialog(IZ)Landroid/app/AlertDialog;
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Index:Landroid/widget/EditText;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Plmn:Landroid/widget/EditText;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Act:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Index:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Plmn:Landroid/widget/EditText;

    const-string v3, ""

    if-eqz p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmn:[Ljava/lang/String;

    aget-object v4, v4, p1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Act:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    aget v3, v3, p1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d006d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/unisoc/phone/uplmn/UplmnSettings$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings$3;-><init>(Lcom/unisoc/phone/uplmn/UplmnSettings;ZI)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnEditDialog:Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnEditDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private initialize(Landroid/content/Intent;)Z
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;-><init>(Lcom/unisoc/phone/uplmn/UplmnSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mHandler:Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

    const-string v0, "sub_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mSubId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPhoneId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "invalid phoneId"

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance p1, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPhoneId:I

    invoke-virtual {p1, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->getIccAppType(I)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mAppType:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mIsUsim:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mLengthUnit:I

    if-eqz v0, :cond_3

    const/16 p1, 0x6f60

    goto :goto_1

    :cond_3
    const/16 p1, 0x6f30

    :goto_1
    iput p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFileID:I

    new-instance p1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mAppType:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPhoneId:I

    invoke-direct {p1, v0, v1, v3}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;-><init>(ILandroid/content/Context;I)V

    iput-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFh:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    new-instance p1, Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;-><init>(Lcom/unisoc/phone/uplmn/UplmnSettings;Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver-IA;)V

    iput-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mReceiver:Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialize: mSubId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsUsim = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mIsUsim:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    return v2
.end method

.method private initializeArray(I)V
    .locals 1

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmn:[Ljava/lang/String;

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UplmnSettings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UplmnSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newUplmn(I)V
    .locals 9

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Plmn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Act:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertPlmnToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertActToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newUplmn : mUplmnNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newPlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newAct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    iget v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    if-ge p1, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aput-object v2, v5, v4

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmn:[Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertPlmnToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-direct {p0, v4}, Lcom/unisoc/phone/uplmn/UplmnSettings;->setAct(I)V

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnActList:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mIsUsim:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aget-object v7, v5, v4

    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_0
    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUplmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFh:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFileID:I

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mHandler:Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f0d006a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->DisplayToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private readUplmn()V
    .locals 3

    const-string v0, "readUplmn"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFh:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFileID:I

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mHandler:Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method private setAct(I)V
    .locals 8

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertActToBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertActToBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    const-string v0, "U/E/G"

    aput-object v0, p0, p1

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    aput v2, v0, p1

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    const-string v0, "U"

    aput-object v0, p0, p1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    aput v6, v0, p1

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    const-string v0, "E"

    aput-object v0, p0, p1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActInt:[I

    aput v3, v0, p1

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    const-string v0, "G"

    aput-object v0, p0, p1

    :cond_5
    :goto_2
    return-void
.end method

.method private showConfirmDeleteDialog(I)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/unisoc/phone/uplmn/UplmnSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings$4;-><init>(Lcom/unisoc/phone/uplmn/UplmnSettings;I)V

    const p0, 0x104000a

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0d0035

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showEditDialog(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnEditDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Edit dialog is already showing"

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/uplmn/UplmnSettings;->getEditDialog(IZ)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateUplmn(I)V
    .locals 7

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Plmn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mET_Act:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertPlmnToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->convertActToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUplmn : mUplmnNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", updatePlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", updateAct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mUplmnNum:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mIsUsim:Z

    if-eqz v6, :cond_0

    move-object v6, v2

    goto :goto_1

    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    aput-object v6, v5, v4

    :cond_1
    iget-object v5, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnAct:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUplmn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->setAct(I)V

    iget-object v2, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnActList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mActStr:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFh:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mFileID:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object p0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mHandler:Lcom/unisoc/phone/uplmn/UplmnSettings$EventHandler;

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0e0113

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const-string p1, "onCreate"

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/uplmn/UplmnSettings;->initialize(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->readUplmn()V

    const p1, 0x7f090003

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mListView:Landroid/widget/ListView;

    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090003

    iget-object v1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mPlmnActList:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/unisoc/phone/uplmn/UplmnSettings$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/uplmn/UplmnSettings$1;-><init>(Lcom/unisoc/phone/uplmn/UplmnSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/unisoc/phone/uplmn/UplmnSettings$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/uplmn/UplmnSettings$2;-><init>(Lcom/unisoc/phone/uplmn/UplmnSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mReceiver:Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mReceiver:Lcom/unisoc/phone/uplmn/UplmnSettings$MyReceiver;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/uplmn/UplmnSettings;->mOffset:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/uplmn/UplmnSettings;->showEditDialog(IZ)V

    return v0
.end method

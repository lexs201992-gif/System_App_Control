.class public Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;
.super Ljava/lang/Object;
.source "MotoCPForIDActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/MotoCPForIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpfWatcher"
.end annotation


# instance fields
.field private ActionSwitchesValues:[I

.field private dash:I

.field private dots:I

.field private flag:I

.field private inputField:Landroid/widget/EditText;

.field private signsBeforeChange:I

.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

.field private txtBeforeChange:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->ActionSwitchesValues:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dash:I

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dots:I

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->flag:I

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->signsBeforeChange:I

    iput-object p2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private findOutIfUserWasTypingOrDeleting(Ljava/lang/String;)Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;
    .locals 2

    sget-object v0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;->TYPING:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    iget v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->flag:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->flag:I

    sget-object p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;->TYPING:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->flag:I

    sget-object p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;->DELETING:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    return-object p0
.end method

.method private getActionSwitchesValues()[I
    .locals 3

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->ActionSwitchesValues:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;->values()[Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;->DELETING:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;->TYPING:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->ActionSwitchesValues:[I

    return-object v0
.end method

.method private placeCursorDependingOnUserAction(ILjava/lang/String;Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;)V
    .locals 5

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->getActionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const-string v0, "-"

    const-string v1, "."

    const/4 v2, 0x1

    const-string v3, ""

    if-eq p3, v2, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dots:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dash:I

    iget p3, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dots:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->signsBeforeChange:I

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_1
    add-int/lit8 p3, p1, -0x1

    if-gez p3, :cond_2

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->txtBeforeChange:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->flag:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->flag:I

    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dots:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dash:I

    iget p2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->dots:I

    add-int/2addr p2, v1

    iget v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->signsBeforeChange:I

    if-le v0, p2, :cond_4

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iput p2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->signsBeforeChange:I

    return-void

    :cond_4
    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->txtBeforeChange:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->formatCpf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->inputField:Landroid/widget/EditText;

    invoke-virtual {p4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->findOutIfUserWasTypingOrDeleting(Ljava/lang/String;)Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;->placeCursorDependingOnUserAction(ILjava/lang/String;Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;)V

    return-void
.end method

.class public Lcom/android/stk/StkMessageActivity;
.super Landroid/app/Activity;
.source "StkMessageActivity.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconSelfExplanatory:Z

.field private mMessageText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/stk/StkMessageActivity;->mMessageText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkMessageActivity;->mIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMessageActivity;->mIconSelfExplanatory:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/stk/StkMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMessageActivity$1;-><init>(Lcom/android/stk/StkMessageActivity;)V

    const v1, 0x7f0e002a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/stk/StkMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMessageActivity$2;-><init>(Lcom/android/stk/StkMessageActivity;)V

    const v1, 0x7f0e0028

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/stk/StkMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMessageActivity$3;-><init>(Lcom/android/stk/StkMessageActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/android/stk/StkAppService;->idleModeText:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/stk/StkMessageActivity;->mMessageText:Ljava/lang/String;

    sget-object v3, Lcom/android/stk/StkAppService;->idleModeIcon:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/stk/StkMessageActivity;->mIcon:Landroid/graphics/Bitmap;

    sget-boolean v4, Lcom/android/stk/StkAppService;->idleModeIconSelfExplanatory:Z

    iput-boolean v4, p0, Lcom/android/stk/StkMessageActivity;->mIconSelfExplanatory:Z

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkMessageActivity;->mIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    const v1, 0x1080864

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/android/stk/StkMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

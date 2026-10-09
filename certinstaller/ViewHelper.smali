.class Lcom/android/certinstaller/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# instance fields
.field private mHasEmptyError:Z

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getHasEmptyError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/certinstaller/ViewHelper;->mHasEmptyError:Z

    return p0
.end method

.method getText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setHasEmptyError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/certinstaller/ViewHelper;->mHasEmptyError:Z

    return-void
.end method

.method setText(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    return-void
.end method

.method showError(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

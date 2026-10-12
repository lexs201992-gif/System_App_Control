.class public Lcom/android/setupwizardlib/template/ButtonFooterMixin;
.super Ljava/lang/Object;
.source "ButtonFooterMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private final context:Landroid/content/Context;

.field private final footerStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->context:Landroid/content/Context;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->footerStub:Landroid/view/ViewStub;

    return-void
.end method

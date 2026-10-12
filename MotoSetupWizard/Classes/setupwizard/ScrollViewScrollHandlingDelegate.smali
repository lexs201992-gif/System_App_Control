.class public Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;


# instance fields
.field private final requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field private final scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    instance-of p1, p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollViewDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    :goto_0
    return-void
.end method


# virtual methods
.method public onRequiresScroll()V
    .locals 1

    iget-object p0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.method public onScrolledToBottom()V
    .locals 1

    iget-object p0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.class public Lcom/android/setupwizardlib/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;,
        Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;
    }
.end annotation


# static fields
.field private static final TYPEFACE_MEDIUM:Landroid/graphics/Typeface;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/setupwizardlib/span/LinkSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/span/LinkSpan;->id:Ljava/lang/String;

    return-void
.end method

.method private dispatchClick(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getLegacyListenerFromContext(Landroid/content/Context;)Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;->onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private getLegacyListenerFromContext(Landroid/content/Context;)Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :goto_0
    instance-of p0, p1, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    return-object p1

    :cond_0
    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/span/LinkSpan;->dispatchClick(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_0

    :cond_0
    const-string p0, "LinkSpan"

    const-string v0, "Dropping click event. No listener attached."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/text/Spannable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    sget-object p0, Lcom/android/setupwizardlib/span/LinkSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

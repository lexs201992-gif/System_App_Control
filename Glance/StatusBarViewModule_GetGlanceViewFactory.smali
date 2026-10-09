.class public abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetGlanceViewFactory;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static getGlanceView(Lcom/android/systemui/shade/NotificationShadeWindowView;)Lcom/android/keyguard/glance/GlanceView;
    .locals 1

    const v0, 0x7f0a02e2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/glance/GlanceView;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

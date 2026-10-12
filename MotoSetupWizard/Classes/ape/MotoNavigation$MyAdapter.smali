.class Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MotoNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/MotoNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private mTheme:I

.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoNavigation;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 0

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->mTheme:I

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->resIds:[I

    array-length p0, p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$600(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->mTheme:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->resIds:[I

    aget p0, p0, p2

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

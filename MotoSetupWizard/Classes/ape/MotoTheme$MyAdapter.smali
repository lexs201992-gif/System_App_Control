.class Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MotoTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/MotoTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private itemImage:Landroid/widget/ImageView;

.field private resIds:[I

.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoTheme;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->resIds:[I

    array-length p0, p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoTheme;->access$100(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c003e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->itemImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->resIds:[I

    aget p2, v2, p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->itemImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->resIds:[I

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

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

.method public setItemImage([I)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->resIds:[I

    return-void
.end method

.class Lcom/ape/setupwizard/activity/MotoNavigation$4;
.super Ljava/lang/Object;
.source "MotoNavigation.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoNavigation;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoNavigation;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageScrolled  position : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",positionOffset : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",positionOffsetPixels : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "viewpage"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewpage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800f1

    const v1, 0x7f0800f0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$200(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$300(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$400(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    const v1, 0x7f110090

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$502(Lcom/ape/setupwizard/activity/MotoNavigation;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$200(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$300(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$400(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    const v1, 0x7f11008f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$502(Lcom/ape/setupwizard/activity/MotoNavigation;I)I

    :goto_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$600(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$500(Lcom/ape/setupwizard/activity/MotoNavigation;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setNavagation(Landroid/content/Context;I)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$500(Lcom/ape/setupwizard/activity/MotoNavigation;)I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$700(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation$4;->this$0:Lcom/ape/setupwizard/activity/MotoNavigation;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoNavigation;->access$700(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

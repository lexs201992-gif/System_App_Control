.class Lcom/ape/setupwizard/activity/MotoTheme$3;
.super Ljava/lang/Object;
.source "MotoTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoTheme;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoTheme;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$400(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$400(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$300(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$300(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    const v1, 0x7f060080

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$500(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    const v1, 0x7f110096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme$3;->this$0:Lcom/ape/setupwizard/activity/MotoTheme;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/ape/setupwizard/activity/MotoTheme;->access$600(Lcom/ape/setupwizard/activity/MotoTheme;ZI)V

    return-void
.end method

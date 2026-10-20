.class Lcom/goodix/gftest/HomeActivity$MyAdapter$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/gftest/HomeActivity$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/gftest/HomeActivity$MyAdapter;

.field final synthetic val$fingerprintAnimator:Landroid/widget/ImageView;

.field final synthetic val$iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor <init>(Lcom/goodix/gftest/HomeActivity$MyAdapter;Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/goodix/gftest/HomeActivity$MyAdapter$1;->this$1:Lcom/goodix/gftest/HomeActivity$MyAdapter;

    iput-object p2, p0, Lcom/goodix/gftest/HomeActivity$MyAdapter$1;->val$iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p3, p0, Lcom/goodix/gftest/HomeActivity$MyAdapter$1;->val$fingerprintAnimator:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/goodix/gftest/HomeActivity$MyAdapter$1;->val$iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object v0, p0, Lcom/goodix/gftest/HomeActivity$MyAdapter$1;->val$fingerprintAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/goodix/gftest/HomeActivity$MyAdapter$1;->val$fingerprintAnimator:Landroid/widget/ImageView;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

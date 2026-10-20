.class Lcom/goodix/gftest/TouchTestActivity$MyAdapter$Holder;
.super Ljava/lang/Object;
.source "TouchTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/TouchTestActivity$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field progressBar:Lcom/goodix/gftest/widget/HoloCircularProgressBar;

.field resultView:Landroid/widget/TextView;

.field retryView:Landroid/widget/TextView;

.field testingViewNormal:Landroid/widget/ProgressBar;

.field testingViewUntrustAuthenticate:Landroid/widget/LinearLayout;

.field testingViewUntrustEnroll:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/goodix/gftest/TouchTestActivity$MyAdapter;

.field titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/goodix/gftest/TouchTestActivity$MyAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$MyAdapter$Holder;->this$1:Lcom/goodix/gftest/TouchTestActivity$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodix/gftest/TouchTestActivity$MyAdapter;Lcom/goodix/gftest/TouchTestActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/TouchTestActivity$MyAdapter$Holder;-><init>(Lcom/goodix/gftest/TouchTestActivity$MyAdapter;)V

    return-void
.end method

.class Lcom/goodix/gftest/AutoTestActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/AutoTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/gftest/AutoTestActivity;


# direct methods
.method private constructor <init>(Lcom/goodix/gftest/AutoTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodix/gftest/AutoTestActivity;Lcom/goodix/gftest/AutoTestActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    return-void
.end method

.method private updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V
    .locals 1

    const/16 p0, 0x8

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewNormal:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustEnroll:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustAuthenticate:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewNormal:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustEnroll:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustAuthenticate:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_2

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewNormal:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustEnroll:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustAuthenticate:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V
    .locals 5

    const v0, 0x7f040016

    const v1, 0x7f040015

    const v2, 0x7f040004

    const/4 v3, 0x0

    const/4 v4, 0x4

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v1, 0x7f0d0175

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v0, 0x7f0d0116

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v0, 0x7f0d021c

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v0, 0x7f0d021b

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1300(Lcom/goodix/gftest/AutoTestActivity;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v3}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    iget-object p0, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p0, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->retryView:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v3}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->progressBar:Lcom/goodix/gftest/widget/HoloCircularProgressBar;

    iget-object p2, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p2}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object p2

    iget p2, p2, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    iget-object p3, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p3}, Lcom/goodix/gftest/AutoTestActivity;->access$1100(Lcom/goodix/gftest/AutoTestActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0x2710

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/AutoTestActivity;->access$1200(Lcom/goodix/gftest/AutoTestActivity;)I

    move-result p0

    div-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setProgress(F)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v0, 0x7f0d00ff

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v0, 0x7f0d0019

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const v0, 0x7f0d00f5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const p3, 0x7f0d0023

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_b
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const p3, 0x7f0d01a0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_c
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const p3, 0x7f0d015c

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_d
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    iget-object p2, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const p3, 0x7f0d0197

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_e
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v3}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto :goto_0

    :pswitch_f
    iget-object p3, p1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateHolderTestingView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object p0

    aget p0, p0, p1

    const/16 p1, 0x10

    if-eq p0, p1, :cond_1

    const/16 p1, 0x11

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p2, :cond_2

    new-instance p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;

    const/4 v3, 0x0

    invoke-direct {p2, p0, v3}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;-><init>(Lcom/goodix/gftest/AutoTestActivity$MyAdapter;Lcom/goodix/gftest/AutoTestActivity$1;)V

    iget-object v4, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f07010b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewNormal:Landroid/widget/ProgressBar;

    const v4, 0x7f07010c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustAuthenticate:Landroid/widget/LinearLayout;

    const v4, 0x7f07010d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustEnroll:Landroid/widget/RelativeLayout;

    iget-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewNormal:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustAuthenticate:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->testingViewUntrustEnroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v4, 0x7f07005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/goodix/gftest/widget/HoloCircularProgressBar;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->progressBar:Lcom/goodix/gftest/widget/HoloCircularProgressBar;

    const v5, 0x461c4000    # 10000.0f

    invoke-virtual {v4, v5}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setMax(F)V

    const v4, 0x7f070109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v4, 0x7f0700ff

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->resultView:Landroid/widget/TextView;

    const-wide/16 v4, 0x7d0

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const v6, 0x7f070058

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v8, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$2;

    invoke-direct {v8, p0, v7, v6}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$2;-><init>(Lcom/goodix/gftest/AutoTestActivity$MyAdapter;Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v8, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v7, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->retryView:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const v6, 0x7f070059

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v8, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$1;

    invoke-direct {v8, p0, v7, v6}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$1;-><init>(Lcom/goodix/gftest/AutoTestActivity$MyAdapter;Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v8, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v7, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->iconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    :goto_0
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;

    move-object v9, v3

    move-object v3, p2

    move-object p2, v9

    :goto_1
    iget-object v4, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v4}, Lcom/goodix/gftest/AutoTestActivity;->access$100(Lcom/goodix/gftest/AutoTestActivity;)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v0

    aget v0, v0, p1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const v7, 0x7f0d0185

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-ne v0, v4, :cond_5

    :cond_4
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0209

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_b
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d016a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0152

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_d
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0167

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_e
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_f
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0159

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_10
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_11
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_12
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto/16 :goto_5

    :pswitch_13
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-ne v0, v4, :cond_7

    :cond_6
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d0178

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto :goto_5

    :pswitch_14
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d016b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto :goto_5

    :pswitch_15
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    goto :goto_5

    :pswitch_16
    iget-object v0, p2, Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0d018d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->updateTestView(Lcom/goodix/gftest/AutoTestActivity$MyAdapter$Holder;II)V

    :goto_5
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

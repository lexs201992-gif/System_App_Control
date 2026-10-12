.class Lcom/ape/setupwizard/activity/StayInTouchActivity$2;
.super Ljava/lang/Object;
.source "StayInTouchActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/StayInTouchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/StayInTouchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p1

    const p2, 0x3f5eb852    # 0.87f

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p1

    const p2, 0x3e851eb8    # 0.26f

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$300(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p2}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$300(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;->this$0:Lcom/ape/setupwizard/activity/StayInTouchActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.class Lcom/android/setupwizardlib/template/RequireScrollMixin$4;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field final synthetic val$scrollNeeded:Z


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-boolean p2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->val$scrollNeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-static {p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->-$$Nest$fgetlistener(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-void
.end method

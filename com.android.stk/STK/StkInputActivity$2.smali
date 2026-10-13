.class Lcom/android/stk/StkInputActivity$2;
.super Ljava/lang/Object;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkInputActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/stk/StkInputActivity;->-$$Nest$fputmPopupMenu(Lcom/android/stk/StkInputActivity;Landroid/widget/PopupMenu;)V

    return-void
.end method

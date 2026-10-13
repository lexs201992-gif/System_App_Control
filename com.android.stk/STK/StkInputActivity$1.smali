.class Lcom/android/stk/StkInputActivity$1;
.super Ljava/lang/Object;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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

    iput-object p1, p0, Lcom/android/stk/StkInputActivity$1;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkInputActivity$1;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p0, p1}, Lcom/android/stk/StkInputActivity;->-$$Nest$moptionsItemSelectedInternal(Lcom/android/stk/StkInputActivity;Landroid/view/MenuItem;)Z

    const/4 p0, 0x1

    return p0
.end method

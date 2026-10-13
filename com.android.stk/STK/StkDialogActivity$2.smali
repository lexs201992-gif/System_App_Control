.class Lcom/android/stk/StkDialogActivity$2;
.super Ljava/lang/Object;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cancel Clicked!, mSlotId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p2}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkDialogActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StkDialogActivity"

    invoke-static {p2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 p1, 0xd

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/stk/StkDialogActivity;->-$$Nest$msendResponse(Lcom/android/stk/StkDialogActivity;IZ)V

    return-void
.end method

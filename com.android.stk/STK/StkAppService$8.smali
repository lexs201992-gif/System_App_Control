.class Lcom/android/stk/StkAppService$8;
.super Ljava/lang/Object;
.source "StkAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->launchOpenChannelDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/stk/StkAppService$8;->this$0:Lcom/android/stk/StkAppService;

    iput p2, p0, Lcom/android/stk/StkAppService$8;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "response id"

    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "choice"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/android/stk/StkAppService$8;->this$0:Lcom/android/stk/StkAppService;

    iget p0, p0, Lcom/android/stk/StkAppService$8;->val$slotId:I

    invoke-virtual {p2, p1, p0}, Lcom/android/stk/StkAppService;->sendResponse(Landroid/os/Bundle;I)V

    return-void
.end method

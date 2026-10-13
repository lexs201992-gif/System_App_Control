.class Lcom/android/stk/ToneDialog$1;
.super Ljava/lang/Object;
.source "ToneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/ToneDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/android/stk/ToneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-static {p1}, Lcom/android/stk/ToneDialog;->-$$Nest$msendStopTone(Lcom/android/stk/ToneDialog;)V

    iget-object p0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

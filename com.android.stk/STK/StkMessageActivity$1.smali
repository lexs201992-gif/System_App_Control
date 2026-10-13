.class Lcom/android/stk/StkMessageActivity$1;
.super Ljava/lang/Object;
.source "StkMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkMessageActivity$1;->this$0:Lcom/android/stk/StkMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "StkMessageActivity"

    const-string p2, "OK Clicked!"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkMessageActivity$1;->this$0:Lcom/android/stk/StkMessageActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

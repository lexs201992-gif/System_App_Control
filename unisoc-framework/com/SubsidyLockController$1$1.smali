.class Lcom/android/internal/telephony/subsidy/SubsidyLockController$1$1;
.super Ljava/lang/Object;
.source "SubsidyLockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1$1;->this$1:Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1$1;->this$1:Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;

    iget-object v0, v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$msendBroadcastForSystemUI(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    return-void
.end method

.class Lcom/android/internal/telephony/subsidy/SubsidyLockController$4;
.super Ljava/lang/Object;
.source "SubsidyLockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subsidy/SubsidyLockController;->enableLte()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$4;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$4;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    return-void
.end method

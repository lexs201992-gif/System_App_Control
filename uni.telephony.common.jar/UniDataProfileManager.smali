.class public Lcom/android/internal/telephony/data/UniDataProfileManager;
.super Lcom/android/internal/telephony/data/DataProfileManager;
.source "UniDataProfileManager.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostPayApnName:Ljava/lang/String;

.field private mPrePayApnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uni-DPM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "UniDataProfileManager created"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataProfileManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getRemoveApnForPayState()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getPayState(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPrePayApnName:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPostPayApnName:Ljava/lang/String;

    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoveApnForPayState: payState->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";removeApn->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataProfileManager;->log(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getDataProfilesForPayState$0(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDataProfilesForPayState(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPostPayApnName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataProfileManager;->mPrePayApnName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataProfileManager;->getRemoveApnForPayState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "The apn to be removed is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataProfileManager;->log(Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/UniDataProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/data/UniDataProfileManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

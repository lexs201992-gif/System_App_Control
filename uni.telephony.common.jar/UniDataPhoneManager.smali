.class Lcom/android/internal/telephony/data/UniDataPhoneManager;
.super Ljava/lang/Object;
.source "UniDataPhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UniDataPhoneManager"


# instance fields
.field private mCurrentSubId:I

.field private mMaxActivePhones:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneCallStateListener:Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;

.field private mPhoneState:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentSubId(Lcom/android/internal/telephony/data/UniDataPhoneManager;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mCurrentSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataPhoneManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCallStateListener(Lcom/android/internal/telephony/data/UniDataPhoneManager;)Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhoneCallStateListener:Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneState(Lcom/android/internal/telephony/data/UniDataPhoneManager;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhoneState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSubId(Lcom/android/internal/telephony/data/UniDataPhoneManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mCurrentSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPhoneState(Lcom/android/internal/telephony/data/UniDataPhoneManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhoneState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataPhoneManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataPhoneManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msuspendOtherPhone(Lcom/android/internal/telephony/data/UniDataPhoneManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataPhoneManager;->suspendOtherPhone(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mMaxActivePhones:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhoneState:I

    new-instance v0, Lcom/android/internal/telephony/data/UniDataPhoneManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/UniDataPhoneManager$1;-><init>(Lcom/android/internal/telephony/data/UniDataPhoneManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mCurrentSubId:I

    new-instance v1, Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;-><init>(Lcom/android/internal/telephony/data/UniDataPhoneManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhoneCallStateListener:Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;

    iget v2, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mCurrentSubId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/UniDataPhoneManager$PhoneCallStateListener;->listen(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UniDataPhoneManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private suspendOtherPhone(Z)V
    .locals 8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget v4, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mMaxActivePhones:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/UniDataPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/UniDataNetworkController;

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const-string v5, "suspendData "

    goto :goto_1

    :cond_1
    const-string v5, "resumeData "

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "for phone["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/UniDataPhoneManager;->log(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/data/UniDataNetworkController;->suspendData(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.class Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;
.super Ljava/lang/Object;
.source "PrimarySubConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PrimarySubConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrimarySubConfigInfo"
.end annotation


# static fields
.field private static final blacklist ANY_MATCHED_FIALED:I = -0x1

.field private static final blacklist MATCHED_APP_TYPE:I = 0x10

.field private static final blacklist MATCHED_PARTTERN:I = 0x100

.field private static final blacklist MATCHED_ROAMING_STATE:I = 0x4


# instance fields
.field private blacklist mAppType:Ljava/lang/String;

.field private blacklist mForceRestricted:Z

.field private blacklist mGid:Ljava/lang/String;

.field private blacklist mIsNetworkRestricted:Z

.field private blacklist mMatchedScore:I

.field private blacklist mMatchedSubInfo:Landroid/telephony/SubscriptionInfo;

.field private blacklist mNetwork:I

.field private blacklist mPattern:Ljava/lang/String;

.field private blacklist mPatternType:Ljava/lang/String;

.field private blacklist mPriority:I

.field private blacklist mRestrictedBy:Ljava/lang/String;

.field private blacklist mRestrictedNetwork:I

.field private blacklist mRoaming:Ljava/lang/String;

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mUserPrompt:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/PrimarySubConfig;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsNetworkRestricted(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mIsNetworkRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatchedScore(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetwork(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestrictedNetwork(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserPrompt(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mUserPrompt:Z

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/PrimarySubConfig;Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->copyFrom(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/PrimarySubConfig;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    const-string v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    const-string v0, "pattern_type"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPatternType:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPattern:Ljava/lang/String;

    const-string v0, "app_type"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mAppType:Ljava/lang/String;

    const-string v0, "roaming"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRoaming:Ljava/lang/String;

    const-string v0, "priority"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    const-string v0, "network"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    :cond_0
    const-string v2, "restricted_network"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    :cond_1
    const-string v3, "restricted_by"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    const-string v3, "user_prompt"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mUserPrompt:Z

    const-string v3, "gid"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mGid:Ljava/lang/String;

    const-string v3, "force_restricted"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mForceRestricted:Z

    return-void
.end method

.method private blacklist convertAppType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "APPTYPE_USIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "APPTYPE_RUIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "APPTYPE_ISIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "APPTYPE_CSIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "APPTYPE_SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x1

    nop

    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2ec8cd -> :sswitch_4
        -0x66b17168 -> :sswitch_3
        -0x66aeb72e -> :sswitch_2
        -0x66aa9855 -> :sswitch_1
        -0x66a942ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist copyFrom(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPatternType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPatternType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPattern:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mAppType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mAppType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRoaming:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRoaming:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    iget v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    iget v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mUserPrompt:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mUserPrompt:Z

    iget-object v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mGid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mGid:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mForceRestricted:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mForceRestricted:Z

    return-void
.end method

.method private blacklist downgradeNetworkCapability(I)Z
    .locals 6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030031

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PrimarySubConfig;->getInstance()Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$mgetRestrictedPhoneId(Lcom/android/internal/telephony/PrimarySubConfig;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downgradeNetworkCapability restrictedPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mRestrictedBy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$mlogd(Lcom/android/internal/telephony/PrimarySubConfig;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PrimarySubConfig;->getInstance()Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$msetNetworkTypeRestrictEnable(Lcom/android/internal/telephony/PrimarySubConfig;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_0
    nop

    return v2

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    const-string v4, "occur exception"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$mlogd(Lcom/android/internal/telephony/PrimarySubConfig;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method blacklist match(Landroid/telephony/SubscriptionInfo;)Z
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPattern:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPattern:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v5, "mccmnc"

    iget-object v6, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPatternType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x100

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-static {v5}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/PrimarySubConfig;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mGid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mGid:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-static {v8}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/PrimarySubConfig;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    or-int/2addr v9, v6

    iput v9, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    :cond_0
    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    or-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    or-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    :cond_4
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_5

    iput v4, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    return v0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mAppType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-static {v3}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/PrimarySubConfig;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mAppType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->convertAppType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->isApplicationOnUicc(I)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_7

    iput v4, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    return v0

    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRoaming:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-static {v3}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/PrimarySubConfig;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    goto :goto_2

    :cond_8
    move v5, v0

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRoaming:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    :cond_9
    iget v6, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_a

    iput v4, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    return v0

    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    if-lez v1, :cond_b

    iput-object p1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedSubInfo:Landroid/telephony/SubscriptionInfo;

    :cond_b
    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimarySubConfigInfo:  tag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " patternType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPatternType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parttern= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " priority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " network= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restrictedNetwork= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restrictedBy= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userPrompt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mUserPrompt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isNetworkRestricted= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mIsNetworkRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " roaming= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRoaming:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mGid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forceRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mForceRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchedScore= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sub= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedSubInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateRestrictedNetwork()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mIsNetworkRestricted:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->this$0:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-static {v0}, Lcom/android/internal/telephony/PrimarySubConfig;->-$$Nest$fgetmIccConfigs(Lcom/android/internal/telephony/PrimarySubConfig;)[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    if-eq v4, p0, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mRestrictedBy:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mForceRestricted:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mMatchedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->downgradeNetworkCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mIsNetworkRestricted:Z

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->mIsNetworkRestricted:Z

    return-void
.end method

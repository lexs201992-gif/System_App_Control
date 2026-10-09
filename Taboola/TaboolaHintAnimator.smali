.class public final Lcom/android/keyguard/taboola/TaboolaHintAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# instance fields
.field public final DEBUG:Z

.field public DontShowAgainSwitch:Z

.field public HintSwith:Z

.field public final OOBEUnacceptReactiveCheck:[J

.field public OOBEUnacceptReactiveHintStartTime:J

.field public OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

.field public final SetupWizardCardCheck:[J

.field public SetupWizardCardHintStartTime:J

.field public SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

.field public ShouldOnboarding:Z

.field public UnlockORSleepCarousel:Z

.field public UnlockORSleepRead:Z

.field public final carouselCheck:[J

.field public carouselHintStartTime:J

.field public carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

.field public isHinted:I

.field public lastCarouselTime:J

.field public lastOOBEUnacceptReactiveTime:J

.field public lastReactiveTime:J

.field public lastReadTime:J

.field public lastSetupWizardCardTime:J

.field public final mContext:Landroid/content/Context;

.field public final mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

.field public final reactiveCheck:[J

.field public reactiveHintStartTime:J

.field public reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

.field public final readCheck:[J

.field public readHintStartTime:J

.field public readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

.field public final receiver:Lcom/android/keyguard/taboola/TaboolaHintAnimator$TaboolaPackageReceiver;

.field public started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/taboola/TaboolaObserver;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveCheck:[J

    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveCheck:[J

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    iput-object v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardCheck:[J

    new-array v2, v0, [J

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readCheck:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselCheck:[J

    iput v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    iput-boolean v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->UnlockORSleepCarousel:Z

    iput-boolean v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->UnlockORSleepRead:Z

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "hint_Swith_state"

    invoke-virtual {p2, p1, v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    const-string p1, "DontShowAgain_Switch_state"

    invoke-virtual {p2, p1, v3}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    const-string/jumbo p1, "should_Onboarding_state"

    invoke-virtual {p2, p1, v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->ShouldOnboarding:Z

    new-instance p1, Lcom/android/keyguard/taboola/TaboolaHintAnimator$TaboolaPackageReceiver;

    invoke-direct {p1, p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$TaboolaPackageReceiver;-><init>(Lcom/android/keyguard/taboola/TaboolaHintAnimator;)V

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->receiver:Lcom/android/keyguard/taboola/TaboolaHintAnimator$TaboolaPackageReceiver;

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->init()V

    return-void

    nop

    :array_0
    .array-data 8
        0x2d
        0x14
    .end array-data

    :array_1
    .array-data 8
        0x3c
        0x1e
        0xa
    .end array-data

    :array_2
    .array-data 8
        0x3c
        0x1e
        0xa
    .end array-data

    :array_3
    .array-data 8
        0x3c
        0x1e
        0xa
    .end array-data
.end method

.method public static calculateDayGap(JJ)J
    .locals 0

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toDays()J

    move-result-wide p0

    return-wide p0
.end method

.method public static dateDebug(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getTaboolaResources()Landroid/content/res/Resources;
    .locals 5

    const-string v0, "com.taboola.ody"

    const-string v1, "TaboolaHintAnimator"

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "wrong name or not install"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    if-nez v3, :cond_1

    const-string/jumbo v0, "taboola not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to get resouces:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getValue(Ljava/lang/String;[J)[J
    .locals 3

    const-string v0, "array"

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getTaboolaResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "TaboolaHintAnimator"

    if-nez p0, :cond_0

    const-string p0, "no res"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    :try_start_0
    const-string v2, "com.taboola.ody"

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "not find resouces:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "reason:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public final init()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->started:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readHintStartTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselHintStartTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveHintStartTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveHintStartTime:J

    iput-wide v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardHintStartTime:J

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->updateTaboolaRules()V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->receiver:Lcom/android/keyguard/taboola/TaboolaHintAnimator$TaboolaPackageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final resetCarouselBarrier(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setCarouselTime()V

    const-string p0, "TaboolaHintAnimator"

    const-string p1, "reset carousel barrier"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final resetReadBarrier(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReadTime()V

    const-string p0, "TaboolaHintAnimator"

    const-string p1, "reset read barrier"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final runReactiveHint(J)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canStartReactiveHint(now) : HintSwith :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DontShowAgainSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaboolaHintAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reactive start check isHinted: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastReactiveTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-static {v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iget-boolean v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2

    iget-wide v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v6, v7}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v6

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "reactive hint gap between last reactive days: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v0, v6, v7}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->judge(J)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    if-ne v0, v7, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    if-nez v0, :cond_3

    iput-wide p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveHintStartTime:J

    iput v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const-string/jumbo p0, "start reactive hint"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    iget v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-ne v0, v6, :cond_6

    iget-wide v8, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveHintStartTime:J

    cmp-long v0, v8, v3

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1, p2, v8, v9}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v3

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stop reactive hint gap between last start hours: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-ltz v0, :cond_6

    move v0, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v5

    :goto_3
    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    if-ne v0, v7, :cond_8

    :cond_7
    iget-wide v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-static {p1, p2, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->crossLine(J)V

    iput v5, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const-string/jumbo p0, "stop reactive hint"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method

.method public final setCarouselTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    iget-object v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "taboola_last_carousel_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "taboola_carousel_check_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set carousel time. last carousel time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    invoke-static {v1, v2}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " carousel state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaboolaHintAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setDontShowAgainSwitch(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    iget-object p1, p1, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string v1, "DontShowAgain_Switch_state"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "set DontShowAgainSwitch"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    const-string v0, "TaboolaHintAnimator"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final setOOBEUnacceptReactiveTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    iget-object v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "taboola_last_OOBEUnaccept_reactive_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "taboola_OOBEUnaccept_reactive_check_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set OOBEUnacceptReactive time. last reactive time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    invoke-static {v1, v2}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reactive state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaboolaHintAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setReactiveTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    iget-object v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "taboola_last_reactive_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "taboola_reactive_check_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set reactive time. last reactive time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-static {v1, v2}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reactive state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaboolaHintAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setReadTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    iget-object v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "taboola_last_read_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "taboola_read_check_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set read time. last read time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    invoke-static {v1, v2}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " read state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaboolaHintAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setSetupWizardCardTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    iget-object v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "taboola_last_SetupWizardCard_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "taboola_SetupWizardCard_check_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set SetupWizardCardTime time. last reactive time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    invoke-static {v1, v2}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reactive state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaboolaHintAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setShouldOnboarding()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->ShouldOnboarding:Z

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "should_Onboarding_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p0, "set ShouldOnboardingfalse"

    const-string v0, "TaboolaHintAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateTaboolaRules()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readCheck:[J

    const-string/jumbo v2, "taboola_re_engagement_days"

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;-><init>([J)V

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->updateRules([J)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveCheck:[J

    const-string/jumbo v3, "taboola_re_onboarding_days"

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;-><init>([J)V

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->updateRules([J)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselCheck:[J

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;-><init>([J)V

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->updateRules([J)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveCheck:[J

    const-string/jumbo v2, "taboola_first_onboarding_days"

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;-><init>([J)V

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getValue(Ljava/lang/String;[J)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->updateRules([J)V

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardCheck:[J

    invoke-direct {v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;-><init>([J)V

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    :cond_4
    const-string/jumbo v0, "taboola_support_nudge"

    const-string v1, "bool"

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->getTaboolaResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "TaboolaHintAnimator"

    if-nez v2, :cond_5

    const-string v0, "no res"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :try_start_0
    const-string v4, "com.taboola.ody"

    invoke-virtual {v2, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not find resouces:taboola_support_nudgereason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    const-string v0, "init make Rules"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reactiveRule:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "carouselRule:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OOBEUnacceptReactiveRule:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupWizardCardRule:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HintSwith:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    invoke-static {v0, p0, v3}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

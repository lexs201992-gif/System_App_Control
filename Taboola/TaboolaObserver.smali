.class public final Lcom/android/keyguard/taboola/TaboolaObserver;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# instance fields
.field public final Active:Ljava/util/ArrayList;

.field public final DEBUG:Z

.field public final FirstOnboarding:I

.field public final InActive:Ljava/util/ArrayList;

.field public final ReHintStatus:Ljava/util/ArrayList;

.field public final ShowSetupWizard:I

.field public final TurnOffAllTaboola:I

.field public final TurnOffMainTaboola:I

.field public final TurnOffMainTaboolaAndCard:I

.field public final TurnOnTaboola:I

.field public final TurnOnTaboolaOnlyCard:I

.field public final cr:Landroid/content/ContentResolver;

.field public killSwicthObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

.field public final killSwitchURI:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mTaboolaViewController:Lcom/android/keyguard/taboola/TaboolaViewController;

.field public mView:Lcom/android/keyguard/taboola/TaboolaView;

.field public mainSwicthObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

.field public final mainSwitchURI:Landroid/net/Uri;

.field public noReactObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

.field public final noReactURI:Landroid/net/Uri;

.field public showLockObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

.field public final showLockURI:Landroid/net/Uri;

.field public useMobileObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

.field public final useMobileURI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "retgb"

    const-string v1, "3gb"

    const-string v2, "o2gb"

    const-string v3, "reteu"

    const-string v4, "oraeu"

    const-string v5, "pluspl"

    const-string/jumbo v6, "timit"

    const-string/jumbo v7, "teleu"

    const-string/jumbo v8, "vfeu"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const-string v1, "openmx"

    const-string v2, "attmx"

    const-string v3, "altmx"

    const-string v4, "opencl"

    const-string v5, "openpe"

    const-string v6, "avaco"

    const-string v7, "retla"

    const-string/jumbo v8, "tigca"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "retapac"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.taboola.ody.data.provider/keyguard_motorola_other_pictorial_available_switch_uri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->killSwitchURI:Landroid/net/Uri;

    const-string v0, "content://com.taboola.ody.data.provider/keyguard_pictorial_main_switch_uri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->mainSwitchURI:Landroid/net/Uri;

    const-string v0, "content://com.taboola.ody.data.provider/keyguard_pictorial_mobile_data_switch_uri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->useMobileURI:Landroid/net/Uri;

    const-string v0, "content://com.taboola.ody.data.provider/keyguard_motorola_pictorial_auto_play_uri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->showLockURI:Landroid/net/Uri;

    const-string v0, "content://com.taboola.ody.data.provider/keyguard_motorola_other_pictorial_activate_not_show_uri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->noReactURI:Landroid/net/Uri;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->DEBUG:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOffAllTaboola:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOffMainTaboola:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOffMainTaboolaAndCard:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput v2, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOnTaboola:I

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput v2, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOnTaboolaOnlyCard:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->ShowSetupWizard:I

    const/16 v5, 0x8

    iput v5, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->FirstOnboarding:I

    new-instance v5, Ljava/util/ArrayList;

    filled-new-array {v3, v4}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->ReHintStatus:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->Active:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, v4}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->InActive:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final ObserverFactory(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/keyguard/taboola/TaboolaObserver$1;
    .locals 3

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/keyguard/taboola/TaboolaObserver$1;-><init>(Lcom/android/keyguard/taboola/TaboolaObserver;Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-object v0
.end method

.method public final get(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-boolean p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "initValue: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " now: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " default:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TaboolaObserver"

    invoke-static {p0, p3, v2}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public final isTaboolaCarrier()Z
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "ro.carrier"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.sub_channel_id"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.taboola.ody"

    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    move v5, v7

    :goto_0
    iget-boolean v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "carrier = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--channel_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaboolaObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v5, :cond_2

    return v7

    :cond_2
    const-string v0, "retgb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "tesco"

    const-string v5, "o2gb"

    const-string v8, "3gb"

    const-string/jumbo v9, "vfeu"

    if-eqz v0, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v7

    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "reteu"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "playpl"

    const-string v13, "pluspl"

    const-string v14, "oraeu"

    if-eqz v11, :cond_6

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "dteu"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    move v9, v7

    :goto_2
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    move v11, v7

    :goto_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v14, "timit"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v15, "yoigo"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string/jumbo v6, "teleu"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    move v6, v7

    :goto_4
    const-string v7, "retru"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 p0, 0x1

    goto :goto_5

    :cond_9
    const/16 p0, 0x0

    :goto_5
    const-string v7, "retmea"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-nez v0, :cond_c

    if-nez v8, :cond_c

    if-nez v5, :cond_c

    if-nez v1, :cond_c

    if-nez v10, :cond_c

    if-nez v9, :cond_c

    if-nez v11, :cond_c

    if-nez v13, :cond_c

    if-nez v12, :cond_c

    if-nez v14, :cond_c

    if-nez v15, :cond_c

    if-nez v6, :cond_c

    if-nez p0, :cond_c

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_1d

    const-string v0, "openmx"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    const-string v1, "attmx"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "altmx"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "retar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    const-string v7, "opencl"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "entcl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string/jumbo v7, "womcl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    const/4 v7, 0x1

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    :goto_b
    const-string v8, "openpe"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "niipe"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_11
    const/4 v8, 0x1

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    :goto_c
    const-string v9, "openla"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "womco"

    const-string/jumbo v11, "tigco"

    if-eqz v9, :cond_14

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    const/4 v9, 0x1

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    :goto_d
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "avaco"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_15
    const/4 v10, 0x1

    goto :goto_e

    :cond_16
    const/4 v10, 0x0

    :goto_e
    const-string v11, "openpub"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v13, "tigca"

    if-eqz v11, :cond_18

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_17
    const/4 v11, 0x1

    goto :goto_f

    :cond_18
    const/4 v11, 0x0

    :goto_f
    const-string v14, "retla"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_10

    :cond_19
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    if-nez v5, :cond_1b

    if-nez v6, :cond_1b

    if-nez v7, :cond_1b

    if-nez v8, :cond_1b

    if-nez v9, :cond_1b

    if-nez v12, :cond_1b

    if-nez v10, :cond_1b

    if-nez v11, :cond_1b

    if-nez v2, :cond_1b

    if-eqz v3, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1d
    :goto_13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final set(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final updateTaboolaState()I
    .locals 14

    const-string v0, "motorola_customize_other_pictorial_available"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v0

    const-string v1, "motorola_customize_pictorial_apply"

    invoke-virtual {p0, v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mobile_data_pictorial_support"

    invoke-virtual {p0, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v2

    const-string v3, "motorola_customize_pictorial_auto_play"

    invoke-virtual {p0, v3}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pictorial_activate_not_show"

    invoke-virtual {p0, v4}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v4

    const-string v5, "motorola_lockscreen_integration_type"

    invoke-virtual {p0, v5}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v5

    const-string v6, "need_show_taboola_setup_wizard"

    invoke-virtual {p0, v6}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v6

    const-string v7, "FisrstOnboarded_state"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v9, "should_Onboarding_state"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-boolean v11, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "setupWizardValue = "

    const-string v12, " killSwitchValue = "

    const-string v13, " mainSwitchValue = "

    invoke-static {v11, v6, v12, v0, v13}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " useMobileValue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " showLockValue = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " noReactValue = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ODMSupportValue = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TaboolaObserver"

    invoke-static {v11, v5, v2}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v2, v5, :cond_1

    move v8, v10

    :cond_1
    iget v2, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOffAllTaboola:I

    if-nez v8, :cond_2

    return v2

    :cond_2
    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez v6, :cond_4

    if-ne v1, v10, :cond_4

    if-nez v7, :cond_4

    iget p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->ShowSetupWizard:I

    return p0

    :cond_4
    if-nez v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v9, :cond_5

    iget p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->FirstOnboarding:I

    return p0

    :cond_5
    if-ne v0, v10, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    iget p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOffMainTaboola:I

    return p0

    :cond_6
    if-ne v0, v10, :cond_7

    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-ne v4, v10, :cond_7

    iget p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOffMainTaboolaAndCard:I

    return p0

    :cond_7
    if-ne v0, v10, :cond_8

    if-ne v1, v10, :cond_8

    if-ne v3, v10, :cond_8

    iget p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOnTaboola:I

    return p0

    :cond_8
    if-ne v0, v10, :cond_9

    if-ne v1, v10, :cond_9

    if-nez v3, :cond_9

    iget p0, p0, Lcom/android/keyguard/taboola/TaboolaObserver;->TurnOnTaboolaOnlyCard:I

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

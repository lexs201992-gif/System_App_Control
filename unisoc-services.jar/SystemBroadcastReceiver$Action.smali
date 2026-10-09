.class public final enum Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;
.super Ljava/lang/Enum;
.source "SystemBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_BATTERY_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_BOOT_COMPLETED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_CONFIGURATION_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_LOCALE_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_MANAGED_PROFILE_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_PACKAGE_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_SCREEN_OFF:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_SCREEN_ON:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_SHUTDOWN:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_SYSTEM_IDLE_STATE:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

.field public static final enum ACTION_USER_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;
    .locals 11

    sget-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_LOCALE_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v1, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_CONFIGURATION_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v2, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SHUTDOWN:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v3, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SCREEN_ON:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v4, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SCREEN_OFF:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v5, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_BOOT_COMPLETED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v6, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_MANAGED_PROFILE_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v7, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_USER_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v8, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SYSTEM_IDLE_STATE:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v9, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_PACKAGE_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    sget-object v10, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_BATTERY_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    filled-new-array/range {v0 .. v10}, [Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    const-string v3, "ACTION_LOCALE_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_LOCALE_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x1

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    const-string v3, "ACTION_CONFIGURATION_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_CONFIGURATION_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x2

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    const-string v3, "ACTION_SHUTDOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SHUTDOWN:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x3

    const-string v2, "android.intent.action.SCREEN_ON"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SCREEN_ON:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x4

    const-string v2, "android.intent.action.SCREEN_OFF"

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SCREEN_OFF:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x5

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const-string v3, "ACTION_BOOT_COMPLETED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_BOOT_COMPLETED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x6

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    const-string v3, "ACTION_MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_MANAGED_PROFILE_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/4 v1, 0x7

    const-string v2, "android.intent.action.USER_REMOVED"

    const-string v3, "ACTION_USER_REMOVED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_USER_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/16 v1, 0x8

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    const-string v3, "ACTION_SYSTEM_IDLE_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_SYSTEM_IDLE_STATE:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/16 v1, 0x9

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "ACTION_PACKAGE_REMOVED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_PACKAGE_REMOVED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    const/16 v1, 0xa

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    const-string v3, "ACTION_BATTERY_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->ACTION_BATTERY_CHANGED:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->$values()[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->$VALUES:[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;
    .locals 1

    const-class v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    return-object v0
.end method

.method public static values()[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;
    .locals 1

    sget-object v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->$VALUES:[Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    invoke-virtual {v0}, [Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver$Action;->value:Ljava/lang/String;

    return-object v0
.end method

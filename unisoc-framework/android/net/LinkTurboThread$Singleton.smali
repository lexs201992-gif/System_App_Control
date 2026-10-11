.class Landroid/net/LinkTurboThread$Singleton;
.super Ljava/lang/Object;
.source "LinkTurboThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkTurboThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/net/LinkTurboThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/net/LinkTurboThread;
    .locals 1

    sget-object v0, Landroid/net/LinkTurboThread$Singleton;->INSTANCE:Landroid/net/LinkTurboThread;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/net/LinkTurboThread;->-$$Nest$smcreateInstance()Landroid/net/LinkTurboThread;

    move-result-object v0

    sput-object v0, Landroid/net/LinkTurboThread$Singleton;->INSTANCE:Landroid/net/LinkTurboThread;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

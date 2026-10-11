.class Landroid/mtp/UnisocMtpDatabaseImpl$InstanceUnisocMtpDatabaseImpl;
.super Ljava/lang/Object;
.source "UnisocMtpDatabaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/UnisocMtpDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceUnisocMtpDatabaseImpl"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/mtp/UnisocMtpDatabaseImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/mtp/UnisocMtpDatabaseImpl;
    .locals 1

    sget-object v0, Landroid/mtp/UnisocMtpDatabaseImpl$InstanceUnisocMtpDatabaseImpl;->INSTANCE:Landroid/mtp/UnisocMtpDatabaseImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/UnisocMtpDatabaseImpl;

    invoke-direct {v0}, Landroid/mtp/UnisocMtpDatabaseImpl;-><init>()V

    sput-object v0, Landroid/mtp/UnisocMtpDatabaseImpl$InstanceUnisocMtpDatabaseImpl;->INSTANCE:Landroid/mtp/UnisocMtpDatabaseImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

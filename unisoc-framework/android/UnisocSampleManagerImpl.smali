.class public Landroid/util/UnisocSampleManagerImpl;
.super Landroid/util/UnisocSampleManager;
.source "UnisocSampleManagerImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/UnisocSampleManager;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist bar()I
    .locals 2

    const-string v0, "UnisocFooBar"

    const-string v1, "Override bar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist foo()V
    .locals 2

    const-string v0, "UnisocFooBar"

    const-string v1, "Override foo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

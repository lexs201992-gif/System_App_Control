.class Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;
.super Ljava/lang/Object;
.source "IkeLocalRequestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalRequestFactory"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist procedureTypeToPriority(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown procedureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeLocalRequestScheduler"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7fffffff

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x191 -> :sswitch_2
        0x192 -> :sswitch_0
        0x193 -> :sswitch_2
        0x194 -> :sswitch_2
        0x195 -> :sswitch_2
        0x196 -> :sswitch_1
        0x197 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method blacklist getChildLocalRequest(II)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    .locals 7

    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->procedureTypeToPriority(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;-><init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    return-object v0
.end method

.method blacklist getChildLocalRequest(ILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    .locals 7

    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    sget v2, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->procedureTypeToPriority(I)I

    move-result v5

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;-><init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    return-object v0
.end method

.method blacklist getIkeLocalRequest(I)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    .locals 2

    sget v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(IJ)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v0

    return-object v0
.end method

.method blacklist getIkeLocalRequest(IJ)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    .locals 6

    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->procedureTypeToPriority(I)I

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;-><init>(IJILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    return-object v0
.end method

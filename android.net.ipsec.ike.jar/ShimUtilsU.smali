.class public Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsU;
.super Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;
.source "ShimUtilsU.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist shouldSkipIfSameNetwork(Z)Z
    .locals 0

    return p1
.end method

.method public blacklist startKeepalive(Landroid/net/SocketKeepalive;IILandroid/net/Network;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/net/SocketKeepalive;->start(IILandroid/net/Network;)V

    return-void
.end method

.method public blacklist supportsSameSocketKernelMigration(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnel_migration"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

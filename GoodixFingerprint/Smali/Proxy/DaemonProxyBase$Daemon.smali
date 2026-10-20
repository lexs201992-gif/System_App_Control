.class abstract Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
.super Ljava/lang/Object;
.source "DaemonProxyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Daemon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxyBase;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;->this$0:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getService()Ljava/lang/Object;
.end method

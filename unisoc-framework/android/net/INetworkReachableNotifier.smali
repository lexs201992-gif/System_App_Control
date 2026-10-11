.class public interface abstract Landroid/net/INetworkReachableNotifier;
.super Ljava/lang/Object;
.source "INetworkReachableNotifier.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkReachableNotifier$Stub;,
        Landroid/net/INetworkReachableNotifier$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkReachableNotifier"


# virtual methods
.method public abstract blacklist onNotifyNetworkReachable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

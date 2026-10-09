.class public interface abstract Lcom/inmobi/installer/IPackageInstaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/installer/IPackageInstaller$Stub;,
        Lcom/inmobi/installer/IPackageInstaller$Default;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lcom/inmobi/installer/MetaData;Ljava/lang/String;)V
.end method

.method public abstract getState(Lcom/inmobi/installer/MetaData;Ljava/lang/String;I)I
.end method

.method public abstract installAllPackages(Lcom/inmobi/installer/MetaData;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/installer/MetaData;",
            "Ljava/util/List<",
            "Lcom/inmobi/installer/PackageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract installPackage(Lcom/inmobi/installer/MetaData;Lcom/inmobi/installer/PackageInfo;)V
.end method

.method public abstract registerWithInstaller(Lcom/inmobi/installer/MetaData;Lcom/inmobi/installer/CallbackMessenger;)V
.end method

.method public abstract showPackageInfo(Lcom/inmobi/installer/PackageInfo;)V
.end method

.method public abstract unregisterCallback(Lcom/inmobi/installer/MetaData;Lcom/inmobi/installer/CallbackMessenger;)V
.end method

.method public abstract updateAllPackages(Lcom/inmobi/installer/MetaData;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/installer/MetaData;",
            "Ljava/util/List<",
            "Lcom/inmobi/installer/PackageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePackage(Lcom/inmobi/installer/MetaData;Lcom/inmobi/installer/PackageInfo;)V
.end method

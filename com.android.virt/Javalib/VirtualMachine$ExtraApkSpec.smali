.class Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraApkSpec"
.end annotation


# instance fields
.field public final blacklist apk:Ljava/io/File;

.field public final blacklist idsig:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->apk:Ljava/io/File;

    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    return-void
.end method

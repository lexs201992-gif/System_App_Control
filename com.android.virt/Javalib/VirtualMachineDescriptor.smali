.class public final Landroid/system/virtualmachine/VirtualMachineDescriptor;
.super Ljava/lang/Object;
.source "VirtualMachineDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualmachine/VirtualMachineDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile blacklist mClosed:Z

.field private final blacklist mConfigFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mInstanceImgFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/system/virtualmachine/VirtualMachineDescriptor$1;

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualMachineDescriptor$1;-><init>()V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/system/virtualmachine/VirtualMachineDescriptor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private blacklist checkNotClosed()V
    .locals 2

    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Descriptor has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    :goto_2
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method blacklist getConfigFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method blacklist getEncryptedStoreFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method blacklist getInstanceImgFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

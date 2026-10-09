.class public final Lcom/inmobi/installer/MetaData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/installer/MetaData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/inmobi/installer/MetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private applicationPackageName:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private createShortcut:Z

.field private final isResumable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/installer/MetaData$1;

    invoke-direct {v0}, Lcom/inmobi/installer/MetaData$1;-><init>()V

    sput-object v0, Lcom/inmobi/installer/MetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/installer/MetaData;->clientId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/installer/MetaData;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/installer/MetaData;->applicationPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/installer/MetaData;->applicationName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/installer/MetaData;->createShortcut:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/inmobi/installer/MetaData;->isResumable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/inmobi/installer/MetaData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/installer/MetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/installer/MetaData;->clientId:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/installer/MetaData;->clientSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/installer/MetaData;->applicationPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/installer/MetaData;->applicationName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/inmobi/installer/MetaData;->createShortcut:Z

    iput-boolean p6, p0, Lcom/inmobi/installer/MetaData;->isResumable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/inmobi/installer/MetaData$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/inmobi/installer/MetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/MetaData;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/MetaData;->applicationPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/MetaData;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/MetaData;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public isCreateShortcut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/installer/MetaData;->createShortcut:Z

    return v0
.end method

.method public isResumable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/installer/MetaData;->isResumable:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/installer/MetaData;->applicationPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/installer/core/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/installer/MetaData;->applicationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/installer/core/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setApplicationPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/installer/MetaData;->applicationPackageName:Ljava/lang/String;

    return-void
.end method

.method public setCreateShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/installer/MetaData;->createShortcut:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/inmobi/installer/MetaData;->clientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/inmobi/installer/MetaData;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/inmobi/installer/MetaData;->applicationPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/inmobi/installer/MetaData;->applicationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/inmobi/installer/MetaData;->createShortcut:Z

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/inmobi/installer/MetaData;->isResumable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

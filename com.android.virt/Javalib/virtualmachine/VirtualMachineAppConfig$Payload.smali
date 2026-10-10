.class public final Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;
.super Ljava/lang/Object;
.source "VirtualMachineAppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/VirtualMachineAppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist configPath:I = 0x0

.field public static final blacklist payloadConfig:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    iput-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    iput-object p2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    iput-object p2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "payloadConfig"

    return-object v0

    :pswitch_1
    const-string v0, "configPath"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist configPath(Ljava/lang/String;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;
    .locals 2

    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public static blacklist payloadConfig(Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;
    .locals 2

    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getConfigPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_assertTag(I)V

    iget-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_assertTag(I)V

    iget-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v1, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setConfigPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setPayloadConfig(Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getConfigPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

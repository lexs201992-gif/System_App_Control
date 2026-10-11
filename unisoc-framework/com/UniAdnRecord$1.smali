.class Lcom/android/internal/telephony/phonebook/UniAdnRecord$1;
.super Ljava/lang/Object;
.source "UniAdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonebook/UniAdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/phonebook/UniAdnRecord;
    .locals 23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-lez v15, :cond_0

    new-array v5, v15, [Ljava/lang/String;

    move-object/from16 v14, p1

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    move-object/from16 v20, v5

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    const/4 v5, 0x0

    move-object/from16 v20, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    new-instance v21, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-object/from16 v5, v21

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move/from16 v22, v15

    move-object v15, v4

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/phonebook/UniAdnRecord;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord$1;->newArray(I)[Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-result-object p1

    return-object p1
.end method

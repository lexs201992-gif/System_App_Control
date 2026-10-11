.class public abstract Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IUniIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAasInEfForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_getAdnRecordsInEfForSubscriber:I = 0x1

.field static final blacklist TRANSACTION_getAdnRecordsSizeForSubscriber:I = 0x2

.field static final blacklist TRANSACTION_getAnrNum:I = 0xc

.field static final blacklist TRANSACTION_getAnrRecordsSize:I = 0xb

.field static final blacklist TRANSACTION_getAvalibleAnrCount:I = 0x11

.field static final blacklist TRANSACTION_getAvalibleEmailCount:I = 0x10

.field static final blacklist TRANSACTION_getEmailMaxLen:I = 0x12

.field static final blacklist TRANSACTION_getEmailNum:I = 0xd

.field static final blacklist TRANSACTION_getEmailRecordsSize:I = 0xa

.field static final blacklist TRANSACTION_getGasInEfForSubscriber:I = 0x8

.field static final blacklist TRANSACTION_getGroupNum:I = 0xe

.field static final blacklist TRANSACTION_getInsertIndex:I = 0xf

.field static final blacklist TRANSACTION_getPhoneNumMaxLen:I = 0x13

.field static final blacklist TRANSACTION_getSneLength:I = 0x1a

.field static final blacklist TRANSACTION_getSneSize:I = 0x19

.field static final blacklist TRANSACTION_getUsimGroupNameMaxLen:I = 0x14

.field static final blacklist TRANSACTION_getUsimGroupSize:I = 0x15

.field static final blacklist TRANSACTION_isApplicationOnIcc:I = 0x9

.field static final blacklist TRANSACTION_updateAdnRecordsInEfByIndexForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_updateAdnRecordsInEfBySearchForSubscriber:I = 0x3

.field static final blacklist TRANSACTION_updateAdnRecordsInEfBySearchForSubscriberEx:I = 0x4

.field static final blacklist TRANSACTION_updateUsimAasByIndexForSubscriber:I = 0x18

.field static final blacklist TRANSACTION_updateUsimAasBySearchForSubscriber:I = 0x17

.field static final blacklist TRANSACTION_updateUsimGroupByIndexForSubscriber:I = 0x7

.field static final blacklist TRANSACTION_updateUsimGroupBySearchForSubscriber:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.phonebook.IUniIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telephony.phonebook.IUniIccPhoneBook"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p3

    const-string v12, "com.android.internal.telephony.phonebook.IUniIccPhoneBook"

    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    move-object/from16 v10, p2

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    :goto_0
    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    move-object v8, v13

    move-object v2, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getSneLength(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getSneSize(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateUsimAasByIndexForSubscriber(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateUsimAasBySearchForSubscriber(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAasInEfForSubscriber(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getUsimGroupSize(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getUsimGroupNameMaxLen(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getPhoneNumMaxLen(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getEmailMaxLen(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[II)[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[II)[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getInsertIndex(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getGroupNum(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getEmailNum(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAnrNum(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAnrRecordsSize(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getEmailRecordsSize(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->isApplicationOnIcc(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getGasInEfForSubscriber(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateUsimGroupByIndexForSubscriber(ILjava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateUsimGroupBySearchForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v11

    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v28, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v8, v13

    move-object v2, v15

    const/4 v4, 0x1

    goto/16 :goto_1

    :pswitch_17
    move-object/from16 v28, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v1, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move/from16 v2, v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v4, v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v5, v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v6, v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v7, v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v8, v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v9, v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v10, v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v11, v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v12, v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object v0, v13

    move-object/from16 v13, v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v14, v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v15, v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v16, v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v17, v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v17}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchForSubscriberEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, p0

    const/4 v4, 0x1

    goto/16 :goto_1

    :pswitch_18
    move-object/from16 v28, v12

    move-object v8, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v2, p0

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_19
    move-object/from16 v28, v12

    move-object v8, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_1a
    move-object/from16 v28, v12

    move-object v8, v13

    move-object v2, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    nop

    :goto_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

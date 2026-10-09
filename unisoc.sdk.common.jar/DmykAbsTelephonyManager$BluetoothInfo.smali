.class public Lcom/dmyk/android/telephony/DmykAbsTelephonyManager$BluetoothInfo;
.super Ljava/lang/Object;
.source "DmykAbsTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmyk/android/telephony/DmykAbsTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothInfo"
.end annotation


# instance fields
.field public deviceMAC:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/dmyk/android/telephony/DmykAbsTelephonyManager;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dmyk/android/telephony/DmykAbsTelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dmyk/android/telephony/DmykAbsTelephonyManager$BluetoothInfo;->this$0:Lcom/dmyk/android/telephony/DmykAbsTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

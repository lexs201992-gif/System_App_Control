.class public Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;
.super Ljava/lang/Object;
.source "UnisocGpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UnisocGpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsNiNotification"
.end annotation


# instance fields
.field public blacklist defaultResponse:I

.field public blacklist needNotify:Z

.field public blacklist needVerify:Z

.field public blacklist niType:I

.field public blacklist notificationId:I

.field public blacklist privacyOverride:Z

.field public greylist requestorId:Ljava/lang/String;

.field public greylist requestorIdEncoding:I

.field public greylist text:Ljava/lang/String;

.field public greylist textEncoding:I

.field public blacklist timeout:I


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

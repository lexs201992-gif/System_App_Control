.class public Lcom/unipnp/server/action/ProcessSched$BoostAppInfo;
.super Ljava/lang/Object;
.source "ProcessSched.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/action/ProcessSched;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoostAppInfo"
.end annotation


# instance fields
.field public boost:Z

.field public id:I

.field public isPid:Z

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

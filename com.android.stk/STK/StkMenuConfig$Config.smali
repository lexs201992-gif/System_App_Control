.class Lcom/android/stk/StkMenuConfig$Config;
.super Ljava/lang/Object;
.source "StkMenuConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# instance fields
.field public icon:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/stk/StkMenuConfig$Config;->mcc:I

    iput p2, p0, Lcom/android/stk/StkMenuConfig$Config;->mnc:I

    iput-object p3, p0, Lcom/android/stk/StkMenuConfig$Config;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/stk/StkMenuConfig$Config;->icon:Ljava/lang/String;

    return-void
.end method

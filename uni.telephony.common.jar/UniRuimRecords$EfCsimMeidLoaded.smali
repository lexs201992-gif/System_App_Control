.class Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;
.super Ljava/lang/Object;
.source "UniRuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UniRuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMeidLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UniRuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/UniRuimRecords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;->this$0:Lcom/android/internal/telephony/uicc/UniRuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/UniRuimRecords;Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;-><init>(Lcom/android/internal/telephony/uicc/UniRuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    const-string v0, "EF_ESNME"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;->this$0:Lcom/android/internal/telephony/uicc/UniRuimRecords;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->-$$Nest$monGetCSimMeidDone(Lcom/android/internal/telephony/uicc/UniRuimRecords;Landroid/os/AsyncResult;)V

    return-void
.end method

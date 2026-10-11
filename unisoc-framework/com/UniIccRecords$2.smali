.class Lcom/android/internal/telephony/uicc/UniIccRecords$2;
.super Lcom/android/unisoc/telephony/RadioInteractorListener;
.source "UniIccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UniIccRecords;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UniIccRecords;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$2;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/RadioInteractorListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist onSimRefreshEvent()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords$2;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->-$$Nest$mhandleSimRefresh(Lcom/android/internal/telephony/uicc/UniIccRecords;)V

    return-void
.end method

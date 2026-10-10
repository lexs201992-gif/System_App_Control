.class public final synthetic Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->$r8$lambda$D30U7T9o3cJVOTDuQvDbyhjfSIU(Ljava/lang/String;Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object p0

    return-object p0
.end method

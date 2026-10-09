.class public final Lcom/glance/bridge/sdk/ContentProviderWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# instance fields
.field public final it:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glance/bridge/sdk/ContentProviderWrapper;->it:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v4, 0x0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v1, Lcom/glance/bridge/sdk/ContentProviderWrapper$call$$inlined$CoroutineExceptionHandler$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/glance/bridge/sdk/ContentProviderWrapper$call$$inlined$CoroutineExceptionHandler$1;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    new-instance v8, Lcom/glance/bridge/sdk/ContentProviderWrapper$call$2;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/glance/bridge/sdk/ContentProviderWrapper$call$2;-><init>(Lcom/glance/bridge/sdk/ContentProviderWrapper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v8}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

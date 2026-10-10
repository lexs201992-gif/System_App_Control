.class Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryManagementCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/system/virtualmachine/VirtualMachine;


# direct methods
.method private constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;-><init>(Landroid/system/virtualmachine/VirtualMachine;)V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 0

    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 5

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    nop

    :goto_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$fgetmLock(Landroid/system/virtualmachine/VirtualMachine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$fgetmVirtualMachine(Landroid/system/virtualmachine/VirtualMachine;)Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$fgetmVirtualMachine(Landroid/system/virtualmachine/VirtualMachine;)Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/system/virtualizationservice/IVirtualMachine;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "VirtualMachine"

    const-string v4, "TrimMemory failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x28 -> :sswitch_0
        0x3c -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

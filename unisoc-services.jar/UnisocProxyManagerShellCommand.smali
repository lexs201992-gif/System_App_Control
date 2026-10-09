.class Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "UnisocProxyManagerShellCommand.java"


# instance fields
.field private final mDumping:Z

.field private mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;


# direct methods
.method constructor <init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    iput-boolean p2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mDumping:Z

    return-void
.end method

.method private getPid(Ljava/io/PrintWriter;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: pid is null"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    return v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    return v0

    :catch_0
    move-exception v2

    return v1
.end method

.method private getProxyType(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "SER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "BR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return v3

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x850 -> :sswitch_2
        0x14040 -> :sswitch_1
        0x23bd2b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runDebugDisable(Ljava/io/PrintWriter;)I
    .locals 7

    const-class v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "boolean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v4, v2}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->setBooleanFromFieldSilently(Ljava/io/PrintWriter;Ljava/lang/reflect/Field;Z)V

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private runDebugEnable(Ljava/io/PrintWriter;)I
    .locals 7

    const-class v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "boolean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v4, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->setBooleanFromFieldSilently(Ljava/io/PrintWriter;Ljava/lang/reflect/Field;Z)V

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private runDumpProxySwitch(Ljava/io/PrintWriter;)I
    .locals 1

    const-string v0, "Starting dump proxy switch."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->dumpInfo(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    const/4 v0, 0x0

    return v0
.end method

.method private runProxyClear(Ljava/io/PrintWriter;)I
    .locals 8

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting clear proxy switch:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v2, "Error: Unknown option: null"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getProxyType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getPid(Ljava/io/PrintWriter;)I

    move-result v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "  successful"

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v5, v2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->clearProxy(I)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear proxy switch :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    iget-object v5, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v5, v3, v4, v2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->clearProcessProxy(Ljava/lang/String;II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear proxy "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " switch :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "clear proxy switch fail"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    const/4 v5, 0x0

    return v5
.end method

.method private runProxyClearAll(Ljava/io/PrintWriter;)I
    .locals 2

    const-string v0, "Starting clear all proxy switch."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->clearAllProxy(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private runProxyDisable(Ljava/io/PrintWriter;)I
    .locals 4

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Error: Unknown option: null"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getProxyType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->setProxySwtich(Ljava/io/PrintWriter;IZ)V

    return v3

    :cond_1
    return v3
.end method

.method private runProxyEnable(Ljava/io/PrintWriter;)I
    .locals 4

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Error: Unknown option: null"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getProxyType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->setProxySwtich(Ljava/io/PrintWriter;IZ)V

    const/4 v3, 0x0

    return v3

    :cond_1
    return v3
.end method

.method private static setBooleanFromFieldSilently(Ljava/io/PrintWriter;Ljava/lang/reflect/Field;Z)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw the IllegalAccessException when setBooleanFromFieldSilently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setProxySwtich(Ljava/io/PrintWriter;IZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "setProxySwtich Error: package name is null, set setProxySwtich fail"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getPid(Ljava/io/PrintWriter;)I

    move-result v2

    packed-switch p2, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProxySwtich Error: Unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :pswitch_0
    if-lez v2, :cond_1

    invoke-static {v2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v3

    iget-object v4, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v4, v1, v2, v3, p3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setWakelockProxy(Ljava/lang/String;IIZ)V

    goto :goto_0

    :pswitch_1
    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v3, v1, v2, p3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setServiceProxy(Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mInterface:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, p3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setBroadcastProxy(Ljava/lang/String;Ljava/util/List;Z)V

    nop

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " switch ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is  successful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method dumpHelp(Ljava/io/PrintWriter;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "Proxy manager dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " proxy-enable [ BR |SER |LOCK ] [packageName] [pid]:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " proxy-disable [ BR |SER |LOCK ] [packageName] [pid]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " proxy-clear [BR |SER |LOCK] [packageName] [pid]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " proxy-clear-all, reset all the proxy switch as false."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " dump-proxy-switch, print the proxy service info."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " proxy-debug-enable, set unisoc proxy servcie debug switch as on."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " proxy-debug-disable, set unisoc proxy servcie debug switch as off."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "proxy-debug-enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "proxy-clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "proxy-enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "proxy-clear-all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "dump-proxy-switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "proxy-disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "proxy-debug-disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runDebugDisable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runDebugEnable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runDumpProxySwitch(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runProxyClear(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runProxyClearAll(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runProxyDisable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->runProxyEnable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72a803b1 -> :sswitch_6
        -0x6d6f7d77 -> :sswitch_5
        -0x1d1fe954 -> :sswitch_4
        -0xff94e7e -> :sswitch_3
        0x2ff7cdc2 -> :sswitch_2
        0x3b3d8a2e -> :sswitch_1
        0x5917033c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->mDumping:Z

    invoke-virtual {p0, v0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    return-void
.end method

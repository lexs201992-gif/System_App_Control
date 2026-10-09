.class public Lcom/unipnp/server/DumpManager;
.super Ljava/lang/Object;
.source "DumpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dumpsys unipnp "


# instance fields
.field private final mUms:Lcom/unipnp/server/UnionManagerService;


# direct methods
.method public constructor <init>(Lcom/unipnp/server/UnionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipnp/server/DumpManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "adb shell dumpsys unipnp [options]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h] [-f] [-e] [-a] [-u] ..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -h                        \uff1aprint this usage.(-? -help --help --h)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -f  [opt]                 \uff1adump feature manager."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      xml                   \uff1ashow all feature info readed from UniFeature.xml."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      xml-reload            \uff1aforce reload UniFeature.xml & reinitialize all Features."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      feature_name args[]   \uff1adump your Feature\'s dump."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                              e.g. dumpsys unipnp -f HelloWorldFeature args[]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a  [opt]                 \uff1adump action manager."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      all                   \uff1ashow all unipnp actions."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      action_name args[]    \uff1aexec an ACTION with args[]."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                              e.g. dumpsys unipnp -a FAST_KILL com.android.camera2,180"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -e                        \uff1adump event manager."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    array-length v0, p3

    if-gtz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "please use -h for help !"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p3, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======================== dumpsys unipnp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start ========================"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "-h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "-?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "-help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    array-length v2, p3

    if-le v2, v4, :cond_2

    array-length v0, p3

    invoke-static {p3, v4, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/unipnp/server/DumpManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    invoke-virtual {v2}, Lcom/unipnp/server/UnionManagerService;->getFeatureManager()Lcom/unipnp/server/FeatureManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/unipnp/server/FeatureManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v2, "-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    array-length v2, p3

    if-le v2, v4, :cond_4

    array-length v0, p3

    invoke-static {p3, v4, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-array v0, v0, [Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/unipnp/server/DumpManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    invoke-virtual {v2}, Lcom/unipnp/server/UnionManagerService;->getActionManager()Lcom/unipnp/server/ActionManager;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/unipnp/server/ActionManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "-e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipnp/server/DumpManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    invoke-virtual {v0}, Lcom/unipnp/server/UnionManagerService;->getEventManager()Lcom/unipnp/server/EventManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unipnp/server/EventManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown argument: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; use -h or -help for help"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-direct {p0, p2}, Lcom/unipnp/server/DumpManager;->dumpHelp(Ljava/io/PrintWriter;)V

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end ========================"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

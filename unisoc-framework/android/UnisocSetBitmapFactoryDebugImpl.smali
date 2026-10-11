.class public Landroid/view/UnisocSetBitmapFactoryDebugImpl;
.super Landroid/view/UnisocSetBitmapFactoryDebug;
.source "UnisocSetBitmapFactoryDebugImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/UnisocSetBitmapFactoryDebug;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setBitmapFactoryDebug(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    aget-object v1, p2, v0

    sput-object v1, Landroid/graphics/BitmapFactory;->path:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "enable_save"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Enable Debug BitmapFactory Success!!\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "Saved Bitmap May Be Uncorrected for Config.HARDWARE!!\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "Never Enable Debug BitmapFactory During Monkey Test!!\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    sput-boolean v1, Landroid/graphics/BitmapFactory;->DEBUG:Z

    return v1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "disable_save"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Disable Debug BitmapFactory Success!!\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    sput-boolean v0, Landroid/graphics/BitmapFactory;->DEBUG:Z

    return v1

    :cond_1
    const-string v1, "Debug BitmapFactory args is invalid, Enable/Disable Debug BitmapFactory failed\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_2
    return v0
.end method

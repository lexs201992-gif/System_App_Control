.class public final enum Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;
.super Ljava/lang/Enum;
.source "AlmostThereActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/AlmostThereActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

.field public static final enum DELETING:Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

.field public static final enum TYPING:Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;


# direct methods
.method private static synthetic $values()[Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;
    .locals 2

    sget-object v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->TYPING:Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    sget-object v1, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->DELETING:Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    filled-new-array {v0, v1}, [Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    const-string v1, "TYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->TYPING:Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    new-instance v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    const-string v1, "DELETING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->DELETING:Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    invoke-static {}, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->$values()[Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->$VALUES:[Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;
    .locals 1

    const-class v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    return-object p0
.end method

.method public static values()[Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;
    .locals 1

    sget-object v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->$VALUES:[Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    invoke-virtual {v0}, [Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;

    return-object v0
.end method

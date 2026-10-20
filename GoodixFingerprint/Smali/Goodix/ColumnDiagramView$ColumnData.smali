.class public Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;
.super Ljava/lang/Object;
.source "ColumnDiagramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/widget/ColumnDiagramView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnData"
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getColumnGroup(I)Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;
    .locals 1

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupSize()I
    .locals 3

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;

    invoke-virtual {v1}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->getUnitSize()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {v1}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->getUnitSize()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.class public Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;
.super Ljava/lang/Object;
.source "ColumnDiagramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/widget/ColumnDiagramView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnGroup"
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;


# virtual methods
.method public getColumnUnitData(I)Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;
    .locals 1

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getUnitSize()I
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

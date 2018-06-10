.class public Lcom/skytree/epub/PagingInformation;
.super Ljava/lang/Object;


# instance fields
.field public bookCode:I

.field public chapterIndex:I

.field public code:I

.field public fontName:Ljava/lang/String;

.field public fontSize:I

.field public height:I

.field public horizontalGapRatio:D

.field public isDoublePagedForLandscape:Z

.field public isPortrait:Z

.field public lineSpacing:I

.field public numberOfPagesInChapter:I

.field public verticalGapRatio:D

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/skytree/epub/PagingInformation;)Z
    .locals 4

    iget v0, p0, Lcom/skytree/epub/PagingInformation;->bookCode:I

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->bookCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/PagingInformation;->chapterIndex:I

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->chapterIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/skytree/epub/PagingInformation;->fontName:Ljava/lang/String;

    iget-object v1, p1, Lcom/skytree/epub/PagingInformation;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/skytree/epub/PagingInformation;->fontSize:I

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->fontSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/PagingInformation;->lineSpacing:I

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->lineSpacing:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/skytree/epub/PagingInformation;->verticalGapRatio:D

    iget-wide v2, p1, Lcom/skytree/epub/PagingInformation;->verticalGapRatio:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/skytree/epub/PagingInformation;->horizontalGapRatio:D

    iget-wide v2, p1, Lcom/skytree/epub/PagingInformation;->horizontalGapRatio:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/skytree/epub/PagingInformation;->isPortrait:Z

    iget-boolean v1, p1, Lcom/skytree/epub/PagingInformation;->isPortrait:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/skytree/epub/PagingInformation;->isDoublePagedForLandscape:Z

    iget-boolean v1, p1, Lcom/skytree/epub/PagingInformation;->isDoublePagedForLandscape:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/PagingInformation;->height:I

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/PagingInformation;->width:I

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->width:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/skytree/epub/Highlight;
.super Ljava/lang/Object;


# instance fields
.field public bookCode:I

.field public chapterIndex:I

.field public code:I

.field public color:I

.field public datetime:Ljava/lang/String;

.field public endIndex:I

.field public endOffset:I

.field public forSearch:Z

.field public isNote:Z

.field public isOpen:Z

.field public left:I

.field public note:Ljava/lang/String;

.field public pagePositionInBook:D

.field public pagePositionInChapter:D

.field public startIndex:I

.field public startOffset:I

.field public style:I

.field public text:Ljava/lang/String;

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/skytree/epub/Highlight;)Z
    .locals 2

    iget v0, p0, Lcom/skytree/epub/Highlight;->startIndex:I

    iget v1, p1, Lcom/skytree/epub/Highlight;->startIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/Highlight;->endIndex:I

    iget v1, p1, Lcom/skytree/epub/Highlight;->endIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/Highlight;->startOffset:I

    iget v1, p1, Lcom/skytree/epub/Highlight;->startOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skytree/epub/Highlight;->endOffset:I

    iget v1, p1, Lcom/skytree/epub/Highlight;->endOffset:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

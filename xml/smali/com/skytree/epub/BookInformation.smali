.class public Lcom/skytree/epub/BookInformation;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I

.field public bookCode:I

.field private c:Ljava/lang/String;

.field public categoryCode:Ljava/lang/String;

.field public categoryName:Ljava/lang/String;

.field public code:I

.field public coverItem:Lcom/skytree/epub/Item;

.field public coverUrl:Ljava/lang/String;

.field public creator:Ljava/lang/String;

.field public customOrder:I

.field private d:Lcom/skytree/epub/Book;

.field public date:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public division:Ljava/lang/String;

.field public downSize:I

.field public downloadId:Ljava/lang/String;

.field private e:Lcom/skytree/epub/gx;

.field public etc:Ljava/lang/String;

.field public expiredate:Ljava/lang/String;

.field private f:Lcom/skytree/epub/ContentListener;

.field public fileName:Ljava/lang/String;

.field public fileSize:I

.field public free:Ljava/lang/String;

.field private g:Lcom/skytree/epub/ContentProvider;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field public identifier:Ljava/lang/String;

.field public isDownloaded:Z

.field public isFixedLayout:Z

.field public isGlobalPagination:Z

.field public isRTL:Z

.field public isRead:Z

.field public isVerticalWriting:Z

.field public language:Ljava/lang/String;

.field public lastRead:Ljava/lang/String;

.field public orientation:I

.field public position:D

.field public publisher:Ljava/lang/String;

.field public purchaseDate:I

.field public readPosition:D

.field public res0:I

.field public res1:I

.field public res2:I

.field public rights:Ljava/lang/String;

.field public shelfCode:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public spread:I

.field public subject:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    new-instance v0, Lcom/skytree/epub/Book;

    invoke-direct {v0}, Lcom/skytree/epub/Book;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v4, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    iput-object v5, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v4, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;Ljava/lang/String;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v4, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v4, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    iput-object v5, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    invoke-direct/range {p0 .. p5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v4, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    iput-object v5, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v4, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;Ljava/lang/String;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v4, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v4, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v4, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    iput-object v5, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->fileSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skytree/epub/BookInformation;->position:D

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iput v2, p0, Lcom/skytree/epub/BookInformation;->customOrder:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    iput v3, p0, Lcom/skytree/epub/BookInformation;->downSize:I

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRead:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iput-boolean v2, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res0:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res1:I

    iput v3, p0, Lcom/skytree/epub/BookInformation;->res2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iput v2, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->downloadId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->free:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->division:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->expiredate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->categoryName:Ljava/lang/String;

    iput v2, p0, Lcom/skytree/epub/BookInformation;->purchaseDate:I

    const-string v0, ""

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->shelfCode:Ljava/lang/String;

    invoke-direct/range {p0 .. p5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    const-string v0, "loadEpub()"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget v1, p0, Lcom/skytree/epub/BookInformation;->b:I

    invoke-virtual {v0, v1}, Lcom/skytree/epub/Book;->parseCoreXML(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in loadEpub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/skytree/epub/BookInformation;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method static synthetic a(Lcom/skytree/epub/BookInformation;)V
    .locals 0

    invoke-direct {p0}, Lcom/skytree/epub/BookInformation;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/skytree/epub/Setting;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EPub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/skytree/epub/e;

    invoke-direct {v0, p0}, Lcom/skytree/epub/e;-><init>(Lcom/skytree/epub/BookInformation;)V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->i:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    invoke-static {}, Lcom/skytree/epub/Setting;->getRandomPort()I

    move-result v0

    iput v0, p0, Lcom/skytree/epub/BookInformation;->b:I

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skytree/epub/Book;

    invoke-direct {v0}, Lcom/skytree/epub/Book;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    :cond_0
    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iput-object p1, v0, Lcom/skytree/epub/Book;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iput-object p2, v0, Lcom/skytree/epub/Book;->baseDirectory:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/skytree/epub/BookInformation;->startServer(Ljava/lang/String;Lcom/skytree/epub/ContentListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/skytree/epub/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/skytree/epub/h;-><init>(Lcom/skytree/epub/BookInformation;Lcom/skytree/epub/h;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/skytree/epub/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->creator:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->publisher:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->rights:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->isFixedLayout:Z

    iput-boolean v0, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->isRTL:Z

    iput-boolean v0, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->isVerticalWriting:Z

    iput-boolean v0, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->coverItem:Lcom/skytree/epub/Item;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget v0, v0, Lcom/skytree/epub/Book;->orientation:I

    iput v0, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget v0, v0, Lcom/skytree/epub/Book;->spread:I

    iput v0, p0, Lcom/skytree/epub/BookInformation;->spread:I

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v1, v1, Lcom/skytree/epub/Book;->opfDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iget-object v1, v1, Lcom/skytree/epub/Item;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/skytree/epub/BookInformation;->donwloadCover(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, 0xa

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/skytree/epub/BookInformation;->stopServer()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "mainProcess for ContentProvider"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    invoke-static {}, Lcom/skytree/epub/Setting;->getRandomPort()I

    move-result v0

    iput v0, p0, Lcom/skytree/epub/BookInformation;->b:I

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skytree/epub/Book;

    invoke-direct {v0}, Lcom/skytree/epub/Book;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    :cond_0
    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iput-object p1, v0, Lcom/skytree/epub/Book;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iput-object p2, v0, Lcom/skytree/epub/Book;->baseDirectory:Ljava/lang/String;

    iput-object p5, p0, Lcom/skytree/epub/BookInformation;->h:Ljava/lang/String;

    const-string v0, "startServer"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/skytree/epub/BookInformation;->startServer(Ljava/lang/String;Lcom/skytree/epub/ContentProvider;)V

    const-string v0, "LoadTask.execute()"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/skytree/epub/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/skytree/epub/h;-><init>(Lcom/skytree/epub/BookInformation;Lcom/skytree/epub/h;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/skytree/epub/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string v0, "LoadTask finished"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    const-string v0, "while started"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "while ended"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->creator:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->publisher:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->source:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->rights:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->rights:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->identifier:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->isFixedLayout:Z

    iput-boolean v0, p0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->isRTL:Z

    iput-boolean v0, p0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-boolean v0, v0, Lcom/skytree/epub/Book;->isVerticalWriting:Z

    iput-boolean v0, p0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->coverItem:Lcom/skytree/epub/Item;

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget v0, v0, Lcom/skytree/epub/Book;->orientation:I

    iput v0, p0, Lcom/skytree/epub/BookInformation;->orientation:I

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget v0, v0, Lcom/skytree/epub/Book;->spread:I

    iput v0, p0, Lcom/skytree/epub/BookInformation;->spread:I

    const-string v0, "downloadCover"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v1, v1, Lcom/skytree/epub/Book;->opfDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skytree/epub/BookInformation;->coverItem:Lcom/skytree/epub/Item;

    iget-object v1, v1, Lcom/skytree/epub/Item;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/skytree/epub/BookInformation;->donwloadCover(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, 0xa

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/skytree/epub/BookInformation;->stopServer()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private b()V
    .locals 3

    :try_start_0
    const-string v0, "loadEpub2()"

    invoke-direct {p0, v0}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget v1, p0, Lcom/skytree/epub/BookInformation;->b:I

    invoke-virtual {v0, v1}, Lcom/skytree/epub/Book;->parseXML(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in loadEpub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/skytree/epub/BookInformation;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method static synthetic b(Lcom/skytree/epub/BookInformation;)V
    .locals 0

    invoke-direct {p0}, Lcom/skytree/epub/BookInformation;->b()V

    return-void
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/skytree/epub/ca;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Lcom/skytree/epub/g;

    invoke-direct {v0, v1}, Lcom/skytree/epub/g;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public donwloadCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/skytree/epub/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/skytree/epub/f;-><init>(Lcom/skytree/epub/BookInformation;Lcom/skytree/epub/f;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/skytree/epub/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getBook()Lcom/skytree/epub/Book;
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    return-object v0
.end method

.method public getNavPoints()Lcom/skytree/epub/NavPoints;
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->d:Lcom/skytree/epub/Book;

    iget-object v0, v0, Lcom/skytree/epub/Book;->navMap:Lcom/skytree/epub/NavPoints;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EPub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeInformation()V
    .locals 6

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->f:Lcom/skytree/epub/ContentListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/skytree/epub/BookInformation;->f:Lcom/skytree/epub/ContentListener;

    iget-boolean v4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iget-object v5, p0, Lcom/skytree/epub/BookInformation;->h:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentListener;ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->g:Lcom/skytree/epub/ContentProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/skytree/epub/BookInformation;->g:Lcom/skytree/epub/ContentProvider;

    iget-boolean v4, p0, Lcom/skytree/epub/BookInformation;->a:Z

    iget-object v5, p0, Lcom/skytree/epub/BookInformation;->h:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/BookInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setBaseDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->c:Ljava/lang/String;

    return-void
.end method

.method public setContentListener(Lcom/skytree/epub/ContentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->f:Lcom/skytree/epub/ContentListener;

    return-void
.end method

.method public setContentProvider(Lcom/skytree/epub/ContentProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->g:Lcom/skytree/epub/ContentProvider;

    return-void
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->h:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setParseNavMapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/skytree/epub/BookInformation;->a:Z

    return-void
.end method

.method public startServer(Ljava/lang/String;Lcom/skytree/epub/ContentListener;)V
    .locals 6

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v0, Lcom/skytree/epub/gx;

    iget v1, p0, Lcom/skytree/epub/BookInformation;->b:I

    iget-object v2, p0, Lcom/skytree/epub/BookInformation;->i:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/gx;-><init>(ILandroid/os/Handler;Ljava/lang/String;Lcom/skytree/epub/ContentListener;Lcom/skytree/epub/ConnectionListener;)V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->e:Lcom/skytree/epub/gx;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->e:Lcom/skytree/epub/gx;

    invoke-virtual {v0}, Lcom/skytree/epub/gx;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in startServer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto :goto_0
.end method

.method public startServer(Ljava/lang/String;Lcom/skytree/epub/ContentProvider;)V
    .locals 6

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v0, Lcom/skytree/epub/gx;

    iget v1, p0, Lcom/skytree/epub/BookInformation;->b:I

    iget-object v2, p0, Lcom/skytree/epub/BookInformation;->i:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/skytree/epub/gx;-><init>(ILandroid/os/Handler;Ljava/lang/String;Lcom/skytree/epub/ContentProvider;Lcom/skytree/epub/ConnectionListener;)V

    iput-object v0, p0, Lcom/skytree/epub/BookInformation;->e:Lcom/skytree/epub/gx;

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->e:Lcom/skytree/epub/gx;

    invoke-virtual {v0}, Lcom/skytree/epub/gx;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in startServer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto :goto_0
.end method

.method public stopServer()V
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/BookInformation;->e:Lcom/skytree/epub/gx;

    invoke-virtual {v0}, Lcom/skytree/epub/gx;->d()V

    return-void
.end method

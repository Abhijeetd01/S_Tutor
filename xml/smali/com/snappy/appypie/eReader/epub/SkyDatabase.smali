.class public Lcom/snappy/appypie/eReader/epub/SkyDatabase;
.super Ljava/lang/Object;
.source "SkyDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private opener:Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->context:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;

    invoke-direct {v0, p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;-><init>(Lcom/snappy/appypie/eReader/epub/SkyDatabase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->opener:Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;

    .line 35
    iget-object v0, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->opener:Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;

    invoke-virtual {v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    return-void
.end method


# virtual methods
.method public clearDownload()V
    .locals 8

    .prologue
    .line 698
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, extDir:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Download"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, downDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, files:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    .line 704
    new-instance v2, Ljava/io/File;

    aget-object v6, v3, v4

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 705
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".epub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 706
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 703
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 709
    .end local v2           #file:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public deleteBookByBookCode(I)V
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 174
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Book where BookCode = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public deleteBookmark(Lcom/skytree/epub/PageInformation;)V
    .locals 1
    .parameter "pi"

    .prologue
    .line 196
    iget v0, p1, Lcom/skytree/epub/PageInformation;->code:I

    .line 197
    .local v0, code:I
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->deleteBookmarkByCode(I)V

    .line 198
    return-void
.end method

.method public deleteBookmarkByCode(I)V
    .locals 6
    .parameter "code"

    .prologue
    .line 169
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Bookmark where Code = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public deleteBookmarksByBookCode(I)V
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 179
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Bookmark where BookCode = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public deleteHighlight(Lcom/skytree/epub/Highlight;)V
    .locals 6
    .parameter "highlight"

    .prologue
    .line 629
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Highlight where BookCode=%d and ChapterIndex=%d and StartIndex=%d and StartOffset=%d and EndIndex=%d and EndOffset=%d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/skytree/epub/Highlight;->bookCode:I

    .line 630
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/skytree/epub/Highlight;->chapterIndex:I

    .line 631
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Lcom/skytree/epub/Highlight;->startIndex:I

    .line 632
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/skytree/epub/Highlight;->startOffset:I

    .line 633
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p1, Lcom/skytree/epub/Highlight;->endIndex:I

    .line 634
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p1, Lcom/skytree/epub/Highlight;->endOffset:I

    .line 635
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 629
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    const-string v1, "EPub"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method

.method public deleteHighlightByCode(I)V
    .locals 6
    .parameter "code"

    .prologue
    .line 641
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Highlight where Code=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const-string v1, "EPub"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public deleteHighlightsByBookCode(I)V
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 185
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Highlight where BookCode = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public deletePagingInformation(Lcom/skytree/epub/PagingInformation;)V
    .locals 10
    .parameter "pgi"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "DELETE FROM Paging WHERE BookCode=%d AND ChapterIndex=%d AND FontName=\'%s\' AND FontSize=%d AND LineSpacing=%d AND Width=%d AND Height=%d AND HorizontalGapRatio=%f AND VerticalGapRatio=%f AND IsPortrait=%d AND IsDoublePagedForLandscape=%d"

    const/16 v1, 0xb

    new-array v6, v1, [Ljava/lang/Object;

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->bookCode:I

    .line 600
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget v1, p1, Lcom/skytree/epub/PagingInformation;->chapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    iget-object v7, p1, Lcom/skytree/epub/PagingInformation;->fontName:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x3

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->fontSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x4

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->lineSpacing:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x5

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x6

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x7

    iget-wide v8, p1, Lcom/skytree/epub/PagingInformation;->horizontalGapRatio:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    const/16 v1, 0x8

    iget-wide v8, p1, Lcom/skytree/epub/PagingInformation;->verticalGapRatio:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    const/16 v7, 0x9

    iget-boolean v1, p1, Lcom/skytree/epub/PagingInformation;->isPortrait:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/16 v1, 0xa

    iget-boolean v7, p1, Lcom/skytree/epub/PagingInformation;->isDoublePagedForLandscape:Z

    if-eqz v7, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 599
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    return-void

    .end local v0           #sql:Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 600
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public deletePagingsByBookCode(I)V
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 190
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM Paging where BookCode = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public deleteRecursive(Ljava/io/File;)V
    .locals 4
    .parameter "fileOrDirectory"

    .prologue
    .line 690
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 692
    .local v0, child:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->deleteRecursive(Ljava/io/File;)V

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v0           #child:Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 695
    return-void
.end method

.method public deleteRecursive(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 712
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, fileOrDirectory:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->deleteRecursive(Ljava/io/File;)V

    .line 714
    return-void
.end method

.method public fetchAllHighlights(I)Lcom/skytree/epub/Highlights;
    .locals 10
    .parameter "bookCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 573
    new-instance v2, Lcom/skytree/epub/Highlights;

    invoke-direct {v2}, Lcom/skytree/epub/Highlights;-><init>()V

    .line 574
    .local v2, results:Lcom/skytree/epub/Highlights;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT * FROM Highlight where BookCode=%d ORDER BY ChapterIndex"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, selectSql:Ljava/lang/String;
    iget-object v4, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 576
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    new-instance v1, Lcom/skytree/epub/Highlight;

    invoke-direct {v1}, Lcom/skytree/epub/Highlight;-><init>()V

    .line 578
    .local v1, highlight:Lcom/skytree/epub/Highlight;
    iput p1, v1, Lcom/skytree/epub/Highlight;->bookCode:I

    .line 579
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->code:I

    .line 580
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->chapterIndex:I

    .line 581
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->startIndex:I

    .line 582
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->startOffset:I

    .line 583
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->endIndex:I

    .line 584
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->endOffset:I

    .line 585
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->color:I

    .line 586
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/Highlight;->text:Ljava/lang/String;

    .line 587
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/Highlight;->note:Ljava/lang/String;

    .line 588
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v1, Lcom/skytree/epub/Highlight;->isNote:Z

    .line 589
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/Highlight;->datetime:Ljava/lang/String;

    .line 590
    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->style:I

    .line 591
    invoke-virtual {v2, v1}, Lcom/skytree/epub/Highlights;->addHighlight(Lcom/skytree/epub/Highlight;)V

    goto :goto_0

    :cond_0
    move v4, v6

    .line 588
    goto :goto_1

    .line 593
    .end local v1           #highlight:Lcom/skytree/epub/Highlight;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 594
    return-object v2
.end method

.method public fetchBookInformations(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "sortType"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skytree/epub/BookInformation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v1, bis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/skytree/epub/BookInformation;>;"
    if-nez p1, :cond_1

    const-string v4, ""

    .line 445
    .local v4, orderBy:Ljava/lang/String;
    :goto_0
    const-string v2, ""

    .line 446
    .local v2, condition:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 447
    const-string v6, " WHERE Title like \'%%%s%%\' OR Author like \'%%%s%%\'"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p2, v9, v8

    aput-object p2, v9, v7

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT* from Book "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, selectSql:Ljava/lang/String;
    iget-object v6, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 451
    .local v3, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 452
    new-instance v0, Lcom/skytree/epub/BookInformation;

    invoke-direct {v0}, Lcom/skytree/epub/BookInformation;-><init>()V

    .line 453
    .local v0, bi:Lcom/skytree/epub/BookInformation;
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->bookCode:I

    .line 454
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    .line 455
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    .line 456
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    .line 457
    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    .line 458
    const/4 v6, 0x5

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    .line 459
    const/4 v6, 0x6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    .line 460
    const/4 v6, 0x7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    .line 461
    const/16 v6, 0x8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    .line 462
    const/16 v6, 0x9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/skytree/epub/BookInformation;->position:D

    .line 463
    const/16 v6, 0xa

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    .line 464
    const/16 v6, 0xb

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isGlobalPagination:Z

    .line 465
    const/16 v6, 0xc

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_4
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    .line 466
    const/16 v6, 0xd

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->fileSize:I

    .line 467
    const/16 v6, 0xe

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->customOrder:I

    .line 468
    const/16 v6, 0xf

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    .line 469
    const/16 v6, 0x10

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    .line 470
    const/16 v6, 0x11

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->downSize:I

    .line 471
    const/16 v6, 0x12

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    :goto_5
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isRead:Z

    .line 472
    const/16 v6, 0x13

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    .line 473
    const/16 v6, 0x14

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    :goto_6
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isRTL:Z

    .line 474
    const/16 v6, 0x15

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    :goto_7
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    .line 475
    const/16 v6, 0x16

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->res0:I

    .line 476
    const/16 v6, 0x17

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->res1:I

    .line 477
    const/16 v6, 0x18

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->res2:I

    .line 478
    const/16 v6, 0x19

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    .line 479
    const/16 v6, 0x1a

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->spread:I

    .line 480
    const/16 v6, 0x1b

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/skytree/epub/BookInformation;->orientation:I

    .line 481
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 442
    .end local v0           #bi:Lcom/skytree/epub/BookInformation;
    .end local v2           #condition:Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #orderBy:Ljava/lang/String;
    .end local v5           #selectSql:Ljava/lang/String;
    :cond_1
    if-ne p1, v7, :cond_2

    const-string v4, " ORDER BY Title"

    .restart local v4       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 443
    .end local v4           #orderBy:Ljava/lang/String;
    :cond_2
    if-ne p1, v12, :cond_3

    const-string v4, " ORDER BY Author"

    .restart local v4       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .line 444
    .end local v4           #orderBy:Ljava/lang/String;
    :cond_3
    const-string v4, " ORDER BY LastRead DESC"

    .restart local v4       #orderBy:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v0       #bi:Lcom/skytree/epub/BookInformation;
    .restart local v2       #condition:Ljava/lang/String;
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v5       #selectSql:Ljava/lang/String;
    :cond_4
    move v6, v8

    .line 463
    goto/16 :goto_2

    :cond_5
    move v6, v8

    .line 464
    goto/16 :goto_3

    :cond_6
    move v6, v8

    .line 465
    goto/16 :goto_4

    :cond_7
    move v6, v8

    .line 471
    goto :goto_5

    :cond_8
    move v6, v8

    .line 473
    goto :goto_6

    :cond_9
    move v6, v8

    .line 474
    goto :goto_7

    .line 483
    .end local v0           #bi:Lcom/skytree/epub/BookInformation;
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 484
    return-object v1
.end method

.method public fetchBookmarks(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "bookCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skytree/epub/PageInformation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, pis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/skytree/epub/PageInformation;>;"
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT * from Bookmark where bookCode=%d ORDER BY ChapterIndex"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, selectSql:Ljava/lang/String;
    iget-object v4, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 223
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v1, Lcom/skytree/epub/PageInformation;

    invoke-direct {v1}, Lcom/skytree/epub/PageInformation;-><init>()V

    .line 225
    .local v1, pi:Lcom/skytree/epub/PageInformation;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/PageInformation;->bookCode:I

    .line 226
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/PageInformation;->code:I

    .line 227
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/PageInformation;->chapterIndex:I

    .line 228
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/skytree/epub/PageInformation;->pagePositionInChapter:D

    .line 229
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/skytree/epub/PageInformation;->pagePositionInBook:D

    .line 230
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/PageInformation;->datetime:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    .end local v1           #pi:Lcom/skytree/epub/PageInformation;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    return-object v2
.end method

.method public fetchHighlights(II)Lcom/skytree/epub/Highlights;
    .locals 10
    .parameter "bookCode"
    .parameter "chapterIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 548
    new-instance v2, Lcom/skytree/epub/Highlights;

    invoke-direct {v2}, Lcom/skytree/epub/Highlights;-><init>()V

    .line 549
    .local v2, results:Lcom/skytree/epub/Highlights;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT * FROM Highlight where BookCode=%d and ChapterIndex=%d ORDER BY ChapterIndex"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, selectSql:Ljava/lang/String;
    iget-object v4, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 551
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    new-instance v1, Lcom/skytree/epub/Highlight;

    invoke-direct {v1}, Lcom/skytree/epub/Highlight;-><init>()V

    .line 553
    .local v1, highlight:Lcom/skytree/epub/Highlight;
    iput p1, v1, Lcom/skytree/epub/Highlight;->bookCode:I

    .line 554
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->code:I

    .line 555
    iput p2, v1, Lcom/skytree/epub/Highlight;->chapterIndex:I

    .line 556
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->startIndex:I

    .line 557
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->startOffset:I

    .line 558
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->endIndex:I

    .line 559
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->endOffset:I

    .line 560
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->color:I

    .line 561
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/Highlight;->text:Ljava/lang/String;

    .line 562
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/Highlight;->note:Ljava/lang/String;

    .line 563
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v1, Lcom/skytree/epub/Highlight;->isNote:Z

    .line 564
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/skytree/epub/Highlight;->datetime:Ljava/lang/String;

    .line 565
    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/skytree/epub/Highlight;->style:I

    .line 566
    invoke-virtual {v2, v1}, Lcom/skytree/epub/Highlights;->addHighlight(Lcom/skytree/epub/Highlight;)V

    goto :goto_0

    :cond_0
    move v4, v6

    .line 563
    goto :goto_1

    .line 568
    .end local v1           #highlight:Lcom/skytree/epub/Highlight;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 569
    return-object v2
.end method

.method public fetchPagingInformation(Lcom/skytree/epub/PagingInformation;)Lcom/skytree/epub/PagingInformation;
    .locals 10
    .parameter "pgi"

    .prologue
    .line 254
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT * FROM Paging WHERE BookCode=%d AND ChapterIndex=%d AND FontName=\'%s\' AND FontSize=%d AND LineSpacing=%d AND Width=%d AND Height=%d AND HorizontalGapRatio=%f AND VerticalGapRatio=%f AND IsPortrait=%d AND IsDoublePagedForLandscape=%d"

    const/16 v3, 0xb

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->bookCode:I

    .line 255
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->chapterIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget-object v7, p1, Lcom/skytree/epub/PagingInformation;->fontName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->fontSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x4

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->lineSpacing:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x5

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x6

    iget v7, p1, Lcom/skytree/epub/PagingInformation;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x7

    iget-wide v8, p1, Lcom/skytree/epub/PagingInformation;->horizontalGapRatio:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const/16 v3, 0x8

    iget-wide v8, p1, Lcom/skytree/epub/PagingInformation;->verticalGapRatio:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const/16 v7, 0x9

    iget-boolean v3, p1, Lcom/skytree/epub/PagingInformation;->isPortrait:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/16 v7, 0xa

    iget-boolean v3, p1, Lcom/skytree/epub/PagingInformation;->isDoublePagedForLandscape:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    .line 254
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 257
    .local v1, result:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    new-instance v0, Lcom/skytree/epub/PagingInformation;

    invoke-direct {v0}, Lcom/skytree/epub/PagingInformation;-><init>()V

    .line 259
    .local v0, pg:Lcom/skytree/epub/PagingInformation;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->bookCode:I

    .line 260
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->code:I

    .line 261
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->chapterIndex:I

    .line 262
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->numberOfPagesInChapter:I

    .line 263
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/skytree/epub/PagingInformation;->fontName:Ljava/lang/String;

    .line 264
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->fontSize:I

    .line 265
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->lineSpacing:I

    .line 266
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->width:I

    .line 267
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/skytree/epub/PagingInformation;->height:I

    .line 268
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/skytree/epub/PagingInformation;->verticalGapRatio:D

    .line 269
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/skytree/epub/PagingInformation;->horizontalGapRatio:D

    .line 270
    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v0, Lcom/skytree/epub/PagingInformation;->isPortrait:Z

    .line 271
    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lcom/skytree/epub/PagingInformation;->isDoublePagedForLandscape:Z

    .line 275
    .end local v0           #pg:Lcom/skytree/epub/PagingInformation;
    :goto_4
    return-object v0

    .line 255
    .end local v1           #result:Landroid/database/Cursor;
    .end local v2           #sql:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 270
    .restart local v0       #pg:Lcom/skytree/epub/PagingInformation;
    .restart local v1       #result:Landroid/database/Cursor;
    .restart local v2       #sql:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 271
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 274
    .end local v0           #pg:Lcom/skytree/epub/PagingInformation;
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 275
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public fetchSetting()Lcom/snappy/appypie/eReader/epub/SkySetting;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 119
    const-string v2, "SELECT * FROM Setting where BookCode=0"

    .line 120
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    .local v0, result:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    new-instance v1, Lcom/snappy/appypie/eReader/epub/SkySetting;

    invoke-direct {v1}, Lcom/snappy/appypie/eReader/epub/SkySetting;-><init>()V

    .line 123
    .local v1, setting:Lcom/snappy/appypie/eReader/epub/SkySetting;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->bookCode:I

    .line 124
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->fontName:Ljava/lang/String;

    .line 125
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->fontSize:I

    .line 126
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->lineSpacing:I

    .line 127
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->foreground:I

    .line 128
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->background:I

    .line 129
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->theme:I

    .line 130
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->brightness:D

    .line 131
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->transitionType:I

    .line 132
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->lockRotation:Z

    .line 133
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->doublePaged:Z

    .line 134
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->allow3G:Z

    .line 135
    const/16 v3, 0xc

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    iput-boolean v4, v1, Lcom/snappy/appypie/eReader/epub/SkySetting;->globalPagination:Z

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    .end local v1           #setting:Lcom/snappy/appypie/eReader/epub/SkySetting;
    :goto_4
    return-object v1

    .restart local v1       #setting:Lcom/snappy/appypie/eReader/epub/SkySetting;
    :cond_0
    move v3, v5

    .line 132
    goto :goto_0

    :cond_1
    move v3, v5

    .line 133
    goto :goto_1

    :cond_2
    move v3, v5

    .line 134
    goto :goto_2

    :cond_3
    move v4, v5

    .line 135
    goto :goto_3

    .line 139
    .end local v1           #setting:Lcom/snappy/appypie/eReader/epub/SkySetting;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public getBookCodeByFileName(Ljava/lang/String;)I
    .locals 5
    .parameter "fileName"

    .prologue
    .line 517
    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, numberPart:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 519
    .local v1, io:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 520
    .local v0, bookCode:I
    return v0
.end method

.method public getBookmarkCode(Lcom/skytree/epub/PageInformation;)I
    .locals 17
    .parameter "pi"

    .prologue
    .line 201
    const/high16 v12, 0x3f80

    move-object/from16 v0, p1

    iget v13, v0, Lcom/skytree/epub/PageInformation;->numberOfPagesInChapter:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-double v6, v12

    .line 202
    .local v6, pageDelta:D
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/skytree/epub/PageInformation;->pagePositionInChapter:D

    .line 203
    .local v10, target:D
    move-object/from16 v0, p1

    iget v2, v0, Lcom/skytree/epub/PageInformation;->bookCode:I

    .line 204
    .local v2, bookCode:I
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "SELECT Code,PagePositionInChapter from Bookmark where BookCode=%d and ChapterIndex=%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/skytree/epub/PageInformation;->chapterIndex:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, selectSql:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 206
    .local v4, cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 207
    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 208
    .local v8, ppc:D
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 209
    .local v3, code:I
    const-wide/high16 v12, 0x4000

    div-double v12, v6, v12

    sub-double v12, v8, v12

    cmpl-double v12, v10, v12

    if-ltz v12, :cond_0

    const-wide/high16 v12, 0x4000

    div-double v12, v6, v12

    add-double/2addr v12, v8

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_0

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 215
    .end local v3           #code:I
    .end local v8           #ppc:D
    :goto_0
    return v3

    .line 214
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 215
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getCorerNameByBookCode(I)Ljava/lang/String;
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 502
    const-string v2, "%07d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, numberPart:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, fileName:Ljava/lang/String;
    return-object v0
.end method

.method public getCoverPathByBookCode(I)Ljava/lang/String;
    .locals 5
    .parameter "bookCode"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getFileNameByBookCode(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, targetName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getDirNameByBookCode(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, dirName:Ljava/lang/String;
    const-string v3, ".epub"

    const-string v4, ".jpg"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 512
    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snappy/appypie/eReader/epub/SkySetting;->getStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/books/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, filePath:Ljava/lang/String;
    return-object v1
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 145
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, formattedDate:Ljava/lang/String;
    return-object v2
.end method

.method public getDirNameByBookCode(I)Ljava/lang/String;
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 496
    const-string v2, "%07d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, numberPart:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, fileName:Ljava/lang/String;
    return-object v0
.end method

.method public getFileNameByBookCode(I)Ljava/lang/String;
    .locals 6
    .parameter "bookCode"

    .prologue
    .line 490
    const-string v2, "%07d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, numberPart:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".epub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, fileName:Ljava/lang/String;
    return-object v0
.end method

.method public insertBook(Lcom/skytree/epub/BookInformation;)V
    .locals 5
    .parameter "bi"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "Title"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "Author"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "Publisher"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "Subject"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "Type"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "Date"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "Language"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "Filename"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "FileSize"

    iget v4, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v4, "IsDownloaded"

    iget-boolean v1, p1, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v4, "IsFixedLayout"

    iget-boolean v1, p1, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "CustomOrder"

    iget v4, p1, Lcom/skytree/epub/BookInformation;->customOrder:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v1, "URL"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "DOWNSIZE"

    iget v4, p1, Lcom/skytree/epub/BookInformation;->downSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "CoverURL"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v4, "IsRead"

    iget-boolean v1, p1, Lcom/skytree/epub/BookInformation;->isRead:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v1, "LastRead"

    iget-object v4, p1, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v4, "IsRTL"

    iget-boolean v1, p1, Lcom/skytree/epub/BookInformation;->isRTL:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v1, "IsVerticalWriting"

    iget-boolean v4, p1, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    if-eqz v4, :cond_4

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v1, "Res0"

    iget v2, p1, Lcom/skytree/epub/BookInformation;->res0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v1, "Res1"

    iget v2, p1, Lcom/skytree/epub/BookInformation;->res1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v1, "Res2"

    iget v2, p1, Lcom/skytree/epub/BookInformation;->res2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v1, "Etc"

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "Spread"

    iget v2, p1, Lcom/skytree/epub/BookInformation;->spread:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v1, "Orientation"

    iget v2, p1, Lcom/skytree/epub/BookInformation;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    iget-object v1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Book"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 335
    return-void

    :cond_0
    move v1, v3

    .line 318
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 319
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 324
    goto :goto_2

    :cond_3
    move v1, v3

    .line 326
    goto :goto_3

    :cond_4
    move v2, v3

    .line 327
    goto :goto_4
.end method

.method public insertBookmark(Lcom/skytree/epub/PageInformation;)V
    .locals 11
    .parameter "pi"

    .prologue
    .line 152
    iget-wide v4, p1, Lcom/skytree/epub/PageInformation;->pagePositionInBook:D

    .line 153
    .local v4, ppb:D
    iget-wide v6, p1, Lcom/skytree/epub/PageInformation;->pagePositionInChapter:D

    .line 154
    .local v6, ppc:D
    iget v1, p1, Lcom/skytree/epub/PageInformation;->chapterIndex:I

    .line 155
    .local v1, ci:I
    iget v0, p1, Lcom/skytree/epub/PageInformation;->bookCode:I

    .line 156
    .local v0, bc:I
    invoke-virtual {p0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getDateString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, dateInString:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v3, values:Landroid/content/ContentValues;
    const-string v8, "BookCode"

    iget v9, p1, Lcom/skytree/epub/PageInformation;->bookCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v8, "ChapterIndex"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v8, "PagePositionInChapter"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 162
    const-string v8, "PagePositionInBook"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 163
    const-string v8, "CreatedDate"

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v8, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "Bookmark"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 166
    return-void
.end method

.method public insertEmptyBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "url"
    .parameter "coverUrl"
    .parameter "title"
    .parameter "author"

    .prologue
    .line 542
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->insertEmptyBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public insertEmptyBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 7
    .parameter "url"
    .parameter "coverUrl"
    .parameter "title"
    .parameter "author"
    .parameter "downloadId"

    .prologue
    const/4 v6, 0x0

    .line 525
    new-instance v0, Lcom/skytree/epub/BookInformation;

    invoke-direct {v0}, Lcom/skytree/epub/BookInformation;-><init>()V

    .line 526
    .local v0, bi:Lcom/skytree/epub/BookInformation;
    iput-object p3, v0, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    .line 527
    iput-object p4, v0, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    .line 528
    iput-object p1, v0, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    .line 529
    iput-object p2, v0, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    .line 530
    iput-boolean v6, v0, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    .line 531
    long-to-int v4, p5

    iput v4, v0, Lcom/skytree/epub/BookInformation;->res0:I

    .line 532
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->insertBook(Lcom/skytree/epub/BookInformation;)V

    .line 534
    const-string v3, "SELECT * FROM Book"

    .line 535
    .local v3, lastSql:Ljava/lang/String;
    iget-object v4, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 536
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 537
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 538
    .local v1, bookCode:I
    return v1
.end method

.method public insertHighlight(Lcom/skytree/epub/Highlight;)V
    .locals 5
    .parameter "highlight"

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getDateString()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, dateString:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 650
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "BookCode"

    iget v3, p1, Lcom/skytree/epub/Highlight;->bookCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v2, "ChapterIndex"

    iget v3, p1, Lcom/skytree/epub/Highlight;->chapterIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string v2, "StartIndex"

    iget v3, p1, Lcom/skytree/epub/Highlight;->startIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v2, "StartOffset"

    iget v3, p1, Lcom/skytree/epub/Highlight;->startOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string v2, "EndIndex"

    iget v3, p1, Lcom/skytree/epub/Highlight;->endIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v2, "EndOffset"

    iget v3, p1, Lcom/skytree/epub/Highlight;->endOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v2, "Color"

    iget v3, p1, Lcom/skytree/epub/Highlight;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v2, "Text"

    iget-object v3, p1, Lcom/skytree/epub/Highlight;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v2, "Note"

    iget-object v3, p1, Lcom/skytree/epub/Highlight;->note:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v3, "IsNote"

    iget-boolean v2, p1, Lcom/skytree/epub/Highlight;->isNote:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v2, "CreatedDate"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v2, "Style"

    iget v3, p1, Lcom/skytree/epub/Highlight;->style:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Highlight"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 663
    return-void

    .line 659
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertPagingInformation(Lcom/skytree/epub/PagingInformation;)V
    .locals 8
    .parameter "pgi"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 606
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->fetchPagingInformation(Lcom/skytree/epub/PagingInformation;)Lcom/skytree/epub/PagingInformation;

    move-result-object v0

    .line 607
    .local v0, tgi:Lcom/skytree/epub/PagingInformation;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->deletePagingInformation(Lcom/skytree/epub/PagingInformation;)V

    .line 610
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "BookCode"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->bookCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string v2, "ChapterIndex"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->chapterIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v2, "NumberOfPagesInChapter"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->numberOfPagesInChapter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string v2, "FontName"

    iget-object v5, p1, Lcom/skytree/epub/PagingInformation;->fontName:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v2, "FontSize"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->fontSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v2, "LineSpacing"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->lineSpacing:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v2, "Width"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v2, "height"

    iget v5, p1, Lcom/skytree/epub/PagingInformation;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v2, "VerticalGapRatio"

    iget-wide v6, p1, Lcom/skytree/epub/PagingInformation;->verticalGapRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 620
    const-string v2, "HorizontalGapRatio"

    iget-wide v6, p1, Lcom/skytree/epub/PagingInformation;->horizontalGapRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 621
    const-string v5, "IsPortrait"

    iget-boolean v2, p1, Lcom/skytree/epub/PagingInformation;->isPortrait:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v2, "IsDoublePagedForLandscape"

    iget-boolean v5, p1, Lcom/skytree/epub/PagingInformation;->isDoublePagedForLandscape:Z

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Paging"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 624
    return-void

    :cond_1
    move v2, v4

    .line 621
    goto :goto_0

    :cond_2
    move v3, v4

    .line 622
    goto :goto_1
.end method

.method public isBookmarked(Lcom/skytree/epub/PageInformation;)Z
    .locals 2
    .parameter "pi"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getBookmarkCode(Lcom/skytree/epub/PageInformation;)I

    move-result v0

    .line 289
    .local v0, code:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 292
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toggleBookmark(Lcom/skytree/epub/PageInformation;)V
    .locals 2
    .parameter "pi"

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getBookmarkCode(Lcom/skytree/epub/PageInformation;)I

    move-result v0

    .line 280
    .local v0, code:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->insertBookmark(Lcom/skytree/epub/PageInformation;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->deleteBookmarkByCode(I)V

    goto :goto_0
.end method

.method public updateBook(Lcom/skytree/epub/BookInformation;)V
    .locals 7
    .parameter "bi"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, values:Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Title"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Author"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->creator:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Publisher"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_2
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Subject"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_3
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Type"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_4
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Date"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->date:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_5
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Language"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->language:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_6
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Filename"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_7
    iget v2, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    if-eq v2, v6, :cond_8

    iget v2, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    if-eqz v2, :cond_8

    const-string v2, "FileSize"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    :cond_8
    iget v2, p1, Lcom/skytree/epub/BookInformation;->downSize:I

    if-eq v2, v6, :cond_9

    const-string v2, "DownSize"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->downSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    :cond_9
    const-string v5, "IsDownloaded"

    iget-boolean v2, p1, Lcom/skytree/epub/BookInformation;->isDownloaded:Z

    if-eqz v2, :cond_14

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v5, "IsFixedLayout"

    iget-boolean v2, p1, Lcom/skytree/epub/BookInformation;->isFixedLayout:Z

    if-eqz v2, :cond_15

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v5, "IsRead"

    iget-boolean v2, p1, Lcom/skytree/epub/BookInformation;->isRead:Z

    if-eqz v2, :cond_16

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "URL"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_a
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "CoverURL"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_b
    iget v2, p1, Lcom/skytree/epub/BookInformation;->customOrder:I

    if-eq v2, v6, :cond_c

    const-string v2, "CustomOrder"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->customOrder:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    :cond_c
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "LastRead"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->lastRead:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_d
    const-string v5, "IsRTL"

    iget-boolean v2, p1, Lcom/skytree/epub/BookInformation;->isRTL:Z

    if-eqz v2, :cond_17

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v5, "IsVerticalWriting"

    iget-boolean v2, p1, Lcom/skytree/epub/BookInformation;->isVerticalWriting:Z

    if-eqz v2, :cond_18

    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    iget v2, p1, Lcom/skytree/epub/BookInformation;->res0:I

    if-eq v2, v6, :cond_e

    const-string v2, "Res0"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->res0:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    :cond_e
    iget v2, p1, Lcom/skytree/epub/BookInformation;->res1:I

    if-eq v2, v6, :cond_f

    const-string v2, "Res1"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->res1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    :cond_f
    iget v2, p1, Lcom/skytree/epub/BookInformation;->res2:I

    if-eq v2, v6, :cond_10

    const-string v2, "Res2"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->res2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    :cond_10
    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p1, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "Etc"

    iget-object v5, p1, Lcom/skytree/epub/BookInformation;->etc:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_11
    iget v2, p1, Lcom/skytree/epub/BookInformation;->spread:I

    if-eq v2, v6, :cond_12

    const-string v2, "Spread"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->spread:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    :cond_12
    iget v2, p1, Lcom/skytree/epub/BookInformation;->orientation:I

    if-eq v2, v6, :cond_13

    const-string v2, "Orientation"

    iget v5, p1, Lcom/skytree/epub/BookInformation;->orientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    :cond_13
    const-string v2, "BookCode=%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p1, Lcom/skytree/epub/BookInformation;->bookCode:I

    .line 366
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 365
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Book"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    return-void

    .end local v1           #where:Ljava/lang/String;
    :cond_14
    move v2, v4

    .line 350
    goto/16 :goto_0

    :cond_15
    move v2, v4

    .line 351
    goto/16 :goto_1

    :cond_16
    move v2, v4

    .line 352
    goto/16 :goto_2

    :cond_17
    move v2, v4

    .line 357
    goto/16 :goto_3

    :cond_18
    move v2, v4

    .line 358
    goto/16 :goto_4
.end method

.method public updateDownloadProcess(Lcom/skytree/epub/BookInformation;)V
    .locals 6
    .parameter "bi"

    .prologue
    const/4 v4, -0x1

    .line 372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v0, values:Landroid/content/ContentValues;
    iget v2, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    if-eq v2, v4, :cond_0

    iget v2, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    if-eqz v2, :cond_0

    const-string v2, "FileSize"

    iget v3, p1, Lcom/skytree/epub/BookInformation;->fileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    :cond_0
    iget v2, p1, Lcom/skytree/epub/BookInformation;->downSize:I

    if-eq v2, v4, :cond_1

    const-string v2, "DownSize"

    iget v3, p1, Lcom/skytree/epub/BookInformation;->downSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    :cond_1
    const-string v2, "BookCode=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/skytree/epub/BookInformation;->bookCode:I

    .line 376
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 375
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Book"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    return-void
.end method

.method public updateHighlight(Lcom/skytree/epub/Highlight;)V
    .locals 8
    .parameter "highlight"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 669
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "StartIndex"

    iget v5, p1, Lcom/skytree/epub/Highlight;->startIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v2, "StartOffset"

    iget v5, p1, Lcom/skytree/epub/Highlight;->startOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v2, "EndIndex"

    iget v5, p1, Lcom/skytree/epub/Highlight;->endIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string v2, "EndOffset"

    iget v5, p1, Lcom/skytree/epub/Highlight;->endOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string v2, "Color"

    iget v5, p1, Lcom/skytree/epub/Highlight;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v2, "Text"

    iget-object v5, p1, Lcom/skytree/epub/Highlight;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v2, "Note"

    iget-object v5, p1, Lcom/skytree/epub/Highlight;->note:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v5, "IsNote"

    iget-boolean v2, p1, Lcom/skytree/epub/Highlight;->isNote:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v2, "Style"

    iget v5, p1, Lcom/skytree/epub/Highlight;->style:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "BookCode=%d and ChapterIndex=%d and StartIndex=%d and StartOffset=%d and EndIndex=%d and EndOffset=%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p1, Lcom/skytree/epub/Highlight;->bookCode:I

    .line 680
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget v4, p1, Lcom/skytree/epub/Highlight;->chapterIndex:I

    .line 681
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    iget v4, p1, Lcom/skytree/epub/Highlight;->startIndex:I

    .line 682
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x3

    iget v4, p1, Lcom/skytree/epub/Highlight;->startOffset:I

    .line 683
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x4

    iget v4, p1, Lcom/skytree/epub/Highlight;->endIndex:I

    .line 684
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x5

    iget v4, p1, Lcom/skytree/epub/Highlight;->endOffset:I

    .line 685
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    .line 679
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Highlight"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 687
    return-void

    .end local v1           #where:Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 677
    goto :goto_0
.end method

.method public updatePosition(ID)V
    .locals 6
    .parameter "bookCode"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 298
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "Position"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 300
    const-string v2, "LastRead"

    invoke-virtual {p0}, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "IsRead"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v2, "BookCode=%d"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Book"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public updateSetting(Lcom/snappy/appypie/eReader/epub/SkySetting;)V
    .locals 8
    .parameter "setting"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "FontName"

    iget-object v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "FontSize"

    iget v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->fontSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v2, "LineSpacing"

    iget v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->lineSpacing:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v2, "Foreground"

    iget v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->foreground:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v2, "Background"

    iget v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->background:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v2, "Theme"

    iget v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->theme:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v2, "Brightness"

    iget-wide v6, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->brightness:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 109
    const-string v2, "TransitionType"

    iget v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->transitionType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v5, "LockRotation"

    iget-boolean v2, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->lockRotation:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v5, "DoublePaged"

    iget-boolean v2, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->doublePaged:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v5, "Allow3G"

    iget-boolean v2, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->allow3G:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v2, "GlobalPagination"

    iget-boolean v5, p1, Lcom/snappy/appypie/eReader/epub/SkySetting;->globalPagination:Z

    if-eqz v5, :cond_3

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "BookCode=0"

    .line 115
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void

    .end local v1           #where:Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 110
    goto :goto_0

    :cond_1
    move v2, v4

    .line 111
    goto :goto_1

    :cond_2
    move v2, v4

    .line 112
    goto :goto_2

    :cond_3
    move v3, v4

    .line 113
    goto :goto_3
.end method

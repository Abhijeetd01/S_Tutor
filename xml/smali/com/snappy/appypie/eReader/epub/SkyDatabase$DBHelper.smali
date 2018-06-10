.class Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SkyDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snappy/appypie/eReader/epub/SkyDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DBHelper"
.end annotation


# static fields
.field public static final version:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/snappy/appypie/eReader/epub/SkyDatabase;


# direct methods
.method public constructor <init>(Lcom/snappy/appypie/eReader/epub/SkyDatabase;Landroid/content/Context;)V
    .locals 3
    .parameter "this$0"
    .parameter "context"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->this$0:Lcom/snappy/appypie/eReader/epub/SkyDatabase;

    .line 72
    const-string v0, "Books.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 78
    const-string v1, "EPub"

    const-string v2, "SkyDB onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "sql/book.ddl"

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->stringFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v1, "sql/highlight.ddl"

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->stringFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v1, "sql/bookmark.ddl"

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->stringFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v1, "sql/paging.ddl"

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->stringFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v1, "sql/setting.ddl"

    invoke-virtual {p0, v1}, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->stringFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "INSERT INTO Setting(BookCode,FontName,FontSize,LineSpacing,Foreground,Background,Theme,Brightness,TransitionType,LockRotation) VALUES(0,\'\',2,-1,-1,-1,0,1,2,1)"

    .line 85
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 90
    const-string v0, "EPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database Version : Old Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  New Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 92
    const-string v0, "ALTER TABLE Book ADD COLUMN Spread INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "ALTER TABLE Book ADD COLUMN Orientation INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public stringFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "fileName"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, ReturnString:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 44
    .local v3, fIn:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 45
    .local v6, isr:Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 47
    .local v4, input:Ljava/io/BufferedReader;
    :try_start_0
    iget-object v9, p0, Lcom/snappy/appypie/eReader/epub/SkyDatabase$DBHelper;->this$0:Lcom/snappy/appypie/eReader/epub/SkyDatabase;

    iget-object v9, v9, Lcom/snappy/appypie/eReader/epub/SkyDatabase;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 48
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 49
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .local v7, isr:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 50
    .end local v4           #input:Ljava/io/BufferedReader;
    .local v5, input:Ljava/io/BufferedReader;
    :try_start_2
    const-string v8, ""

    .line 51
    .local v8, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 52
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 54
    .end local v8           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 55
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v1, e:Ljava/lang/Exception;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    if-eqz v6, :cond_0

    .line 59
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 60
    :cond_0
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_1
    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 68
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 58
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 59
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 60
    :cond_4
    if-eqz v3, :cond_5

    .line 61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_5
    if-eqz v5, :cond_6

    .line 63
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 66
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 64
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 65
    .local v2, e2:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 67
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 64
    .end local v2           #e2:Ljava/lang/Exception;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 65
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 57
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 58
    :goto_3
    if-eqz v6, :cond_7

    .line 59
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 60
    :cond_7
    if-eqz v3, :cond_8

    .line 61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_8
    if-eqz v4, :cond_9

    .line 63
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 66
    :cond_9
    :goto_4
    throw v9

    .line 64
    :catch_3
    move-exception v2

    .line 65
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_4

    .line 57
    .end local v2           #e2:Ljava/lang/Exception;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 54
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

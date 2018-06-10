.class Lcom/snappy/appypie/WebviewActivity$webviewInterface;
.super Ljava/lang/Object;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snappy/appypie/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "webviewInterface"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/snappy/appypie/WebviewActivity;


# direct methods
.method public constructor <init>(Lcom/snappy/appypie/WebviewActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/snappy/appypie/WebviewActivity$webviewInterface;->this$0:Lcom/snappy/appypie/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/snappy/appypie/WebviewActivity$webviewInterface;->context:Landroid/content/Context;

    .line 315
    return-void
.end method


# virtual methods
.method public downloadImaeg(Ljava/lang/String;)V
    .locals 12
    .parameter "imageData"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    iget-object v8, p0, Lcom/snappy/appypie/WebviewActivity$webviewInterface;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/snappy/appypie/utils/StaticData;->getStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 322
    .local v7, storagePath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "ColoringBook"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v0, colorPickerPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 327
    :cond_0
    if-eqz p1, :cond_1

    .line 328
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_Image.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v6, outputFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 331
    .local v1, decodedString:[B
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 333
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 335
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 336
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v8, "android.intent.extra.STREAM"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    const-string v8, "image/*"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v8, p0, Lcom/snappy/appypie/WebviewActivity$webviewInterface;->this$0:Lcom/snappy/appypie/WebviewActivity;

    invoke-virtual {v8, v5}, Lcom/snappy/appypie/WebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 345
    .end local v1           #decodedString:[B
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #outputFile:Ljava/io/File;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 346
    const/4 v3, 0x0

    .line 350
    :cond_2
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    if-eqz v3, :cond_2

    .line 346
    const/4 v3, 0x0

    goto :goto_0

    .line 345
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v3, :cond_3

    .line 346
    const/4 v3, 0x0

    :cond_3
    throw v8

    .line 345
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #outputFile:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 342
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

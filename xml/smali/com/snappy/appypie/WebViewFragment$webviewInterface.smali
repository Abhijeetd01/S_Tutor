.class Lcom/snappy/appypie/WebViewFragment$webviewInterface;
.super Ljava/lang/Object;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snappy/appypie/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "webviewInterface"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/snappy/appypie/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/snappy/appypie/WebViewFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/snappy/appypie/WebViewFragment$webviewInterface;->this$0:Lcom/snappy/appypie/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/snappy/appypie/WebViewFragment$webviewInterface;->context:Landroid/content/Context;

    .line 677
    return-void
.end method


# virtual methods
.method public downloadImaeg(Ljava/lang/String;)V
    .locals 12
    .parameter "imageData"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 681
    const/4 v3, 0x0

    .line 682
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    iget-object v8, p0, Lcom/snappy/appypie/WebViewFragment$webviewInterface;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/snappy/appypie/utils/StaticData;->getStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 683
    .local v7, storagePath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "ColoringBook"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    .local v0, colorPickerPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 688
    :cond_0
    if-eqz p1, :cond_1

    .line 689
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

    .line 690
    .local v6, outputFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 692
    .local v1, decodedString:[B
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 693
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 694
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 695
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 696
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v8, "android.intent.extra.STREAM"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 698
    const-string v8, "image/*"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    iget-object v8, p0, Lcom/snappy/appypie/WebViewFragment$webviewInterface;->this$0:Lcom/snappy/appypie/WebViewFragment;

    invoke-virtual {v8}, Lcom/snappy/appypie/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 704
    .end local v1           #decodedString:[B
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #outputFile:Ljava/io/File;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 705
    const/4 v3, 0x0

    .line 708
    :cond_2
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v2

    .line 702
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 704
    if-eqz v3, :cond_2

    .line 705
    const/4 v3, 0x0

    goto :goto_0

    .line 704
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v3, :cond_3

    .line 705
    const/4 v3, 0x0

    :cond_3
    throw v8

    .line 704
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #outputFile:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 701
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

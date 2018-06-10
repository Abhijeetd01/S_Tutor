.class public Lorg/apache/cordova/file/FileUtils;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/file/FileUtils$FileOp;
    }
.end annotation


# static fields
.field public static ABORT_ERR:I = 0x0

.field public static ENCODING_ERR:I = 0x0

.field public static INVALID_MODIFICATION_ERR:I = 0x0

.field public static INVALID_STATE_ERR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field public static NOT_FOUND_ERR:I = 0x0

.field public static NOT_READABLE_ERR:I = 0x0

.field public static NO_MODIFICATION_ALLOWED_ERR:I = 0x0

.field public static PATH_EXISTS_ERR:I = 0x0

.field public static QUOTA_EXCEEDED_ERR:I = 0x0

.field public static final READ_PERM:I = 0x0

.field public static SECURITY_ERR:I = 0x0

.field public static SYNTAX_ERR:I = 0x0

.field public static TYPE_MISMATCH_ERR:I = 0x0

.field public static UNKNOWN_ERR:I = 0x0

.field public static final WRITE_PERM:I = 0x1

.field private static filePlugin:Lorg/apache/cordova/file/FileUtils;


# instance fields
.field private callback:Lorg/apache/cordova/CallbackContext;

.field private configured:Z

.field private filesystems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/file/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private lastRawArgs:Ljava/lang/String;

.field private permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/file/FileUtils;->SECURITY_ERR:I

    .line 57
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/file/FileUtils;->ABORT_ERR:I

    .line 59
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    .line 60
    const/4 v0, 0x5

    sput v0, Lorg/apache/cordova/file/FileUtils;->ENCODING_ERR:I

    .line 61
    const/4 v0, 0x6

    sput v0, Lorg/apache/cordova/file/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 62
    const/4 v0, 0x7

    sput v0, Lorg/apache/cordova/file/FileUtils;->INVALID_STATE_ERR:I

    .line 63
    const/16 v0, 0x8

    sput v0, Lorg/apache/cordova/file/FileUtils;->SYNTAX_ERR:I

    .line 64
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/file/FileUtils;->INVALID_MODIFICATION_ERR:I

    .line 65
    const/16 v0, 0xa

    sput v0, Lorg/apache/cordova/file/FileUtils;->QUOTA_EXCEEDED_ERR:I

    .line 66
    const/16 v0, 0xb

    sput v0, Lorg/apache/cordova/file/FileUtils;->TYPE_MISMATCH_ERR:I

    .line 67
    const/16 v0, 0xc

    sput v0, Lorg/apache/cordova/file/FileUtils;->PATH_EXISTS_ERR:I

    .line 76
    const/16 v0, 0x3e8

    sput v0, Lorg/apache/cordova/file/FileUtils;->UNKNOWN_ERR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 78
    iput-boolean v2, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/cordova/file/FileUtils;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/file/FileUtils;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->hasReadPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/file/FileUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->getWritePermission()V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/cordova/file/FileUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->getReadPermission()V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->removeRecursively(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->readEntries(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/cordova/file/FileUtils;)Lorg/apache/cordova/CallbackContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->callback:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->truncateFile(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/file/FileUtils;)Lorg/json/JSONArray;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->requestAllFileSystems()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/file/FileUtils;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->requestAllPaths()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/cordova/file/FileUtils;IJLorg/apache/cordova/CallbackContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->requestFileSystem(IJLorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getParent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private filesystemForName(Ljava/lang/String;)Lorg/apache/cordova/file/Filesystem;
    .locals 3
    .parameter "name"

    .prologue
    .line 107
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 108
    .local v0, fs:Lorg/apache/cordova/file/Filesystem;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    .end local v0           #fs:Lorg/apache/cordova/file/Filesystem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;
    .locals 1
    .parameter "localURL"

    .prologue
    .line 232
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->fsName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/file/FileUtils;->filesystemForName(Ljava/lang/String;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEntry(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    invoke-static {}, Lorg/apache/cordova/file/FileUtils;->getFilePlugin()Lorg/apache/cordova/file/FileUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    invoke-static {}, Lorg/apache/cordova/file/FileUtils;->getFilePlugin()Lorg/apache/cordova/file/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/cordova/file/FileUtils;->getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 975
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 5
    .parameter "baseURLstr"
    .parameter "path"
    .parameter "options"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 816
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 817
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 818
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 819
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, p2, p3, p4}, Lorg/apache/cordova/file/Filesystem;->getFileForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "baseURLstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 854
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 855
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 856
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 857
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 859
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public static getFilePlugin()Lorg/apache/cordova/file/FileUtils;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lorg/apache/cordova/file/FileUtils;->filePlugin:Lorg/apache/cordova/file/FileUtils;

    return-object v0
.end method

.method private getParent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "baseURLstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 836
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 837
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 838
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 840
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->getParentForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private getReadPermission()V
    .locals 2

    .prologue
    .line 534
    const/4 v0, 0x0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v1}, Lorg/apache/cordova/file/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    .line 535
    return-void
.end method

.method private getWritePermission()V
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v1}, Lorg/apache/cordova/file/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    .line 539
    return-void
.end method

.method private hasReadPermission()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method private hasWritePermission()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method private readEntries(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "baseURLstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 695
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 696
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 697
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 698
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 700
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->readEntriesAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 5
    .parameter "baseURLstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 782
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 784
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    const-string v3, ""

    iget-object v4, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    iget-object v4, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    :cond_0
    new-instance v3, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v4, "You can\'t delete the root directory"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 789
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 790
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_2

    .line 791
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 793
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    return v3
.end method

.method private removeRecursively(Ljava/lang/String;)Z
    .locals 5
    .parameter "baseURLstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 753
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 755
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    const-string v3, ""

    iget-object v4, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    iget-object v4, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    :cond_0
    new-instance v3, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v4, "You can\'t delete the root directory"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 759
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 760
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_2

    .line 761
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 763
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    return v3
.end method

.method private requestAllFileSystems()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 907
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 908
    .local v1, ret:Lorg/json/JSONArray;
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 909
    .local v0, fs:Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v0}, Lorg/apache/cordova/file/Filesystem;->getRootEntry()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 911
    .end local v0           #fs:Lorg/apache/cordova/file/Filesystem;
    :cond_0
    return-object v1
.end method

.method private requestAllPaths()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 919
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 920
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 921
    .local v2, ret:Lorg/json/JSONObject;
    const-string v3, "applicationDirectory"

    const-string v4, "file:///android_asset/"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    const-string v3, "applicationStorageDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v3, "dataDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string v3, "cacheDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 925
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 927
    :try_start_0
    const-string v3, "externalApplicationStorageDirectory"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    const-string v3, "externalDataDirectory"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    const-string v3, "externalCacheDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    const-string v3, "externalRootDirectory"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_0
    :goto_0
    return-object v2

    .line 932
    :catch_0
    move-exception v1

    .line 934
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "FileUtils"

    const-string v4, "Unable to access these paths, most liklely due to USB storage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestFileSystem(IJLorg/apache/cordova/CallbackContext;)V
    .locals 10
    .parameter "type"
    .parameter "requiredSize"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 875
    const/4 v5, 0x0

    .line 877
    .local v5, rootFs:Lorg/apache/cordova/file/Filesystem;
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_0
    if-nez v5, :cond_0

    .line 882
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v7, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v8, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v6, v7, v8}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v6}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 899
    :goto_1
    return-void

    .line 885
    :cond_0
    const-wide/16 v2, 0x0

    .line 886
    .local v2, availableSize:J
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_1

    .line 887
    invoke-virtual {v5}, Lorg/apache/cordova/file/Filesystem;->getFreeSpaceInBytes()J

    move-result-wide v2

    .line 890
    :cond_1
    cmp-long v6, v2, p2

    if-gez v6, :cond_2

    .line 891
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v7, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v8, Lorg/apache/cordova/file/FileUtils;->QUOTA_EXCEEDED_ERR:I

    invoke-direct {v6, v7, v8}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v6}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    .line 893
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 894
    .local v4, fs:Lorg/json/JSONObject;
    const-string v6, "name"

    iget-object v7, v5, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string v6, "root"

    invoke-virtual {v5}, Lorg/apache/cordova/file/Filesystem;->getRootEntry()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    invoke-virtual {p4, v4}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 878
    .end local v2           #availableSize:J
    .end local v4           #fs:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "Unrecognized filesystem URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 665
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 666
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    if-nez v2, :cond_1

    .line 668
    invoke-virtual {p0, v3}, Lorg/apache/cordova/file/FileUtils;->resolveNativeUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 672
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 673
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_2

    .line 674
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    :catch_0
    move-exception v0

    .line 680
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "Unrecognized filesystem URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 676
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->exists(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 677
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->getEntryForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4

    .line 682
    :cond_3
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
.end method

.method private threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .parameter "f"
    .parameter "rawArgs"
    .parameter "callbackContext"

    .prologue
    .line 614
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/file/FileUtils$25;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/cordova/file/FileUtils$25;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method private static toDirUrl(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "f"

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 6
    .parameter "srcURLstr"
    .parameter "destURLstr"
    .parameter "newName"
    .parameter "move"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 721
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 723
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 726
    :cond_1
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v4

    .line 727
    .local v4, srcURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-static {p2}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 729
    .local v1, destURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v4}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v3

    .line 730
    .local v3, srcFs:Lorg/apache/cordova/file/Filesystem;
    invoke-direct {p0, v1}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    .line 733
    .local v0, destFs:Lorg/apache/cordova/file/Filesystem;
    if-eqz p3, :cond_2

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    new-instance v2, Lorg/apache/cordova/file/EncodingException;

    const-string v5, "Bad file name"

    invoke-direct {v2, v5}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, p3

    move v5, p4

    .line 737
    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/file/Filesystem;->copyFileToURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method private truncateFile(Ljava/lang/String;J)J
    .locals 6
    .parameter "srcURLstr"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 1078
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 1079
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 1080
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 1081
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1084
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, p2, p3}, Lorg/apache/cordova/file/Filesystem;->truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .parameter "action"
    .parameter "rawArgs"
    .parameter "callbackContext"

    .prologue
    const/4 v0, 0x1

    .line 259
    iput-object p3, p0, Lorg/apache/cordova/file/FileUtils;->callback:Lorg/apache/cordova/CallbackContext;

    .line 260
    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils;->lastRawArgs:Ljava/lang/String;

    .line 261
    iget-boolean v1, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v3, "File plugin is not configured. Please see the README.md file for details on how to update config.xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 530
    :goto_0
    return v0

    .line 265
    :cond_0
    const-string v1, "testSaveLocationExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    new-instance v1, Lorg/apache/cordova/file/FileUtils$1;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$1;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 273
    :cond_1
    const-string v1, "getFreeDiskSpace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    new-instance v1, Lorg/apache/cordova/file/FileUtils$2;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$2;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 284
    :cond_2
    const-string v1, "testFileExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    new-instance v1, Lorg/apache/cordova/file/FileUtils$3;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$3;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 293
    :cond_3
    const-string v1, "testDirectoryExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 294
    new-instance v1, Lorg/apache/cordova/file/FileUtils$4;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$4;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 302
    :cond_4
    const-string v1, "readAsText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 303
    new-instance v1, Lorg/apache/cordova/file/FileUtils$5;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$5;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 313
    :cond_5
    const-string v1, "readAsDataURL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 314
    new-instance v1, Lorg/apache/cordova/file/FileUtils$6;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$6;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 323
    :cond_6
    const-string v1, "readAsArrayBuffer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 324
    new-instance v1, Lorg/apache/cordova/file/FileUtils$7;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$7;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 333
    :cond_7
    const-string v1, "readAsBinaryString"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 334
    new-instance v1, Lorg/apache/cordova/file/FileUtils$8;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$8;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 343
    :cond_8
    const-string v1, "write"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 344
    new-instance v1, Lorg/apache/cordova/file/FileUtils$9;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$9;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 365
    :cond_9
    const-string v1, "truncate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 366
    new-instance v1, Lorg/apache/cordova/file/FileUtils$10;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$10;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 375
    :cond_a
    const-string v1, "requestAllFileSystems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 376
    new-instance v1, Lorg/apache/cordova/file/FileUtils$11;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$11;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 381
    :cond_b
    const-string v1, "requestAllPaths"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 382
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/file/FileUtils$12;

    invoke-direct {v2, p0, p3}, Lorg/apache/cordova/file/FileUtils$12;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 394
    :cond_c
    const-string v1, "requestFileSystem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 395
    new-instance v1, Lorg/apache/cordova/file/FileUtils$13;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$13;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 403
    :cond_d
    const-string v1, "resolveLocalFileSystemURI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 404
    new-instance v1, Lorg/apache/cordova/file/FileUtils$14;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$14;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 412
    :cond_e
    const-string v1, "getFileMetadata"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 413
    new-instance v1, Lorg/apache/cordova/file/FileUtils$15;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$15;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 421
    :cond_f
    const-string v1, "getParent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 422
    new-instance v1, Lorg/apache/cordova/file/FileUtils$16;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$16;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 430
    :cond_10
    const-string v1, "getDirectory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 431
    new-instance v1, Lorg/apache/cordova/file/FileUtils$17;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$17;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 440
    :cond_11
    const-string v1, "getFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 441
    new-instance v1, Lorg/apache/cordova/file/FileUtils$18;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$18;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 459
    :cond_12
    const-string v1, "remove"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 460
    new-instance v1, Lorg/apache/cordova/file/FileUtils$19;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$19;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 472
    :cond_13
    const-string v1, "removeRecursively"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 473
    new-instance v1, Lorg/apache/cordova/file/FileUtils$20;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$20;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 485
    :cond_14
    const-string v1, "moveTo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 486
    new-instance v1, Lorg/apache/cordova/file/FileUtils$21;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$21;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 496
    :cond_15
    const-string v1, "copyTo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 497
    new-instance v1, Lorg/apache/cordova/file/FileUtils$22;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$22;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 507
    :cond_16
    const-string v1, "readEntries"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 508
    new-instance v1, Lorg/apache/cordova/file/FileUtils$23;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$23;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 516
    :cond_17
    const-string v1, "_getLocalFilesystemPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 519
    new-instance v1, Lorg/apache/cordova/file/FileUtils$24;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$24;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 528
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public filesystemPathForURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "localURLstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 579
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 580
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 581
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No installed handlers for this URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 583
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public filesystemURLforLocalPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 6
    .parameter "localPath"

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, localURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    const/4 v2, 0x0

    .line 595
    .local v2, shortestFullPath:I
    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 596
    .local v0, fs:Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v0, p1}, Lorg/apache/cordova/file/Filesystem;->URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v3

    .line 597
    .local v3, url:Lorg/apache/cordova/file/LocalFilesystemURL;
    if-eqz v3, :cond_0

    .line 600
    if-eqz v1, :cond_1

    iget-object v5, v3, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_0

    .line 601
    :cond_1
    move-object v1, v3

    .line 602
    iget-object v5, v3, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 606
    .end local v0           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v3           #url:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_2
    return-object v1
.end method

.method protected getAvailableFileSystems(Landroid/app/Activity;)Ljava/util/HashMap;
    .locals 7
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .local v1, context:Landroid/content/Context;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, availableFileSystems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "files"

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v3, "documents"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "Documents"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v3, "cache"

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v3, "root"

    const-string v4, "/"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    :try_start_0
    const-string v3, "files-external"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v3, "sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v3, "cache-external"

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v3, "FileUtils"

    const-string v4, "External storage unavailable, check to see if USB Mass Storage Mode is on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 951
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/file/Filesystem;

    .line 952
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v1, p1}, Lorg/apache/cordova/file/Filesystem;->makeEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 953
    .local v0, entry:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 957
    .end local v0           #entry:Lorg/json/JSONObject;
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getExtraFileSystemsPreference(Landroid/app/Activity;)[Ljava/lang/String;
    .locals 4
    .parameter "activity"

    .prologue
    .line 116
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "androidextrafilesystems"

    const-string v3, "files,files-external,documents,sdcard,cache,cache-external,root"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, fileSystemsStr:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 11
    .parameter "cordova"
    .parameter "webView"

    .prologue
    const/4 v10, 0x1

    .line 166
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 167
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, tempRoot:Ljava/lang/String;
    const/4 v3, 0x0

    .line 172
    .local v3, persistentRoot:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, packageName:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v8, "androidpersistentfilelocation"

    const-string v9, "internal"

    invoke-virtual {v7, v8, v9}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string v7, "internal"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    iput-boolean v10, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    .line 199
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    if-eqz v7, :cond_4

    .line 201
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v6, tmpRootFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, persistentRootFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 204
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 210
    new-instance v7, Lorg/apache/cordova/file/LocalFilesystem;

    const-string v8, "temporary"

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v6}, Lorg/apache/cordova/file/LocalFilesystem;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 211
    new-instance v7, Lorg/apache/cordova/file/LocalFilesystem;

    const-string v8, "persistent"

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v4}, Lorg/apache/cordova/file/LocalFilesystem;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 212
    new-instance v7, Lorg/apache/cordova/file/ContentFilesystem;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/file/ContentFilesystem;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 213
    new-instance v7, Lorg/apache/cordova/file/AssetFilesystem;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/file/AssetFilesystem;-><init>(Landroid/content/res/AssetManager;Lorg/apache/cordova/CordovaResourceApi;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 215
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/FileUtils;->getExtraFileSystemsPreference(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/FileUtils;->getAvailableFileSystems(Landroid/app/Activity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/cordova/file/FileUtils;->registerExtraFileSystems([Ljava/lang/String;Ljava/util/HashMap;)V

    .line 218
    sget-object v7, Lorg/apache/cordova/file/FileUtils;->filePlugin:Lorg/apache/cordova/file/FileUtils;

    if-nez v7, :cond_1

    .line 219
    sput-object p0, Lorg/apache/cordova/file/FileUtils;->filePlugin:Lorg/apache/cordova/file/FileUtils;

    .line 225
    .end local v4           #persistentRootFile:Ljava/io/File;
    .end local v6           #tmpRootFile:Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 181
    :cond_2
    const-string v7, "compatibility"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Android/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cache/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    :goto_2
    iput-boolean v10, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    goto/16 :goto_0

    .line 194
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 222
    :cond_4
    const-string v7, "FileUtils"

    const-string v8, "File plugin configuration error: Please set AndroidPersistentFileLocation in config.xml to one of \"internal\" (for new applications) or \"compatibility\" (for compatibility with previous versions)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 7
    .parameter "requestCode"
    .parameter "permissions"
    .parameter "grantResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1097
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p3, v1

    .line 1099
    .local v0, r:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1101
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->callback:Lorg/apache/cordova/CallbackContext;

    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v6, Lorg/apache/cordova/file/FileUtils;->SECURITY_ERR:I

    invoke-direct {v4, v5, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 1097
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    .end local v0           #r:I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1131
    :goto_1
    return-void

    .line 1107
    :pswitch_0
    new-instance v1, Lorg/apache/cordova/file/FileUtils$27;

    invoke-direct {v1, p0}, Lorg/apache/cordova/file/FileUtils$27;-><init>(Lorg/apache/cordova/file/FileUtils;)V

    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->lastRawArgs:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 1118
    :pswitch_1
    new-instance v1, Lorg/apache/cordova/file/FileUtils$28;

    invoke-direct {v1, p0}, Lorg/apache/cordova/file/FileUtils$28;-><init>(Lorg/apache/cordova/file/FileUtils;)V

    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->lastRawArgs:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 1104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFileAs(Ljava/lang/String;IILorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V
    .locals 8
    .parameter "srcURLstr"
    .parameter "start"
    .parameter "end"
    .parameter "callbackContext"
    .parameter "encoding"
    .parameter "resultType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 991
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 992
    .local v1, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v1}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    .line 993
    .local v0, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v0, :cond_0

    .line 994
    new-instance v2, Ljava/net/MalformedURLException;

    const-string v3, "No installed handlers for this URL"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1039
    .end local v0           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v1           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v7

    .line 1040
    .local v7, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/net/MalformedURLException;

    const-string v3, "Unrecognized filesystem URL"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 997
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v1       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    int-to-long v2, p2

    int-to-long v4, p3

    :try_start_1
    new-instance v6, Lorg/apache/cordova/file/FileUtils$26;

    invoke-direct {v6, p0, p6, p5, p4}, Lorg/apache/cordova/file/FileUtils$26;-><init>(Lorg/apache/cordova/file/FileUtils;ILjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual/range {v0 .. v6}, Lorg/apache/cordova/file/Filesystem;->readFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;JJLorg/apache/cordova/file/Filesystem$ReadFileCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1047
    .end local v0           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v1           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :goto_0
    return-void

    .line 1041
    :catch_1
    move-exception v7

    .line 1042
    .local v7, e:Ljava/io/FileNotFoundException;
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v4, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 1043
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 1044
    .local v7, e:Ljava/io/IOException;
    const-string v2, "FileUtils"

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v4, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method

.method protected registerExtraFileSystems([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .parameter "filesystems"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, availableFileSystems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v2, installedFileSystems:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v0, p1, v4

    .line 125
    .local v0, fsName:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, fsRoot:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 128
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, newRoot:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    :cond_0
    new-instance v6, Lorg/apache/cordova/file/LocalFilesystem;

    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/cordova/file/FileUtils;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v8

    invoke-direct {v6, v0, v7, v8, v3}, Lorg/apache/cordova/file/LocalFilesystem;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V

    invoke-virtual {p0, v6}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 131
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v1           #fsRoot:Ljava/lang/String;
    .end local v3           #newRoot:Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .restart local v1       #fsRoot:Ljava/lang/String;
    .restart local v3       #newRoot:Ljava/io/File;
    :cond_2
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create root dir for filesystem \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v3           #newRoot:Ljava/io/File;
    :cond_3
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized extra filesystem identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v0           #fsName:Ljava/lang/String;
    .end local v1           #fsRoot:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V
    .locals 1
    .parameter "fs"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/file/FileUtils;->filesystemForName(Ljava/lang/String;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 239
    const-string v5, "cdvfile"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v4

    .line 243
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 244
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 245
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 253
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public resolveNativeUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 6
    .parameter "nativeUri"

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 557
    .local v1, localURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 558
    .local v0, fs:Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v0, p1}, Lorg/apache/cordova/file/Filesystem;->toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 559
    .local v2, url:Lorg/apache/cordova/file/LocalFilesystemURL;
    if-eqz v2, :cond_0

    .line 562
    if-eqz v1, :cond_1

    iget-object v4, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/cordova/file/LocalFilesystemURL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 563
    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 567
    .end local v0           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #url:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_2
    return-object v1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 8
    .parameter "srcURLstr"
    .parameter "data"
    .parameter "offset"
    .parameter "isBinary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 1060
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 1061
    .local v2, inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 1062
    .local v1, fs:Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 1063
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v6, "No installed handlers for this URL"

    invoke-direct {v3, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v1           #fs:Lorg/apache/cordova/file/Filesystem;
    .end local v2           #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 1068
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v6, "Unrecognized filesystem URL"

    invoke-direct {v3, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1066
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fs:Lorg/apache/cordova/file/Filesystem;
    .restart local v2       #inputURL:Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, p2, p3, p4}, Lorg/apache/cordova/file/Filesystem;->writeToFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;IZ)J

    move-result-wide v4

    .local v4, x:J
    const-string v3, "TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v4
.end method

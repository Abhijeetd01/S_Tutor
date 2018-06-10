.class public Lcom/snappy/appypie/ReportHandler;
.super Ljava/lang/Object;
.source "ReportHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snappy/appypie/ReportHandler$AsyncTaskClass;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile mCrashing:Z

.field private static sAppContext:Landroid/content/Context;


# instance fields
.field activity:Landroid/app/Activity;

.field private appInfo:Ljava/lang/String;

.field private defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private deviceInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/snappy/appypie/ReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snappy/appypie/ReportHandler;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snappy/appypie/ReportHandler;->mCrashing:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "deviceinfo"
    .parameter "appinfo"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/snappy/appypie/ReportHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 62
    iput-object p2, p0, Lcom/snappy/appypie/ReportHandler;->deviceInfo:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/snappy/appypie/ReportHandler;->appInfo:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/snappy/appypie/ReportHandler;->activity:Landroid/app/Activity;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/snappy/appypie/ReportHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snappy/appypie/ReportHandler;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/snappy/appypie/ReportHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snappy/appypie/ReportHandler;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "===== report handler is called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snappy/appypie/ReportHandler;->sAppContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private sendToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "crashreport"
    .parameter "filename"

    .prologue
    .line 151
    new-instance v0, Lcom/snappy/appypie/ReportHandler$AsyncTaskClass;

    iget-object v1, p0, Lcom/snappy/appypie/ReportHandler;->activity:Landroid/app/Activity;

    .line 152
    invoke-virtual {p0, v1}, Lcom/snappy/appypie/ReportHandler;->getAppLable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/snappy/appypie/ReportHandler$AsyncTaskClass;-><init>(Lcom/snappy/appypie/ReportHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v0, async:Lcom/snappy/appypie/ReportHandler$AsyncTaskClass;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snappy/appypie/ReportHandler$AsyncTaskClass;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method


# virtual methods
.method public getAppLable(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "pContext"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 139
    .local v1, lPackageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 142
    .local v0, lApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    .line 145
    return-object v2

    .line 146
    :cond_0
    const-string v2, "Unknown"

    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 82
    :try_start_0
    sget-boolean v7, Lcom/snappy/appypie/ReportHandler;->mCrashing:Z

    if-eqz v7, :cond_0

    .line 134
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/snappy/appypie/ReportHandler;->mCrashing:Z

    .line 86
    sget-object v7, Lcom/snappy/appypie/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FATAL EXCEPTION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 90
    .local v3, report:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 91
    .local v6, writer:Ljava/io/PrintWriter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".stacktrace"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, filename:Ljava/lang/String;
    const-string v7, "CRASH REPORT\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    sget-object v7, Lcom/snappy/appypie/ReportHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    sget-object v8, Lcom/snappy/appypie/ReportHandler;->sAppContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 97
    .local v2, info:Landroid/content/pm/PackageInfo;
    const-string v7, "Application:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v7, "Package: %s\nVersion Name:%s\nVersion Code: %d\n\n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 100
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 99
    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    const-string v7, "Reason: %s\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 109
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 110
    .local v4, stack:[Ljava/lang/StackTraceElement;
    array-length v7, v4

    if-lez v7, :cond_2

    .line 111
    const-string v7, "Stack Trace:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_2

    .line 113
    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    .end local v1           #i:I
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "====== testing report"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/snappy/appypie/ReportHandler;->sendToServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .end local v0           #filename:Ljava/lang/String;
    .end local v3           #report:Ljava/io/StringWriter;
    .end local v4           #stack:[Ljava/lang/StackTraceElement;
    .end local v6           #writer:Ljava/io/PrintWriter;
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/snappy/appypie/ReportHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v7, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v5

    .line 126
    .local v5, t2:Ljava/lang/Throwable;
    :try_start_3
    sget-object v7, Lcom/snappy/appypie/ReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "Error reporting crash"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 128
    :catch_1
    move-exception v7

    goto :goto_3

    .line 102
    .end local v5           #t2:Ljava/lang/Throwable;
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v3       #report:Ljava/io/StringWriter;
    .restart local v6       #writer:Ljava/io/PrintWriter;
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.class public Lcom/helger/jcodemodel/fmt/JStaticJavaFile;
.super Lcom/helger/jcodemodel/AbstractJResourceFile;
.source "JStaticJavaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;,
        Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;,
        Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;
    }
.end annotation


# instance fields
.field private final m_aClazz:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;

.field private final m_aFilter:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

.field private final m_aPkg:Lcom/helger/jcodemodel/JPackage;

.field private final m_aSource:Ljava/net/URL;

.field private final m_sClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 98
    const-class v0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    invoke-static {v0}, Lcom/helger/jcodemodel/util/JCSecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;-><init>(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;Ljava/net/URL;Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;Ljava/net/URL;Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/AbstractJResourceFile;-><init>(Ljava/lang/String;)V

    .line 110
    const-string v0, "Package"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JPackage;

    iput-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;

    .line 111
    new-instance v0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;-><init>(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)V

    iput-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aClazz:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;

    .line 112
    const-string v0, "ClassName"

    invoke-static {p2, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_sClassName:Ljava/lang/String;

    .line 113
    const-string v0, "Source"

    invoke-static {p3, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aSource:Ljava/net/URL;

    .line 114
    iput-object p4, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aFilter:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    .line 115
    return-void
.end method

.method private _createLineFilter()Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 172
    new-instance v1, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$1;

    invoke-direct {v1, p0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$1;-><init>(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)V

    .line 187
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aFilter:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;

    iget-object v2, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aFilter:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    invoke-direct {v0, v2, v1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;-><init>(Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;)V

    .line 189
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_sClassName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected build(Ljava/io/OutputStream;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aSource:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 139
    invoke-direct {p0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->_createLineFilter()Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    move-result-object v4

    .line 140
    const/4 v0, 0x1

    move v1, v0

    .line 145
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v4, v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aSource:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " line:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 159
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 160
    return-void
.end method

.method public final getJClass()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aClazz:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;

    return-object v0
.end method

.method protected isResource()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

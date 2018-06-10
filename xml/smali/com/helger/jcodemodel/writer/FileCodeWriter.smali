.class public Lcom/helger/jcodemodel/writer/FileCodeWriter;
.super Lcom/helger/jcodemodel/AbstractCodeWriter;
.source "FileCodeWriter.java"


# instance fields
.field private final m_aReadOnlyFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final m_aTargetDir:Ljava/io/File;

.field private final m_bMarkReadOnly:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
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
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/helger/jcodemodel/writer/FileCodeWriter;-><init>(Ljava/io/File;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/helger/jcodemodel/writer/FileCodeWriter;-><init>(Ljava/io/File;ZLjava/nio/charset/Charset;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/helger/jcodemodel/writer/FileCodeWriter;-><init>(Ljava/io/File;ZLjava/nio/charset/Charset;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZLjava/nio/charset/Charset;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p3}, Lcom/helger/jcodemodel/AbstractCodeWriter;-><init>(Ljava/nio/charset/Charset;)V

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_aReadOnlyFiles:Ljava/util/Set;

    .line 93
    iput-object p1, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_aTargetDir:Ljava/io/File;

    .line 94
    iput-boolean p2, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_bMarkReadOnly:Z

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": non-existent directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    return-void
.end method

.method private static _toDirName(Lcom/helger/jcodemodel/JPackage;)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JPackage;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_aReadOnlyFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method protected getFile(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_aTargetDir:Ljava/io/File;

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Can\'t delete previous version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_aTargetDir:Ljava/io/File;

    invoke-static {p1}, Lcom/helger/jcodemodel/writer/FileCodeWriter;->_toDirName(Lcom/helger/jcodemodel/JPackage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-boolean v0, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_bMarkReadOnly:Z

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FileCodeWriter;->m_aReadOnlyFiles:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    return-object v1
.end method

.method public openBinary(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/writer/FileCodeWriter;->getFile(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

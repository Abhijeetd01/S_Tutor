.class public Lcom/helger/jcodemodel/fmt/JTextFile;
.super Lcom/helger/jcodemodel/AbstractJResourceFile;
.source "JTextFile.java"


# instance fields
.field private m_sContents:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJResourceFile;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public build(Ljava/io/OutputStream;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation

        .annotation runtime Ljavax/annotation/WillClose;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JTextFile;->m_sContents:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
.end method

.method public contents()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JTextFile;->m_sContents:Ljava/lang/String;

    return-object v0
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/helger/jcodemodel/fmt/JTextFile;->m_sContents:Ljava/lang/String;

    .line 71
    return-void
.end method

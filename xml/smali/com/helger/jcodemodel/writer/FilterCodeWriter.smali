.class public Lcom/helger/jcodemodel/writer/FilterCodeWriter;
.super Lcom/helger/jcodemodel/AbstractCodeWriter;
.source "FilterCodeWriter.java"


# instance fields
.field private final m_aCore:Lcom/helger/jcodemodel/AbstractCodeWriter;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/AbstractCodeWriter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractCodeWriter;->encoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/AbstractCodeWriter;-><init>(Ljava/nio/charset/Charset;)V

    .line 65
    iput-object p1, p0, Lcom/helger/jcodemodel/writer/FilterCodeWriter;->m_aCore:Lcom/helger/jcodemodel/AbstractCodeWriter;

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FilterCodeWriter;->m_aCore:Lcom/helger/jcodemodel/AbstractCodeWriter;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/AbstractCodeWriter;->close()V

    .line 90
    return-void
.end method

.method protected core()Lcom/helger/jcodemodel/AbstractCodeWriter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FilterCodeWriter;->m_aCore:Lcom/helger/jcodemodel/AbstractCodeWriter;

    return-object v0
.end method

.method public openBinary(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
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

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FilterCodeWriter;->m_aCore:Lcom/helger/jcodemodel/AbstractCodeWriter;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractCodeWriter;->openBinary(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openSource(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/Writer;
    .locals 1
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

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helger/jcodemodel/writer/FilterCodeWriter;->m_aCore:Lcom/helger/jcodemodel/AbstractCodeWriter;

    invoke-virtual {v0, p1, p2}, Lcom/helger/jcodemodel/AbstractCodeWriter;->openSource(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

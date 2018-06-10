.class public Lcom/helger/jcodemodel/fmt/JBinaryFile;
.super Lcom/helger/jcodemodel/AbstractJResourceFile;
.source "JBinaryFile.java"


# instance fields
.field private final m_aBAOS:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/helger/jcodemodel/AbstractJResourceFile;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/fmt/JBinaryFile;->m_aBAOS:Ljava/io/ByteArrayOutputStream;

    .line 64
    return-void
.end method


# virtual methods
.method public build(Ljava/io/OutputStream;)V
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
    .line 79
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JBinaryFile;->m_aBAOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public getDataStore()Ljava/io/OutputStream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JBinaryFile;->m_aBAOS:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

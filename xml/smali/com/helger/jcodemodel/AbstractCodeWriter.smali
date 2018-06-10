.class public abstract Lcom/helger/jcodemodel/AbstractCodeWriter;
.super Ljava/lang/Object;
.source "AbstractCodeWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helger/jcodemodel/AbstractCodeWriter$1;,
        Lcom/helger/jcodemodel/AbstractCodeWriter$JavaUnicodeEscapeWriter;
    }
.end annotation


# instance fields
.field private final m_aEncoding:Ljava/nio/charset/Charset;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/helger/jcodemodel/AbstractCodeWriter;->m_aEncoding:Ljava/nio/charset/Charset;

    .line 108
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encoding()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractCodeWriter;->m_aEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public abstract openBinary(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/OutputStream;
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
.end method

.method public openSource(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/Writer;
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
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/helger/jcodemodel/AbstractCodeWriter;->openBinary(Lcom/helger/jcodemodel/JPackage;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractCodeWriter;->m_aEncoding:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/helger/jcodemodel/AbstractCodeWriter;->m_aEncoding:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 159
    :goto_0
    :try_start_0
    new-instance v1, Lcom/helger/jcodemodel/AbstractCodeWriter$JavaUnicodeEscapeWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/helger/jcodemodel/AbstractCodeWriter$JavaUnicodeEscapeWriter;-><init>(Ljava/io/OutputStreamWriter;Lcom/helger/jcodemodel/AbstractCodeWriter$1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 163
    :goto_1
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 163
    new-instance v1, Lcom/helger/jcodemodel/util/UnicodeEscapeWriter;

    invoke-direct {v1, v0}, Lcom/helger/jcodemodel/util/UnicodeEscapeWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    goto :goto_1
.end method

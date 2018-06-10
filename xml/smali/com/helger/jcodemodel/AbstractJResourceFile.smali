.class public abstract Lcom/helger/jcodemodel/AbstractJResourceFile;
.super Ljava/lang/Object;
.source "AbstractJResourceFile.java"


# instance fields
.field private final m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/helger/jcodemodel/AbstractJResourceFile;->m_sName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract build(Ljava/io/OutputStream;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected isResource()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/helger/jcodemodel/AbstractJResourceFile;->m_sName:Ljava/lang/String;

    return-object v0
.end method

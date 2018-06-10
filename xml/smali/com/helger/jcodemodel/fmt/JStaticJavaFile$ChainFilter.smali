.class public final Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;
.super Ljava/lang/Object;
.source "JStaticJavaFile.java"

# interfaces
.implements Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/fmt/JStaticJavaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChainFilter"
.end annotation


# instance fields
.field private final m_aFirst:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

.field private final m_aSecond:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;->m_aFirst:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    .line 223
    iput-object p2, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;->m_aSecond:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    .line 224
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;->m_aFirst:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    invoke-interface {v0, p1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ChainFilter;->m_aSecond:Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;

    invoke-interface {v1, v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.class public Lcom/helger/jcodemodel/JTryBlock;
.super Ljava/lang/Object;
.source "JTryBlock.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private final _body:Lcom/helger/jcodemodel/JBlock;

.field private final _catches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JCatchBlock;",
            ">;"
        }
    .end annotation
.end field

.field private _finally:Lcom/helger/jcodemodel/JBlock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_body:Lcom/helger/jcodemodel/JBlock;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_catches:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public _catch(Lcom/helger/jcodemodel/AbstractJClass;)Lcom/helger/jcodemodel/JCatchBlock;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/helger/jcodemodel/JCatchBlock;

    invoke-direct {v0, p1}, Lcom/helger/jcodemodel/JCatchBlock;-><init>(Lcom/helger/jcodemodel/AbstractJClass;)V

    .line 71
    iget-object v1, p0, Lcom/helger/jcodemodel/JTryBlock;->_catches:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method

.method public _finally()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_finally:Lcom/helger/jcodemodel/JBlock;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/helger/jcodemodel/JBlock;

    invoke-direct {v0}, Lcom/helger/jcodemodel/JBlock;-><init>()V

    iput-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_finally:Lcom/helger/jcodemodel/JBlock;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_finally:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public body()Lcom/helger/jcodemodel/JBlock;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_body:Lcom/helger/jcodemodel/JBlock;

    return-object v0
.end method

.method public catches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helger/jcodemodel/JCatchBlock;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_catches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 91
    const-string v0, "try"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JTryBlock;->_body:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 92
    iget-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_catches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helger/jcodemodel/JCatchBlock;

    .line 93
    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JTryBlock;->_finally:Lcom/helger/jcodemodel/JBlock;

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "finally"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JTryBlock;->_finally:Lcom/helger/jcodemodel/JBlock;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 97
    return-void
.end method

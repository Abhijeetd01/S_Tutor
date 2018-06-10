.class Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;
.super Lcom/helger/jcodemodel/AbstractJClass;
.source "JStaticJavaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/fmt/JStaticJavaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JStaticClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

.field private final typeParams:[Lcom/helger/jcodemodel/JTypeVar;


# direct methods
.method constructor <init>(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    .line 242
    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;
    invoke-static {p1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helger/jcodemodel/AbstractJClass;-><init>(Lcom/helger/jcodemodel/JCodeModel;)V

    .line 244
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/helger/jcodemodel/JTypeVar;

    iput-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->typeParams:[Lcom/helger/jcodemodel/JTypeVar;

    .line 245
    return-void
.end method


# virtual methods
.method public _extends()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 1

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public _implements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public _package()Lcom/helger/jcodemodel/JPackage;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;
    invoke-static {v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;
    invoke-static {v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_sClassName:Ljava/lang/String;
    invoke-static {v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$100(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;
    invoke-static {v1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JPackage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_sClassName:Ljava/lang/String;
    invoke-static {v1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$100(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_sClassName:Ljava/lang/String;
    invoke-static {v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$100(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected substituteParams([Lcom/helger/jcodemodel/JTypeVar;Ljava/util/List;)Lcom/helger/jcodemodel/AbstractJClass;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/helger/jcodemodel/JTypeVar;",
            "Ljava/util/List",
            "<+",
            "Lcom/helger/jcodemodel/AbstractJClass;",
            ">;)",
            "Lcom/helger/jcodemodel/AbstractJClass;"
        }
    .end annotation

    .prologue
    .line 303
    return-object p0
.end method

.method public typeParams()[Lcom/helger/jcodemodel/JTypeVar;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$JStaticClass;->typeParams:[Lcom/helger/jcodemodel/JTypeVar;

    return-object v0
.end method

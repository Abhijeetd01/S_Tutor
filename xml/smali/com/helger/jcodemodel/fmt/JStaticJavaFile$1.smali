.class Lcom/helger/jcodemodel/fmt/JStaticJavaFile$1;
.super Ljava/lang/Object;
.source "JStaticJavaFile.java"

# interfaces
.implements Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->_createLineFilter()Lcom/helger/jcodemodel/fmt/JStaticJavaFile$ILineFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;


# direct methods
.method constructor <init>(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$1;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    const-string v0, "package "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$1;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;
    invoke-static {v0}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JPackage;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/4 p1, 0x0

    .line 184
    :cond_0
    :goto_0
    return-object p1

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/fmt/JStaticJavaFile$1;->this$0:Lcom/helger/jcodemodel/fmt/JStaticJavaFile;

    #getter for: Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->m_aPkg:Lcom/helger/jcodemodel/JPackage;
    invoke-static {v1}, Lcom/helger/jcodemodel/fmt/JStaticJavaFile;->access$000(Lcom/helger/jcodemodel/fmt/JStaticJavaFile;)Lcom/helger/jcodemodel/JPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JPackage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

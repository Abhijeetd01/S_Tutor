.class Lcom/helger/jcodemodel/JDefinedClass$1;
.super Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;
.source "JDefinedClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helger/jcodemodel/JDefinedClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helger/jcodemodel/JDefinedClass;


# direct methods
.method constructor <init>(Lcom/helger/jcodemodel/JDefinedClass;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/helger/jcodemodel/JDefinedClass$1;->this$0:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJGenerifiableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/helger/jcodemodel/JDefinedClass$1;->this$0:Lcom/helger/jcodemodel/JDefinedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JDefinedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    return-object v0
.end method

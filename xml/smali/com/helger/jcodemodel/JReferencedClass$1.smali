.class Lcom/helger/jcodemodel/JReferencedClass$1;
.super Ljava/lang/Object;
.source "JReferencedClass.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helger/jcodemodel/JReferencedClass;->_implements()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/helger/jcodemodel/AbstractJClass;",
        ">;"
    }
.end annotation


# instance fields
.field private m_nIdx:I

.field final synthetic this$0:Lcom/helger/jcodemodel/JReferencedClass;

.field final synthetic val$aInterfaces:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/helger/jcodemodel/JReferencedClass;[Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->this$0:Lcom/helger/jcodemodel/JReferencedClass;

    iput-object p2, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->val$aInterfaces:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->m_nIdx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->m_nIdx:I

    iget-object v1, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->val$aInterfaces:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/helger/jcodemodel/AbstractJClass;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->this$0:Lcom/helger/jcodemodel/JReferencedClass;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JReferencedClass;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->val$aInterfaces:[Ljava/lang/Class;

    iget v2, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->m_nIdx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/helger/jcodemodel/JReferencedClass$1;->m_nIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JCodeModel;->ref(Ljava/lang/Class;)Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JReferencedClass$1;->next()Lcom/helger/jcodemodel/AbstractJClass;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class public Lcom/helger/jcodemodel/JReturn;
.super Ljava/lang/Object;
.source "JReturn.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private final _expr:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/helger/jcodemodel/JReturn;->_expr:Lcom/helger/jcodemodel/IJExpression;

    .line 65
    return-void
.end method


# virtual methods
.method public expr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/helger/jcodemodel/JReturn;->_expr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 75
    const-string v0, "return"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 76
    iget-object v0, p0, Lcom/helger/jcodemodel/JReturn;->_expr:Lcom/helger/jcodemodel/IJExpression;

    if-eqz v0, :cond_0

    .line 77
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JReturn;->_expr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 78
    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 79
    return-void
.end method

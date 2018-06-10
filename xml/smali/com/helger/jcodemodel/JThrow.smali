.class public Lcom/helger/jcodemodel/JThrow;
.super Ljava/lang/Object;
.source "JThrow.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private final _expr:Lcom/helger/jcodemodel/IJExpression;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/helger/jcodemodel/JThrow;->_expr:Lcom/helger/jcodemodel/IJExpression;

    .line 64
    return-void
.end method


# virtual methods
.method public expr()Lcom/helger/jcodemodel/IJExpression;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helger/jcodemodel/JThrow;->_expr:Lcom/helger/jcodemodel/IJExpression;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 74
    const-string v0, "throw"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 75
    iget-object v0, p0, Lcom/helger/jcodemodel/JThrow;->_expr:Lcom/helger/jcodemodel/IJExpression;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    .line 76
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 77
    return-void
.end method

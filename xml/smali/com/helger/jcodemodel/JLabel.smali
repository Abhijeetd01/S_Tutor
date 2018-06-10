.class public Lcom/helger/jcodemodel/JLabel;
.super Ljava/lang/Object;
.source "JLabel.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private final m_sLabel:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "Label"

    invoke-static {p1, v0}, Lcom/helger/jcodemodel/util/JCValueEnforcer;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helger/jcodemodel/JLabel;->m_sLabel:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public label()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/helger/jcodemodel/JLabel;->m_sLabel:Ljava/lang/String;

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helger/jcodemodel/JLabel;->m_sLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 76
    return-void
.end method

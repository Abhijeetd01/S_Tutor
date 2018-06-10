.class public Lcom/helger/jcodemodel/JBreak;
.super Ljava/lang/Object;
.source "JBreak.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJStatement;


# instance fields
.field private final m_aLabel:Lcom/helger/jcodemodel/JLabel;


# direct methods
.method public constructor <init>(Lcom/helger/jcodemodel/JLabel;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/helger/jcodemodel/JBreak;->m_aLabel:Lcom/helger/jcodemodel/JLabel;

    .line 62
    return-void
.end method


# virtual methods
.method public label()Lcom/helger/jcodemodel/JLabel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helger/jcodemodel/JBreak;->m_aLabel:Lcom/helger/jcodemodel/JLabel;

    return-object v0
.end method

.method public state(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/helger/jcodemodel/JBreak;->m_aLabel:Lcom/helger/jcodemodel/JLabel;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "break;"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "break "

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/helger/jcodemodel/JBreak;->m_aLabel:Lcom/helger/jcodemodel/JLabel;

    invoke-virtual {v1}, Lcom/helger/jcodemodel/JLabel;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JFormatter;->newline()Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0
.end method

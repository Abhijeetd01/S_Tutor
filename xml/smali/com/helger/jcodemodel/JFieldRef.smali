.class public Lcom/helger/jcodemodel/JFieldRef;
.super Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;
.source "JFieldRef.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJOwnedMaybe;


# instance fields
.field private final m_aObject:Lcom/helger/jcodemodel/IJGenerable;

.field private final m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

.field private final m_aVar:Lcom/helger/jcodemodel/JVar;

.field private m_bExplicitThis:Z

.field private final m_sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJType;Lcom/helger/jcodemodel/JVar;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/AbstractJType;Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/helger/jcodemodel/AbstractJType;->owner()Lcom/helger/jcodemodel/JCodeModel;

    move-result-object v1

    const/4 v4, 0x0

    check-cast v4, Lcom/helger/jcodemodel/JVar;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Lcom/helger/jcodemodel/JVar;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJExpression;Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 90
    move-object v4, v1

    check-cast v4, Lcom/helger/jcodemodel/JVar;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJGenerable;Lcom/helger/jcodemodel/JVar;Z)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V

    .line 132
    return-void
.end method

.method protected constructor <init>(Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Z)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    move-object v4, v1

    check-cast v4, Lcom/helger/jcodemodel/JVar;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/helger/jcodemodel/JFieldRef;-><init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V

    .line 127
    return-void
.end method

.method private constructor <init>(Lcom/helger/jcodemodel/JCodeModel;Lcom/helger/jcodemodel/IJGenerable;Ljava/lang/String;Lcom/helger/jcodemodel/JVar;Z)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/helger/jcodemodel/AbstractJExpressionAssignmentTargetImpl;-><init>()V

    .line 140
    if-eqz p3, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field name contains \'.\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name or var must be present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iput-object p1, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    .line 145
    iput-object p2, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    .line 146
    iput-object p3, p0, Lcom/helger/jcodemodel/JFieldRef;->m_sName:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aVar:Lcom/helger/jcodemodel/JVar;

    .line 148
    iput-boolean p5, p0, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    .line 149
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    if-ne p1, p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_3
    check-cast p1, Lcom/helger/jcodemodel/JFieldRef;

    .line 217
    iget-object v2, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    iget-object v3, p1, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFieldRef;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helger/jcodemodel/JFieldRef;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    iget-boolean v3, p1, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    invoke-static {v2, v3}, Lcom/helger/jcodemodel/util/JCEqualsHelper;->isEqual(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public explicitThis(Z)Lcom/helger/jcodemodel/JFieldRef;
    .locals 0
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    .line 187
    return-object p0
.end method

.method public explicitThis()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    return v0
.end method

.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFieldRef;->name()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    instance-of v0, v0, Lcom/helger/jcodemodel/AbstractJType;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    check-cast v0, Lcom/helger/jcodemodel/AbstractJType;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->type(Lcom/helger/jcodemodel/AbstractJType;)Lcom/helger/jcodemodel/JFormatter;

    .line 200
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(C)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 207
    :goto_1
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->generable(Lcom/helger/jcodemodel/IJGenerable;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_0

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    if-eqz v0, :cond_2

    .line 204
    const-string v0, "this."

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p1, v1}, Lcom/helger/jcodemodel/JFormatter;->id(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/helger/jcodemodel/JFieldRef;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/helger/jcodemodel/JFieldRef;->m_bExplicitThis:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/helger/jcodemodel/util/JCHashCodeGenerator;->getHashCode(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_sName:Ljava/lang/String;

    .line 167
    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aVar:Lcom/helger/jcodemodel/JVar;

    invoke-virtual {v0}, Lcom/helger/jcodemodel/JVar;->name()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    return-object v0
.end method

.method public object()Lcom/helger/jcodemodel/IJGenerable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aObject:Lcom/helger/jcodemodel/IJGenerable;

    return-object v0
.end method

.method public owner()Lcom/helger/jcodemodel/JCodeModel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aOwner:Lcom/helger/jcodemodel/JCodeModel;

    return-object v0
.end method

.method public var()Lcom/helger/jcodemodel/JVar;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/helger/jcodemodel/JFieldRef;->m_aVar:Lcom/helger/jcodemodel/JVar;

    return-object v0
.end method

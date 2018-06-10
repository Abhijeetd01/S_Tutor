.class public Lcom/helger/jcodemodel/JMods;
.super Ljava/lang/Object;
.source "JMods.java"

# interfaces
.implements Lcom/helger/jcodemodel/IJGenerable;


# static fields
.field private static final CLASS:I = 0x3f

.field private static final FIELD:I = 0x31f

.field private static final INTERFACE:I = 0x7

.field private static final METHOD:I = 0xff

.field private static final VAR:I = 0x8


# instance fields
.field private m_nMods:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    .line 86
    return-void
.end method

.method private static _check(IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal modifiers for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/helger/jcodemodel/JMods;

    invoke-direct {v2, p0}, Lcom/helger/jcodemodel/JMods;-><init>(I)V

    invoke-virtual {v2}, Lcom/helger/jcodemodel/JMods;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method private _setFlag(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz p2, :cond_0

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    .line 196
    return-void

    .line 195
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static forClass(I)Lcom/helger/jcodemodel/JMods;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 129
    const/16 v0, 0x3f

    const-string v1, "class"

    invoke-static {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_check(IILjava/lang/String;)V

    .line 130
    new-instance v0, Lcom/helger/jcodemodel/JMods;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JMods;-><init>(I)V

    return-object v0
.end method

.method public static forField(I)Lcom/helger/jcodemodel/JMods;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 115
    const/16 v0, 0x31f

    const-string v1, "field"

    invoke-static {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_check(IILjava/lang/String;)V

    .line 116
    new-instance v0, Lcom/helger/jcodemodel/JMods;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JMods;-><init>(I)V

    return-object v0
.end method

.method public static forInterface(I)Lcom/helger/jcodemodel/JMods;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x7

    const-string v1, "class"

    invoke-static {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_check(IILjava/lang/String;)V

    .line 137
    new-instance v0, Lcom/helger/jcodemodel/JMods;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JMods;-><init>(I)V

    return-object v0
.end method

.method public static forMethod(I)Lcom/helger/jcodemodel/JMods;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 122
    const/16 v0, 0xff

    const-string v1, "method"

    invoke-static {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_check(IILjava/lang/String;)V

    .line 123
    new-instance v0, Lcom/helger/jcodemodel/JMods;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JMods;-><init>(I)V

    return-object v0
.end method

.method public static forVar(I)Lcom/helger/jcodemodel/JMods;
    .locals 2
    .parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 108
    const/16 v0, 0x8

    const-string v1, "variable"

    invoke-static {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_check(IILjava/lang/String;)V

    .line 109
    new-instance v0, Lcom/helger/jcodemodel/JMods;

    invoke-direct {v0, p0}, Lcom/helger/jcodemodel/JMods;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public generate(Lcom/helger/jcodemodel/JFormatter;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 200
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "public"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 202
    :cond_0
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "protected"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 204
    :cond_1
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "private"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 206
    :cond_2
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 207
    const-string v0, "final"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 208
    :cond_3
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 209
    const-string v0, "static"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 210
    :cond_4
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 211
    const-string v0, "abstract"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 212
    :cond_5
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 213
    const-string v0, "native"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 214
    :cond_6
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 215
    const-string v0, "synchronized"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 216
    :cond_7
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 217
    const-string v0, "transient"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 218
    :cond_8
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 219
    const-string v0, "volatile"

    invoke-virtual {p1, v0}, Lcom/helger/jcodemodel/JFormatter;->print(Ljava/lang/String;)Lcom/helger/jcodemodel/JFormatter;

    .line 220
    :cond_9
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNative()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynchronized()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/helger/jcodemodel/JMods;->m_nMods:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinal(Z)V
    .locals 1
    .parameter

    .prologue
    .line 190
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 191
    return-void
.end method

.method public setPackagePrivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 170
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 171
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 172
    return-void
.end method

.method public setPrivate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, v2, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 163
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 164
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 165
    return-void
.end method

.method public setProtected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, v2, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 177
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 178
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 179
    return-void
.end method

.method public setPublic()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, v0, v0}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 184
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 185
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 186
    return-void
.end method

.method public setSynchronized(Z)V
    .locals 1
    .parameter

    .prologue
    .line 157
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/helger/jcodemodel/JMods;->_setFlag(IZ)V

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 226
    new-instance v1, Lcom/helger/jcodemodel/JFormatter;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lcom/helger/jcodemodel/JFormatter;-><init>(Ljava/io/PrintWriter;)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/helger/jcodemodel/JMods;->generate(Lcom/helger/jcodemodel/JFormatter;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final enum Ledu/umd/cs/findbugs/annotations/Confidence;
.super Ljava/lang/Enum;
.source "Confidence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ledu/umd/cs/findbugs/annotations/Confidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ledu/umd/cs/findbugs/annotations/Confidence;

.field public static final enum HIGH:Ledu/umd/cs/findbugs/annotations/Confidence;

.field public static final enum IGNORE:Ledu/umd/cs/findbugs/annotations/Confidence;

.field public static final enum LOW:Ledu/umd/cs/findbugs/annotations/Confidence;

.field public static final enum MEDIUM:Ledu/umd/cs/findbugs/annotations/Confidence;


# instance fields
.field private final confidenceValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30
    new-instance v0, Ledu/umd/cs/findbugs/annotations/Confidence;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v6, v3}, Ledu/umd/cs/findbugs/annotations/Confidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ledu/umd/cs/findbugs/annotations/Confidence;->HIGH:Ledu/umd/cs/findbugs/annotations/Confidence;

    new-instance v0, Ledu/umd/cs/findbugs/annotations/Confidence;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3, v4}, Ledu/umd/cs/findbugs/annotations/Confidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ledu/umd/cs/findbugs/annotations/Confidence;->MEDIUM:Ledu/umd/cs/findbugs/annotations/Confidence;

    new-instance v0, Ledu/umd/cs/findbugs/annotations/Confidence;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4, v5}, Ledu/umd/cs/findbugs/annotations/Confidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ledu/umd/cs/findbugs/annotations/Confidence;->LOW:Ledu/umd/cs/findbugs/annotations/Confidence;

    new-instance v0, Ledu/umd/cs/findbugs/annotations/Confidence;

    const-string v1, "IGNORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Ledu/umd/cs/findbugs/annotations/Confidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ledu/umd/cs/findbugs/annotations/Confidence;->IGNORE:Ledu/umd/cs/findbugs/annotations/Confidence;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ledu/umd/cs/findbugs/annotations/Confidence;

    sget-object v1, Ledu/umd/cs/findbugs/annotations/Confidence;->HIGH:Ledu/umd/cs/findbugs/annotations/Confidence;

    aput-object v1, v0, v6

    sget-object v1, Ledu/umd/cs/findbugs/annotations/Confidence;->MEDIUM:Ledu/umd/cs/findbugs/annotations/Confidence;

    aput-object v1, v0, v3

    sget-object v1, Ledu/umd/cs/findbugs/annotations/Confidence;->LOW:Ledu/umd/cs/findbugs/annotations/Confidence;

    aput-object v1, v0, v4

    sget-object v1, Ledu/umd/cs/findbugs/annotations/Confidence;->IGNORE:Ledu/umd/cs/findbugs/annotations/Confidence;

    aput-object v1, v0, v5

    sput-object v0, Ledu/umd/cs/findbugs/annotations/Confidence;->$VALUES:[Ledu/umd/cs/findbugs/annotations/Confidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Ledu/umd/cs/findbugs/annotations/Confidence;->confidenceValue:I

    .line 52
    return-void
.end method

.method public static getConfidence(I)Ledu/umd/cs/findbugs/annotations/Confidence;
    .locals 5
    .parameter "prio"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Ledu/umd/cs/findbugs/annotations/Confidence;->values()[Ledu/umd/cs/findbugs/annotations/Confidence;

    move-result-object v0

    .local v0, arr$:[Ledu/umd/cs/findbugs/annotations/Confidence;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 39
    .local v1, c:Ledu/umd/cs/findbugs/annotations/Confidence;
    iget v4, v1, Ledu/umd/cs/findbugs/annotations/Confidence;->confidenceValue:I

    if-gt p0, v4, :cond_0

    .line 43
    .end local v1           #c:Ledu/umd/cs/findbugs/annotations/Confidence;
    :goto_1
    return-object v1

    .line 38
    .restart local v1       #c:Ledu/umd/cs/findbugs/annotations/Confidence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1           #c:Ledu/umd/cs/findbugs/annotations/Confidence;
    :cond_1
    sget-object v1, Ledu/umd/cs/findbugs/annotations/Confidence;->IGNORE:Ledu/umd/cs/findbugs/annotations/Confidence;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ledu/umd/cs/findbugs/annotations/Confidence;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Ledu/umd/cs/findbugs/annotations/Confidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ledu/umd/cs/findbugs/annotations/Confidence;

    return-object v0
.end method

.method public static values()[Ledu/umd/cs/findbugs/annotations/Confidence;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ledu/umd/cs/findbugs/annotations/Confidence;->$VALUES:[Ledu/umd/cs/findbugs/annotations/Confidence;

    invoke-virtual {v0}, [Ledu/umd/cs/findbugs/annotations/Confidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ledu/umd/cs/findbugs/annotations/Confidence;

    return-object v0
.end method


# virtual methods
.method public getConfidenceValue()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ledu/umd/cs/findbugs/annotations/Confidence;->confidenceValue:I

    return v0
.end method

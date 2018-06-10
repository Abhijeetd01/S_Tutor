.class public Lcom/helger/jcodemodel/util/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field private static final INSTANCE:Lcom/helger/jcodemodel/util/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/helger/jcodemodel/util/NullWriter;

    invoke-direct {v0}, Lcom/helger/jcodemodel/util/NullWriter;-><init>()V

    sput-object v0, Lcom/helger/jcodemodel/util/NullWriter;->INSTANCE:Lcom/helger/jcodemodel/util/NullWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/helger/jcodemodel/util/NullWriter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/helger/jcodemodel/util/NullWriter;->INSTANCE:Lcom/helger/jcodemodel/util/NullWriter;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public write([CII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

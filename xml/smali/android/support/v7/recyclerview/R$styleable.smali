.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I = null

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x3

.field public static final RecyclerView_spanCount:I = 0x2

.field public static final RecyclerView_stackFromEnd:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xc4t 0x0t 0x1t 0x1t
        0x50t 0x1t 0x1t 0x7ft
        0x51t 0x1t 0x1t 0x7ft
        0x52t 0x1t 0x1t 0x7ft
        0x53t 0x1t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public abstract Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 9495
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .parameter "positionStart"
    .parameter "itemCount"

    .prologue
    .line 9499
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .parameter "positionStart"
    .parameter "itemCount"
    .parameter "payload"

    .prologue
    .line 9504
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 9505
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .parameter "positionStart"
    .parameter "itemCount"

    .prologue
    .line 9509
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .parameter "fromPosition"
    .parameter "toPosition"
    .parameter "itemCount"

    .prologue
    .line 9517
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .parameter "positionStart"
    .parameter "itemCount"

    .prologue
    .line 9513
    return-void
.end method

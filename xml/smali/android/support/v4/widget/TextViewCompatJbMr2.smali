.class Landroid/support/v4/widget/TextViewCompatJbMr2;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "textView"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "start"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "top"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "end"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "bottom"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 0
    .parameter "textView"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "start"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .parameter "top"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .parameter "end"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .parameter "bottom"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 43
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "textView"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "start"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "top"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "end"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "bottom"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

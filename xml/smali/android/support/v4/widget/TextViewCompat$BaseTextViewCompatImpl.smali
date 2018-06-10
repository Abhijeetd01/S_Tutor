.class Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseTextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 1
    .parameter "textView"

    .prologue
    .line 76
    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatDonut;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .locals 1
    .parameter "textView"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatDonut;->getMinLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
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
    .line 57
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
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
    .line 71
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 72
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
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
    .line 64
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "textView"
    .parameter "resId"
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end parameter

    .prologue
    .line 86
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompatDonut;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 87
    return-void
.end method

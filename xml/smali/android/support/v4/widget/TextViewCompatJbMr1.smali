.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
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
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 31
    .local v0, rtl:Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void

    .line 30
    .end local v0           #rtl:Z
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #rtl:Z
    :cond_1
    move-object v1, p1

    .line 31
    goto :goto_1

    :cond_2
    move-object p1, p3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 2
    .parameter "textView"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 45
    .local v0, rtl:Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 47
    return-void

    .line 44
    .end local v0           #rtl:Z
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #rtl:Z
    :cond_1
    move v1, p1

    .line 45
    goto :goto_1

    :cond_2
    move p1, p3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
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
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 38
    .local v0, rtl:Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .line 37
    .end local v0           #rtl:Z
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #rtl:Z
    :cond_1
    move-object v1, p1

    .line 38
    goto :goto_1

    :cond_2
    move-object p1, p3

    goto :goto_2
.end method

.class Landroid/support/v7/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final COMPAT_OVERLAP_ANCHOR:Z = false

.field private static final TAG:Ljava/lang/String; = "AppCompatPopupWindow"


# instance fields
.field private mOverlapAnchor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "attrs"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "defStyleAttr"
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter "context"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "attrs"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "defStyleAttr"
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end parameter
    .parameter "defStyleRes"
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 58
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow:[I

    invoke-static {p1, p2, v2, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/support/v7/widget/TintTypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setSupportOverlapAnchor(Z)V

    .line 64
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .local v1, sdk:I
    if-eqz p4, :cond_1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 70
    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 72
    sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupAnimationStyle:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupAnimationStyle:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setAnimationStyle(I)V

    .line 79
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 84
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatPopupWindow;->wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V

    .line 86
    :cond_2
    return-void
.end method

.method private static wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V
    .locals 6
    .parameter "popup"

    .prologue
    .line 118
    :try_start_0
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mAnchor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    .local v1, fieldAnchor:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mOnScrollChangedListener"

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 123
    .local v2, fieldListener:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 130
    .local v3, originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    new-instance v4, Landroid/support/v7/widget/AppCompatPopupWindow$1;

    invoke-direct {v4, v1, p0, v3}, Landroid/support/v7/widget/AppCompatPopupWindow$1;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #fieldAnchor:Ljava/lang/reflect/Field;
    .end local v2           #fieldListener:Ljava/lang/reflect/Field;
    .end local v3           #originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AppCompatPopupWindow"

    const-string v5, "Exception while installing workaround OnScrollChangedListener"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getSupportOverlapAnchor()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    .line 166
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/widget/PopupWindowCompat;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    goto :goto_0
.end method

.method public setSupportOverlapAnchor(Z)V
    .locals 1
    .parameter "overlapAnchor"

    .prologue
    .line 154
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    .line 155
    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 90
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 95
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "gravity"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 100
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 105
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 1
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 113
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 114
    return-void
.end method

.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private analyticsButtonCreatedEventName:Ljava/lang/String;

.field private analyticsButtonTappedEventName:Ljava/lang/String;

.field private externalOnClickListener:Landroid/view/View$OnClickListener;

.field private internalOnClickListener:Landroid/view/View$OnClickListener;

.field private overrideCompoundPadding:Z

.field private overrideCompoundPaddingLeft:I

.field private overrideCompoundPaddingRight:I

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"
    .parameter "analyticsButtonCreatedEventName"
    .parameter "analyticsButtonTappedEventName"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultStyleResource()I

    move-result p4

    .line 68
    :cond_0
    if-nez p4, :cond_1

    sget p4, Lcom/facebook/R$style;->com_facebook_button:I

    .line 69
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private logButtonCreated(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 224
    .local v0, logger:Lcom/facebook/appevents/AppEventsLogger;
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 225
    return-void
.end method

.method private logButtonTapped(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 229
    .local v0, logger:Lcom/facebook/appevents/AppEventsLogger;
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method private parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x10100d4

    aput v3, v1, v4

    .line 245
    .local v1, attrsResources:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 253
    .local v2, backgroundResource:I
    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v2           #backgroundResource:I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 256
    .restart local v2       #backgroundResource:I
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 263
    .end local v2           #backgroundResource:I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 260
    :cond_2
    :try_start_2
    sget v3, Lcom/facebook/R$color;->com_facebook_blue:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .prologue
    .line 273
    const/4 v2, 0x5

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 280
    .local v1, attrsResources:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 286
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 287
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 289
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 290
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 286
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 291
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return-void

    .line 294
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 273
    nop

    :array_0
    .array-data 0x4
        0x6ft 0x1t 0x1t 0x1t
        0x6dt 0x1t 0x1t 0x1t
        0x70t 0x1t 0x1t 0x1t
        0x6et 0x1t 0x1t 0x1t
        0x71t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method private parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 303
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 309
    .local v1, attrsResources:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 316
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 317
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 318
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 319
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 315
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    return-void

    .line 321
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 303
    :array_0
    .array-data 0x4
        0xd6t 0x0t 0x1t 0x1t
        0xd7t 0x0t 0x1t 0x1t
        0xd8t 0x0t 0x1t 0x1t
        0xd9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 330
    new-array v3, v9, [I

    const v6, 0x1010098

    aput v6, v3, v8

    .line 333
    .local v3, colorResources:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v3, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 339
    .local v2, colorAttrs:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    new-array v5, v9, [I

    const v6, 0x10100af

    aput v6, v5, v8

    .line 346
    .local v5, gravityResources:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v5, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 352
    .local v4, gravityAttrs:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/16 v7, 0x11

    :try_start_1
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    const/4 v6, 0x3

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 361
    .local v1, attrsResources:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 367
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 368
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    return-void

    .line 341
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrsResources:[I
    .end local v4           #gravityAttrs:Landroid/content/res/TypedArray;
    .end local v5           #gravityResources:[I
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 354
    .restart local v4       #gravityAttrs:Landroid/content/res/TypedArray;
    .restart local v5       #gravityResources:[I
    :catchall_1
    move-exception v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 371
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #attrsResources:[I
    :catchall_2
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 356
    :array_0
    .array-data 0x4
        0x95t 0x0t 0x1t 0x1t
        0x97t 0x0t 0x1t 0x1t
        0x4ft 0x1t 0x1t 0x1t
    .end array-data
.end method

.method private setupOnClickListener()V
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method


# virtual methods
.method protected callExternalOnClickListener(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 209
    invoke-direct {p0}, Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V

    .line 210
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, context:Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 183
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0

    .line 186
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 187
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    return-object v0

    .line 189
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unable to get Activity."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 170
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 177
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected measureTextWidth(Ljava/lang/String;)I
    .locals 2
    .parameter "text"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 133
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookButtonBase;->logButtonCreated(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    move v0, v10

    .line 141
    .local v0, centered:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v2

    .line 150
    .local v2, compoundPaddingLeft:I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v3

    .line 151
    .local v3, compoundPaddingRight:I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v1

    .line 152
    .local v1, compoundDrawablePadding:I
    add-int v9, v2, v1

    .line 153
    .local v9, textX:I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v12

    sub-int/2addr v12, v9

    sub-int v6, v12, v3

    .line 154
    .local v6, textContentWidth:I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, textWidth:I
    sub-int v12, v6, v8

    div-int/lit8 v7, v12, 0x2

    .line 156
    .local v7, textPaddingWidth:I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v12

    sub-int v12, v2, v12

    div-int/lit8 v4, v12, 0x2

    .line 157
    .local v4, imagePaddingWidth:I
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 158
    .local v5, inset:I
    sub-int v12, v2, v5

    iput v12, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 159
    add-int v12, v3, v5

    iput v12, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 160
    iput-boolean v10, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 162
    .end local v1           #compoundDrawablePadding:I
    .end local v2           #compoundPaddingLeft:I
    .end local v3           #compoundPaddingRight:I
    .end local v4           #imagePaddingWidth:I
    .end local v5           #inset:I
    .end local v6           #textContentWidth:I
    .end local v7           #textPaddingWidth:I
    .end local v8           #textWidth:I
    .end local v9           #textX:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    iput-boolean v11, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 164
    return-void

    .end local v0           #centered:Z
    :cond_1
    move v0, v11

    .line 140
    goto :goto_0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 98
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 85
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 86
    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    .line 119
    return-void
.end method

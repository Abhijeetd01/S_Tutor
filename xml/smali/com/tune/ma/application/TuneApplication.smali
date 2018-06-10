.class public Lcom/tune/ma/application/TuneApplication;
.super Landroid/app/Application;
.source "TuneApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/tune/ma/application/TuneActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/tune/ma/application/TuneActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tune/ma/application/TuneApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 13
    :cond_0
    return-void
.end method

.class public Lcom/tune/ma/application/TuneActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "TuneActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 18
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 48
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 33
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/tune/ma/application/TuneActivity;->onResume(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 43
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 22
    invoke-static {p1}, Lcom/tune/ma/application/TuneActivity;->onStart(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 37
    invoke-static {p1}, Lcom/tune/ma/application/TuneActivity;->onStop(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

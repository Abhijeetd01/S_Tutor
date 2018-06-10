.class public interface abstract annotation Lorg/androidannotations/annotations/UiThread;
.super Ljava/lang/Object;
.source "UiThread.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/UiThread;
        delay = 0x0L
        id = ""
        propagation = .enum Lorg/androidannotations/annotations/UiThread$Propagation;->ENQUEUE:Lorg/androidannotations/annotations/UiThread$Propagation;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/annotations/UiThread$Propagation;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract delay()J
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract propagation()Lorg/androidannotations/annotations/UiThread$Propagation;
.end method

.class public interface abstract annotation Lorg/androidannotations/annotations/WakeLock;
.super Ljava/lang/Object;
.source "WakeLock.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/WakeLock;
        flags = {}
        level = .enum Lorg/androidannotations/annotations/WakeLock$Level;->PARTIAL_WAKE_LOCK:Lorg/androidannotations/annotations/WakeLock$Level;
        tag = "NO_TAG"
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/annotations/WakeLock$Flag;,
        Lorg/androidannotations/annotations/WakeLock$Level;
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


# static fields
.field public static final DEFAULT_TAG:Ljava/lang/String; = "NO_TAG"


# virtual methods
.method public abstract flags()[Lorg/androidannotations/annotations/WakeLock$Flag;
.end method

.method public abstract level()Lorg/androidannotations/annotations/WakeLock$Level;
.end method

.method public abstract tag()Ljava/lang/String;
.end method

.class public interface abstract annotation Lorg/androidannotations/annotations/IgnoreWhen;
.super Ljava/lang/Object;
.source "IgnoreWhen.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/annotations/IgnoreWhen$State;
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
.method public abstract value()Lorg/androidannotations/annotations/IgnoreWhen$State;
.end method

.class public interface abstract annotation Lorg/androidannotations/annotations/EBean;
.super Ljava/lang/Object;
.source "EBean.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/EBean;
        scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Default:Lorg/androidannotations/annotations/EBean$Scope;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/annotations/EBean$Scope;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract scope()Lorg/androidannotations/annotations/EBean$Scope;
.end method

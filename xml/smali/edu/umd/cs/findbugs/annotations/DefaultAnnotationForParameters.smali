.class public interface abstract annotation Ledu/umd/cs/findbugs/annotations/DefaultAnnotationForParameters;
.super Ljava/lang/Object;
.source "DefaultAnnotationForParameters.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ledu/umd/cs/findbugs/annotations/DefaultAnnotationForParameters;
        confidence = .enum Ledu/umd/cs/findbugs/annotations/Confidence;->MEDIUM:Ledu/umd/cs/findbugs/annotations/Confidence;
        priority = .enum Ledu/umd/cs/findbugs/annotations/Priority;->MEDIUM:Ledu/umd/cs/findbugs/annotations/Priority;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract confidence()Ledu/umd/cs/findbugs/annotations/Confidence;
.end method

.method public abstract priority()Ledu/umd/cs/findbugs/annotations/Priority;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract value()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

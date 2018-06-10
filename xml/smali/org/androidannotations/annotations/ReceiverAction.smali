.class public interface abstract annotation Lorg/androidannotations/annotations/ReceiverAction;
.super Ljava/lang/Object;
.source "ReceiverAction.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/ReceiverAction;
        dataSchemes = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/annotations/ReceiverAction$Extra;
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
.method public abstract actions()[Ljava/lang/String;
.end method

.method public abstract dataSchemes()[Ljava/lang/String;
.end method

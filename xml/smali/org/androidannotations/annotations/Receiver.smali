.class public interface abstract annotation Lorg/androidannotations/annotations/Receiver;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/Receiver;
        dataSchemes = {}
        local = false
        registerAt = .enum Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnCreateOnDestroy:Lorg/androidannotations/annotations/Receiver$RegisterAt;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/annotations/Receiver$Extra;,
        Lorg/androidannotations/annotations/Receiver$RegisterAt;
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

.method public abstract local()Z
.end method

.method public abstract registerAt()Lorg/androidannotations/annotations/Receiver$RegisterAt;
.end method

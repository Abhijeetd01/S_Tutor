.class public interface abstract annotation Lorg/androidannotations/annotations/Background;
.super Ljava/lang/Object;
.source "Background.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/Background;
        delay = 0x0L
        id = ""
        serial = ""
    .end subannotation
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

.method public abstract serial()Ljava/lang/String;
.end method

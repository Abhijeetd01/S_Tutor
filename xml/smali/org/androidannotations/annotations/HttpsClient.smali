.class public interface abstract annotation Lorg/androidannotations/annotations/HttpsClient;
.super Ljava/lang/Object;
.source "HttpsClient.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/HttpsClient;
        allowAllHostnames = true
        keyStore = -0x1
        keyStorePwd = "changeit"
        keyStoreResName = ""
        trustStore = -0x1
        trustStorePwd = "changeit"
        trustStoreResName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DEFAULT_PASSWD:Ljava/lang/String; = "changeit"


# virtual methods
.method public abstract allowAllHostnames()Z
.end method

.method public abstract keyStore()I
.end method

.method public abstract keyStorePwd()Ljava/lang/String;
.end method

.method public abstract keyStoreResName()Ljava/lang/String;
.end method

.method public abstract trustStore()I
.end method

.method public abstract trustStorePwd()Ljava/lang/String;
.end method

.method public abstract trustStoreResName()Ljava/lang/String;
.end method

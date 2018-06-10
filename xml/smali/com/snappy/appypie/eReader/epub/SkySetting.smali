.class public Lcom/snappy/appypie/eReader/epub/SkySetting;
.super Ljava/lang/Object;
.source "SkySetting.java"


# static fields
.field public static storageDirectory:Ljava/lang/String;


# instance fields
.field public allow3G:Z

.field public background:I

.field public bookCode:I

.field public brightness:D

.field public doublePaged:Z

.field public fontName:Ljava/lang/String;

.field public fontSize:I

.field public foreground:I

.field public globalPagination:Z

.field public lineSpacing:I

.field public lockRotation:Z

.field public theme:I

.field public transitionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/snappy/appypie/eReader/epub/SkySetting;->storageDirectory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/snappy/appypie/eReader/epub/SkySetting;->storageDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static setStorageDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "directory"
    .parameter "appName"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snappy/appypie/eReader/epub/SkySetting;->storageDirectory:Ljava/lang/String;

    .line 26
    return-void
.end method

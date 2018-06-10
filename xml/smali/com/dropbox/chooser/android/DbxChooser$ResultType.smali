.class public final enum Lcom/dropbox/chooser/android/DbxChooser$ResultType;
.super Ljava/lang/Enum;
.source "DbxChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/chooser/android/DbxChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/chooser/android/DbxChooser$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/chooser/android/DbxChooser$ResultType;

.field public static final enum DIRECT_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

.field public static final enum FILE_CONTENT:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

.field public static final enum PREVIEW_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;


# instance fields
.field final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    const-string v1, "PREVIEW_LINK"

    const-string v2, "com.dropbox.android.intent.action.GET_PREVIEW"

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/chooser/android/DbxChooser$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->PREVIEW_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    .line 43
    new-instance v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    const-string v1, "DIRECT_LINK"

    const-string v2, "com.dropbox.android.intent.action.GET_DIRECT"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/chooser/android/DbxChooser$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->DIRECT_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    .line 44
    new-instance v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    const-string v1, "FILE_CONTENT"

    const-string v2, "com.dropbox.android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1, v5, v2}, Lcom/dropbox/chooser/android/DbxChooser$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->FILE_CONTENT:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    sget-object v1, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->PREVIEW_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->DIRECT_LINK:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->FILE_CONTENT:Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->$VALUES:[Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->action:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/chooser/android/DbxChooser$ResultType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/dropbox/chooser/android/DbxChooser$ResultType;->$VALUES:[Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    invoke-virtual {v0}, [Lcom/dropbox/chooser/android/DbxChooser$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/chooser/android/DbxChooser$ResultType;

    return-object v0
.end method

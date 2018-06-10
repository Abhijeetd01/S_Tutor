.class Lcom/facebook/share/internal/ShareContentValidation$Validator;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Validator"
.end annotation


# instance fields
.field private isOpenGraphContent:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenGraphContent()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return v0
.end method

.method public validate(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 0
    .parameter "linkContent"

    .prologue
    .line 324
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$500(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 325
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V
    .locals 0
    .parameter "openGraphAction"

    .prologue
    .line 341
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$900(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 342
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V
    .locals 1
    .parameter "openGraphContent"

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    .line 337
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$800(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 338
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V
    .locals 0
    .parameter "openGraphObject"

    .prologue
    .line 345
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1000(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 346
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .locals 0
    .parameter "openGraphValueContainer"
    .parameter "requireNamespace"

    .prologue
    .line 350
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/ShareContentValidation;->access$1100(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    .line 351
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 354
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1200(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 355
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 0
    .parameter "photoContent"

    .prologue
    .line 328
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$600(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 329
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideo;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 358
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1300(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 359
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 0
    .parameter "videoContent"

    .prologue
    .line 332
    #calls: Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$700(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 333
    return-void
.end method

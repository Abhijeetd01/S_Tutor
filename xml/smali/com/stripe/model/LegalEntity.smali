.class public Lcom/stripe/model/LegalEntity;
.super Lcom/stripe/model/StripeObject;
.source "LegalEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/model/LegalEntity$Owner;,
        Lcom/stripe/model/LegalEntity$Verification;,
        Lcom/stripe/model/LegalEntity$DateOfBirth;
    }
.end annotation


# instance fields
.field additionalOwners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/LegalEntity$Owner;",
            ">;"
        }
    .end annotation
.end field

.field address:Lcom/stripe/model/Address;

.field businessName:Ljava/lang/String;

.field businessTaxIdProvided:Ljava/lang/Boolean;

.field dob:Lcom/stripe/model/LegalEntity$DateOfBirth;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field personalAddress:Lcom/stripe/model/Address;

.field personalIdNumberProvided:Ljava/lang/Boolean;

.field ssnLast4Provided:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ssn_last_4_provided"
    .end annotation
.end field

.field type:Ljava/lang/String;

.field verification:Lcom/stripe/model/LegalEntity$Verification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/stripe/model/StripeObject;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 82
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/stripe/model/LegalEntity;

    .line 86
    .local v0, le:Lcom/stripe/model/LegalEntity;
    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->address:Lcom/stripe/model/Address;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->address:Lcom/stripe/model/Address;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->businessName:Ljava/lang/String;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->businessName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->dob:Lcom/stripe/model/LegalEntity$DateOfBirth;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->dob:Lcom/stripe/model/LegalEntity$DateOfBirth;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->firstName:Ljava/lang/String;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->firstName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->lastName:Ljava/lang/String;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->lastName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->personalAddress:Lcom/stripe/model/Address;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->personalAddress:Lcom/stripe/model/Address;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->personalIdNumberProvided:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->personalIdNumberProvided:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->ssnLast4Provided:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->ssnLast4Provided:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->verification:Lcom/stripe/model/LegalEntity$Verification;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->verification:Lcom/stripe/model/LegalEntity$Verification;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/stripe/model/LegalEntity;->additionalOwners:Ljava/util/List;

    iget-object v4, v0, Lcom/stripe/model/LegalEntity;->additionalOwners:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/stripe/model/LegalEntity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAdditionalOwners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/model/LegalEntity$Owner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->additionalOwners:Ljava/util/List;

    return-object v0
.end method

.method public getAddress()Lcom/stripe/model/Address;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->address:Lcom/stripe/model/Address;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->businessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessTaxIdProvided()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->businessTaxIdProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDob()Lcom/stripe/model/LegalEntity$DateOfBirth;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->dob:Lcom/stripe/model/LegalEntity$DateOfBirth;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalAddress()Lcom/stripe/model/Address;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->personalAddress:Lcom/stripe/model/Address;

    return-object v0
.end method

.method public getPersonalIdNumberProvided()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->personalIdNumberProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSsnLast4Provided()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->ssnLast4Provided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVerification()Lcom/stripe/model/LegalEntity$Verification;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/stripe/model/LegalEntity;->verification:Lcom/stripe/model/LegalEntity$Verification;

    return-object v0
.end method

.method public setBusinessTaxIdProvided(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "businessTaxIdProvided"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/stripe/model/LegalEntity;->businessTaxIdProvided:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method public setPersonalIdNumberProvided(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "personalIdNumberProvided"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/stripe/model/LegalEntity;->personalIdNumberProvided:Ljava/lang/Boolean;

    .line 62
    return-void
.end method

.method public setSsnLast4Provided(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "ssnLast4Provided"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/stripe/model/LegalEntity;->ssnLast4Provided:Ljava/lang/Boolean;

    .line 68
    return-void
.end method

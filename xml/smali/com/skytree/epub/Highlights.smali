.class public Lcom/skytree/epub/Highlights;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skytree/epub/Highlights;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHighlight(Lcom/skytree/epub/Highlight;)V
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/Highlights;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHighlight(I)Lcom/skytree/epub/Highlight;
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/Highlights;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skytree/epub/Highlight;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/Highlights;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/Highlights;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeHighlight(I)V
    .locals 1

    iget-object v0, p0, Lcom/skytree/epub/Highlights;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

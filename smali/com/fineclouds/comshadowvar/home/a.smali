.class public Lcom/fineclouds/spaceghostq1/home/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DualHomeAdapter.java"

# interfaces
.implements Lcom/fineclouds/spaceghostq1/dual/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/home/a$b;,
        Lcom/fineclouds/spaceghostq1/home/a$a;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Lcom/fineclouds/spaceghostq1/c$d;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/fineclouds/spaceghostq1/home/a;->c:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/fineclouds/spaceghostq1/home/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$d;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->b:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/home/a;->e:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/home/a;->f:Lcom/fineclouds/spaceghostq1/c$d;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/home/a;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/home/a;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/fineclouds/spaceghostq1/home/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/home/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/fineclouds/spaceghostq1/home/a;)Lcom/fineclouds/spaceghostq1/c$d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->f:Lcom/fineclouds/spaceghostq1/c$d;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 179
    const-string v0, "DualHomeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemDismiss: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/home/a;->notifyItemRemoved(I)V

    .line 182
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 160
    const-string v0, "DualHomeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemMove: fromPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",toPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "DualHomeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemMove: items11="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->g:Z

    .line 163
    if-ge p1, p2, :cond_0

    move v0, p1

    .line 164
    :goto_0
    if-ge v0, p2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 168
    :goto_1
    if-le v0, p2, :cond_1

    .line 169
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 168
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fineclouds/spaceghostq1/home/a;->notifyItemMoved(II)V

    .line 173
    invoke-static {}, Lcom/fineclouds/spaceghostq1/common/a/b;->a()Lcom/fineclouds/spaceghostq1/common/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/b;->a(Ljava/util/List;)V

    .line 174
    const-string v0, "DualHomeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemMove: items22="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 4

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v0, ""

    invoke-static {v0}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/home/a$2;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/home/a$2;-><init>(Lcom/fineclouds/spaceghostq1/home/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 107
    invoke-virtual {v0, v1}, La/d;->a(La/c/b;)La/d;

    move-result-object v0

    const-wide/16 v2, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    invoke-virtual {v0, v2, v3, v1}, La/d;->a(JLjava/util/concurrent/TimeUnit;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/home/a$1;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/home/a$1;-><init>(Lcom/fineclouds/spaceghostq1/home/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 122
    invoke-virtual {v0, v1}, La/d;->a(La/c/b;)La/d;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, La/d;->b()La/k;

    .line 130
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/home/a;->notifyItemInserted(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/home/a;->notifyItemRemoved(I)V

    .line 135
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    sget v0, Lcom/fineclouds/spaceghostq1/home/a;->c:I

    .line 90
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/fineclouds/spaceghostq1/home/a;->d:I

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "DualHomeAdapter"

    const-string v1, "onBindViewHolder: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p2}, Lcom/fineclouds/spaceghostq1/home/a;->getItemViewType(I)I

    move-result v0

    .line 71
    sget v1, Lcom/fineclouds/spaceghostq1/home/a;->c:I

    if-ne v0, v1, :cond_0

    .line 72
    check-cast p1, Lcom/fineclouds/spaceghostq1/home/a$b;

    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/home/a$b;->a(Lcom/fineclouds/spaceghostq1/home/a$b;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a;->f:Lcom/fineclouds/spaceghostq1/c$d;

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-interface {v1, p1, v0}, Lcom/fineclouds/spaceghostq1/c$d;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "DualHomeAdapter"

    const-string v1, "onCreateViewHolder: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget v0, Lcom/fineclouds/spaceghostq1/home/a;->c:I

    if-ne p2, v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    .line 57
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    new-instance v0, Lcom/fineclouds/spaceghostq1/home/a$b;

    invoke-direct {v0, p0, v1}, Lcom/fineclouds/spaceghostq1/home/a$b;-><init>(Lcom/fineclouds/spaceghostq1/home/a;Landroid/view/View;)V

    .line 64
    :goto_0
    return-object v0

    .line 59
    :cond_0
    sget v0, Lcom/fineclouds/spaceghostq1/home/a;->d:I

    if-ne p2, v0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040032

    .line 61
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    new-instance v0, Lcom/fineclouds/spaceghostq1/home/a$a;

    invoke-direct {v0, p0, v1}, Lcom/fineclouds/spaceghostq1/home/a$a;-><init>(Lcom/fineclouds/spaceghostq1/home/a;Landroid/view/View;)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

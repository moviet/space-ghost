.class Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/pm/IntentResolver;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/IntentResolver;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 617
    iput-object p1, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->this$0:Lcom/lody/virtual/server/pm/IntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 619
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->next()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->this$0:Lcom/lody/virtual/server/pm/IntentResolver;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 634
    return-void
.end method

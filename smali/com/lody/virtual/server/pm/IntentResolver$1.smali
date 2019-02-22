.class final Lcom/lody/virtual/server/pm/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    .line 51
    instance-of v0, p1, Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 52
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 53
    check-cast p2, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    .line 62
    :goto_0
    if-le v0, v2, :cond_4

    const/4 v1, -0x1

    :cond_0
    :goto_1
    return v1

    .line 54
    :cond_1
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 56
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 57
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2

    move v0, v1

    .line 58
    :goto_2
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    goto :goto_2

    .line 58
    :cond_3
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    goto :goto_0

    .line 62
    :cond_4
    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

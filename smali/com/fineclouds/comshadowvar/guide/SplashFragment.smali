.class public Lcom/fineclouds/spaceghostq1/guide/SplashFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplashFragment.java"

# interfaces
.implements Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private N()V
    .locals 4

    .prologue
    .line 60
    invoke-static {p0}, Lcom/bumptech/glide/g;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    const v1, 0x7f020066

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/b;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->h()Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/b;

    .line 62
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->a:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 65
    const-string v0, ""

    invoke-static {v0}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-virtual {v0, v2, v3, v1}, La/d;->a(JLjava/util/concurrent/TimeUnit;)La/d;

    move-result-object v0

    .line 67
    invoke-static {}, La/a/b/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->a(La/g;)La/d;

    move-result-object v0

    .line 68
    invoke-static {}, La/a/b/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->b(La/g;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;

    invoke-direct {v1, p0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;-><init>(Lcom/fineclouds/spaceghostq1/guide/SplashFragment;)V

    .line 69
    invoke-virtual {v0, v1}, La/d;->a(La/c/b;)La/d;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    invoke-virtual {v0, v2, v3, v1}, La/d;->a(JLjava/util/concurrent/TimeUnit;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;

    invoke-direct {v1, p0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;-><init>(Lcom/fineclouds/spaceghostq1/guide/SplashFragment;)V

    .line 78
    invoke-virtual {v0, v1}, La/d;->a(La/c/b;)La/d;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, La/d;->b()La/k;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/guide/SplashFragment;)Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    return-object v0
.end method

.method public static b()Lcom/fineclouds/spaceghostq1/guide/SplashFragment;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;-><init>()V

    .line 41
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    const v0, 0x7f04004d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->c:Landroid/widget/RelativeLayout;

    .line 48
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/g;->a(Landroid/app/Activity;I)V

    .line 49
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0101

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->a:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    .line 51
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(I)V

    .line 52
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    invoke-virtual {v0, v3}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(Z)V

    .line 53
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    invoke-virtual {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;)V

    .line 54
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->N()V

    .line 55
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

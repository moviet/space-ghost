.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final FLAG_IS_CLOSING:I = 0x4

.field private static final FLAG_IS_OPENED:I = 0x1

.field private static final FLAG_IS_OPENING:I = 0x2


# instance fields
.field public gravity:I

.field private isPeeking:Z

.field private onScreen:F

.field private openState:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 2181
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2167
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2182
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 2185
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 2186
    iput p3, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2173
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2167
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2175
    # getter for: Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->access$400()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2176
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2178
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 2190
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2167
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2191
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2192
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2195
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2167
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2196
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 2199
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2167
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2200
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method static synthetic access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F
    .locals 0

    .prologue
    .line 2162
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return v0
.end method

.method static synthetic access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I
    .locals 0

    .prologue
    .line 2162
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return p1
.end method

.method static synthetic access$176(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2162
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z
    .locals 0

    .prologue
    .line 2162
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    return p1
.end method

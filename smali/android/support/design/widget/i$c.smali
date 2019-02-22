.class Landroid/support/design/widget/i$c;
.super Landroid/support/design/widget/i$a;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/design/widget/i;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/i;)V
    .locals 1

    .prologue
    .line 253
    iput-object p1, p0, Landroid/support/design/widget/i$c;->b:Landroid/support/design/widget/i;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/i$a;-><init>(Landroid/support/design/widget/i;Landroid/support/design/widget/i$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/i;Landroid/support/design/widget/i$1;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/support/design/widget/i$c;-><init>(Landroid/support/design/widget/i;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/design/widget/i$c;->b:Landroid/support/design/widget/i;

    iget v0, v0, Landroid/support/design/widget/i;->f:F

    return v0
.end method

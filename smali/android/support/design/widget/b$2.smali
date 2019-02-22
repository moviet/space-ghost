.class Landroid/support/design/widget/b$2;
.super Landroid/support/design/widget/BottomSheetBehavior$a;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/design/widget/b$2;->a:Landroid/support/design/widget/b;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/design/widget/b$2;->a:Landroid/support/design/widget/b;

    invoke-virtual {v0}, Landroid/support/design/widget/b;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

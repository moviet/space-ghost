.class public Landroid/support/design/widget/BottomSheetDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/support/design/widget/b;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/b;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

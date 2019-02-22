.class Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/common/view/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/common/view/RippleView;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/view/RippleView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;->a:Lcom/fineclouds/spaceghostq1/common/view/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;->a:Lcom/fineclouds/spaceghostq1/common/view/RippleView;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->invalidate()V

    .line 85
    return-void
.end method

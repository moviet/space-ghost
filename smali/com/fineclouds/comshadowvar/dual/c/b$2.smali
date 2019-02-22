.class Lcom/fineclouds/spaceghostq1/dual/c/b$2;
.super Ljava/lang/Object;
.source "DualSpacePresenterImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/b;->c(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/dual/c/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$2;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$2;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$2;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b(I)V

    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 120
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$2;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$2;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 121
    return-void
.end method

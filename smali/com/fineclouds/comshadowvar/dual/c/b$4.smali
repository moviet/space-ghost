.class Lcom/fineclouds/spaceghostq1/dual/c/b$4;
.super Ljava/lang/Object;
.source "DualSpacePresenterImpl.java"

# interfaces
.implements La/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/dual/c/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    const/16 v0, 0x8

    .line 185
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-boolean v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f:Z

    if-eqz v1, :cond_0

    .line 186
    const/16 v0, 0x28

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c:Ljava/lang/String;

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/dual/c/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v2, v2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lody/virtual/client/core/VirtualCore;->installApp(Ljava/lang/String;I)Lcom/lody/virtual/helper/proto/InstallResult;

    .line 194
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Ljava/lang/Long;)V

    .line 195
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->c(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/dual/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/c/a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/b/c/f;

    .line 196
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$4;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/dual/c/b;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->c(Landroid/content/Context;Z)V

    .line 197
    return-void
.end method

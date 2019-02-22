.class public Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShortCutActivity.java"

# interfaces
.implements Lcom/fineclouds/spaceghostq1/c$c;


# instance fields
.field private m:Lcom/fineclouds/spaceghostq1/c$d;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/c$d;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->m:Lcom/fineclouds/spaceghostq1/c$d;

    .line 86
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/fineclouds/spaceghostq1/c$d;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->a(Lcom/fineclouds/spaceghostq1/c$d;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    const-string v0, "ShortCutActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFinish: flag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    const/4 v0, 0x0

    .line 49
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 51
    iget-object v3, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const/4 v1, 0x1

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 57
    :goto_1
    const-string v3, "ShortCutActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFinish: model="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->m:Lcom/fineclouds/spaceghostq1/c$d;

    invoke-interface {v0, v1}, Lcom/fineclouds/spaceghostq1/c$d;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 63
    :goto_2
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->finish()V

    .line 64
    invoke-virtual {p0, v2, v2}, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->n:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    move-object v1, v0

    move v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/fineclouds/spaceghostq1/common/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->n:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-direct {v0, p0, p0}, Lcom/fineclouds/spaceghostq1/dual/c/b;-><init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$c;)V

    .line 37
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/ShortCutActivity;->m:Lcom/fineclouds/spaceghostq1/c$d;

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/c$d;->a()V

    .line 38
    return-void
.end method

.class public Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ai:Landroid/widget/ImageView;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/ImageView;

.field private al:Landroid/widget/Button;

.field private am:Landroid/widget/Button;

.field private an:Lcom/fineclouds/spaceghostq1/dual/c/b;

.field private ao:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

.field private ap:I

.field private aq:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;I)Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v2, "AppModel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    const-string v2, "AppModel_Position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->g(Landroid/os/Bundle;)V

    .line 46
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const v7, 0x7f08007b

    const v6, 0x7f08007a

    const v4, 0x7f020052

    const/4 v5, 0x0

    .line 58
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090112

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->h()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    const-string v0, "AppModel"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ao:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 63
    const-string v0, "AppModel_Position"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ap:I

    .line 65
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "layout_inflater"

    .line 66
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    const v2, 0x7f040031

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    const v0, 0x7f0d00d3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ak:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0d00d4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ai:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0d00d5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->aj:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0d00d6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->al:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0d00d7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->am:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->am:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->al:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->am:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->al:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ak:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ai:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->aq:Landroid/content/Context;

    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ao:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v4, v4, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fineclouds/spaceghostq1/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->aj:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->aq:Landroid/content/Context;

    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ao:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v4, v4, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fineclouds/spaceghostq1/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 86
    const-string v0, "SelectMenuDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v1
.end method

.method public a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/dual/c/b;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->aq:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->an:Lcom/fineclouds/spaceghostq1/dual/c/b;

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-void

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->a()V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->an:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->aq:Landroid/content/Context;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ao:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 102
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->a()V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->an:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ao:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget v2, p0, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->ap:I

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;I)V

    .line 106
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->a()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x7f0d00d3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

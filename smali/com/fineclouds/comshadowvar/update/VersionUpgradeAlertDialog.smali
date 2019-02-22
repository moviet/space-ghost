.class public Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;
.super Landroid/app/DialogFragment;
.source "VersionUpgradeAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 40
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 119
    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 120
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 122
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v3, "DualSpace.apk"

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 124
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/Download/PrivacySpace.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 129
    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/update/c;->a(J)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->a()V

    .line 101
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->dismiss()V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->dismiss()V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->a:Ljava/lang/String;

    .line 48
    const-string v1, "download_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->b:Ljava/lang/String;

    .line 49
    const-string v1, "release_notes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->c:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 61
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090112

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    const v1, 0x7f04002f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 68
    const v0, 0x7f0d00ca

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    const-string v1, "V%c.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060048

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f0d00d0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/VersionUpgradeAlertDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f0d00cc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0d00cd

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    return-object v2
.end method

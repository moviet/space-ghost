.class public Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NavSettingActivity.java"


# instance fields
.field private m:I

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->n:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    const v1, 0x7f0d0070

    .line 51
    const v0, 0x1020002

    iput v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->m:I

    .line 52
    invoke-virtual {p0, v1}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iput v1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->m:I

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->f()Landroid/support/v4/app/n;

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->l()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 60
    iget v2, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->m:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 61
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    .line 63
    :cond_1
    return-void
.end method

.method private l()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->m()I

    move-result v1

    .line 68
    packed-switch v1, :pswitch_data_0

    .line 97
    :goto_0
    :pswitch_0
    return-object v0

    .line 77
    :pswitch_1
    invoke-static {}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->a()Lfineclouds/com/mylibrary/feedback/FeedBackFragment;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-static {}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a()Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    move-result-object v0

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private m()I
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    const-string v1, "fragment_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 148
    invoke-static {p0}, Lfineclouds/com/mylibrary/c/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {p0}, Lfineclouds/com/mylibrary/c/b;->b(Landroid/content/Context;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfineclouds/com/mylibrary/c/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->k()V

    .line 47
    iput-object p0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->n:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {p0}, Lfineclouds/com/mylibrary/c/b;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060015

    .line 124
    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->a(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$2;-><init>(Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;)V

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$1;-><init>(Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->b()Landroid/support/v7/app/c;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

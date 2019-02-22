.class public Lcom/fineclouds/spaceghostq1/DualMainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DualMainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$a;
.implements Lfineclouds/com/mylibrary/b/a;


# instance fields
.field private m:Landroid/support/v4/widget/DrawerLayout;

.field private n:Landroid/support/v7/widget/Toolbar;

.field private o:Landroid/support/design/widget/NavigationView;

.field private p:Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 189
    new-instance v0, Lcom/fineclouds/spaceghostq1/DualMainActivity$2;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity$2;-><init>(Lcom/fineclouds/spaceghostq1/DualMainActivity;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->q:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/support/design/widget/NavigationView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Landroid/support/design/widget/NavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setVerticalScrollBarEnabled(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->q:Landroid/os/Handler;

    new-instance v1, Lcom/fineclouds/spaceghostq1/DualMainActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/DualMainActivity$1;-><init>(Lcom/fineclouds/spaceghostq1/DualMainActivity;Landroid/content/Intent;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m:Landroid/support/v4/widget/DrawerLayout;

    .line 59
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->n:Landroid/support/v7/widget/Toolbar;

    .line 60
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->o:Landroid/support/design/widget/NavigationView;

    .line 61
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->n:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 76
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->o:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/NavigationView;->a(Landroid/support/design/widget/NavigationView$a;)V

    .line 77
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->o:Landroid/support/design/widget/NavigationView;

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->a(Landroid/support/design/widget/NavigationView;)V

    .line 78
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/g;->a(Landroid/app/Activity;I)V

    .line 79
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const v3, 0x7f0d00e6

    .line 82
    invoke-static {}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->N()Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->p:Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;

    .line 83
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->f()Landroid/support/v4/app/n;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v3}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->p:Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;

    const-string v2, "DualHomeFragment"

    .line 87
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    .line 91
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 164
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->p()Landroid/content/Intent;

    move-result-object v0

    .line 168
    new-instance v1, Lfineclouds/com/mylibrary/b/c;

    invoke-direct {v1, p0, v0, p0}, Lfineclouds/com/mylibrary/b/c;-><init>(Landroid/content/Context;Landroid/content/Intent;Lfineclouds/com/mylibrary/b/a;)V

    .line 169
    invoke-virtual {v1}, Lfineclouds/com/mylibrary/b/c;->show()V

    .line 170
    return-void
.end method

.method private p()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 173
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 176
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const-string v0, "text/plain"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    return-object v2
.end method


# virtual methods
.method public a(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->p()Landroid/content/Intent;

    move-result-object v0

    .line 199
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 107
    const v2, 0x7f0d0106

    if-ne v1, v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "flank_model_click"

    const-string v2, "item"

    const-string v3, "nav_share"

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->o()V

    .line 148
    :cond_0
    :goto_0
    return v5

    .line 111
    :cond_1
    const v2, 0x7f0d0107

    if-ne v1, v2, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "flank_model_click"

    const-string v3, "item"

    const-string v4, "nav_feedback"

    invoke-static {v1, v2, v3, v4}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-class v1, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    const-string v1, "fragment_id"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->n()V

    .line 146
    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_3
    const v2, 0x7f0d0108

    if-ne v1, v2, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "flank_model_click"

    const-string v2, "item"

    const-string v3, "nav_comment"

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.finsky.activities.LaunchUrlHandlerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_2
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->n()V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&hl=en"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 133
    :cond_4
    const v2, 0x7f0d0109

    if-ne v1, v2, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "flank_model_click"

    const-string v3, "item"

    const-string v4, "nav_about"

    invoke-static {v1, v2, v3, v4}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-class v1, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    const-string v1, "fragment_id"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 138
    :cond_5
    const v2, 0x7f0d010a

    if-ne v1, v2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "flank_model_click"

    const-string v3, "item"

    const-string v4, "nav_help"

    invoke-static {v1, v2, v3, v4}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class v1, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    const-string v1, "fragment_id"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public k()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 185
    const-string v0, "DualMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity;->p:Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a(IILandroid/content/Intent;)V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->l()V

    .line 48
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->m()V

    .line 49
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/c;->a(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/fineclouds/spaceghostq1/a/a;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/a/a;->b()V

    .line 51
    const-string v0, "C"

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/fineclouds/spaceghostq1/update/b;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/update/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/update/b;->a(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->b(Landroid/content/Context;Z)V

    .line 217
    return-void
.end method

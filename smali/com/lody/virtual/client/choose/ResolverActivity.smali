.class public Lcom/lody/virtual/client/choose/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;,
        Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;,
        Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;,
        Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;,
        Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field protected mOptions:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field protected mRequestCode:I

.field protected mResultWho:Ljava/lang/String;

.field private mShowExtended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLastSelected:I

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/choose/ResolverActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lody/virtual/client/choose/ResolverActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lody/virtual/client/choose/ResolverActivity;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lody/virtual/client/choose/ResolverActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/lody/virtual/client/choose/ResolverActivity;)Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 184
    :try_start_0
    iget v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 202
    if-eqz v0, :cond_2

    .line 203
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 211
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "ResolverActivity"

    const-string v2, "Couldn\'t find resources for package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 84
    invoke-direct {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 86
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v1, "android.intent.category.HOME"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget v0, Lcom/lody/virtual/R$string;->choose:I

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 96
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->getCallingUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    .line 95
    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/choose/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V

    .line 97
    return-void

    .line 92
    :cond_0
    sget v0, Lcom/lody/virtual/R$string;->choose:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput p7, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLaunchedFromUid:I

    .line 104
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 105
    iput-boolean p6, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysUseOption:Z

    .line 106
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lody/virtual/R$integer;->config_maxResolverActivityColumns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mMaxColumns:I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRegistered:Z

    .line 110
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mIconDpi:I

    .line 112
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mIconSize:I

    .line 114
    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    iget v6, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    .line 116
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 118
    iget v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLaunchedFromUid:I

    if-gez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->finish()V

    .line 170
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->startSelected(IZ)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRegistered:Z

    .line 129
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->finish()V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 135
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 140
    if-eqz p6, :cond_2

    .line 141
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 146
    :cond_2
    :goto_1
    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/choose/ResolverActivity$1;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 144
    :cond_3
    sget v0, Lcom/lody/virtual/R$string;->noApplications:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 178
    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 10

    .prologue
    const/high16 v6, 0x600000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 287
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    .line 294
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 300
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v4, 0xfff0000

    and-int/2addr v0, v4

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 302
    if-ne v0, v6, :cond_f

    .line 303
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 304
    if-eqz v4, :cond_f

    .line 306
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 313
    :goto_1
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 317
    if-ne v0, v6, :cond_2

    const-string v0, "file"

    .line 318
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "content"

    .line 319
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 320
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_8

    .line 325
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_4

    .line 327
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 328
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    .line 330
    invoke-virtual {v0, v6}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 331
    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 336
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 337
    if-eqz v3, :cond_6

    .line 338
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 340
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v6

    if-ltz v6, :cond_5

    .line 341
    invoke-virtual {v0}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v3

    .line 342
    invoke-virtual {v0}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v6

    if-ltz v3, :cond_9

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_2
    invoke-virtual {v4, v6, v0}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_6
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 349
    if-eqz v3, :cond_8

    .line 350
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 351
    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    .line 353
    invoke-virtual {v0, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 354
    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 363
    :cond_8
    if-eqz v4, :cond_b

    .line 364
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 365
    new-array v6, v5, [Landroid/content/ComponentName;

    move v3, v1

    .line 367
    :goto_3
    if-ge v3, v5, :cond_a

    .line 368
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 369
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v3

    .line 371
    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v1, :cond_e

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 367
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 307
    :catch_0
    move-exception v3

    .line 308
    const-string v4, "ResolverActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v2

    .line 309
    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    .line 343
    goto :goto_2

    .line 373
    :cond_a
    if-eqz p3, :cond_d

    .line 374
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 390
    :cond_b
    :goto_5
    if-eqz p2, :cond_c

    .line 391
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIntentSelected intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    iget-object v3, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mOptions:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mResultWho:Ljava/lang/String;

    iget v5, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRequestCode:I

    iget v6, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lody/virtual/client/local/VActivityManager;->startActivity(Landroid/content/Intent;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    .line 397
    :cond_c
    return-void

    .line 378
    :cond_d
    :try_start_1
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v3, "setLastChosenActivity"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    .line 380
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    .line 381
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    const/4 v4, 0x4

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v5, v1

    .line 378
    invoke-virtual {v0, v3, v5}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 383
    :catch_1
    move-exception v0

    .line 384
    const-string v1, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_4

    :cond_f
    move-object v4, v3

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 261
    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    .line 262
    :goto_0
    iget-boolean v3, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLastSelected:I

    if-eq v3, v2, :cond_3

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 268
    :cond_1
    iput v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLastSelected:I

    .line 272
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 261
    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p0, p3, v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->startSelected(IZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 217
    iget-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRegistered:Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 221
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 246
    iget-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 248
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_0
    iput v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mLastSelected:I

    .line 250
    iget-object v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    iget-object v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 256
    :cond_0
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 226
    iget-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mRegistered:Z

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->finish()V

    .line 241
    :cond_1
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package"

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 401
    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 403
    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method startSelected(IZ)V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 280
    invoke-virtual {p0, v0, v1, p2}, Lcom/lody/virtual/client/choose/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 281
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;->finish()V

    goto :goto_0
.end method

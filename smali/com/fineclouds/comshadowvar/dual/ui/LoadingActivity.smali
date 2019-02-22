.class public Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;
.super Landroid/app/Activity;
.source "LoadingActivity.java"


# instance fields
.field private a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

.field private b:Landroid/content/Intent;

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->c:Z

    .line 41
    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->d:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->e:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;-><init>(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v1, p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/lody/virtual/client/core/VirtualCore;->getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 49
    const-string v1, "LoadingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch: intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v2, "MODEL_ARGUMENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    const-string v2, "KEY_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const-string v0, "KEY_USER"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->c:Z

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 149
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->findAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-direct {p0, p0, v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 158
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    const-string v3, "LoadingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermission permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->c:Z

    .line 167
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 168
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    iget v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v3, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->e:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->e:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 193
    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->c:Z

    return v0
.end method


# virtual methods
.method synthetic a()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->findApp(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {v1, p0, v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Landroid/content/Context;Lcom/lody/virtual/helper/proto/AppSetting;)V

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 73
    :cond_0
    return-void
.end method

.method synthetic a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 74
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/g;->a(Landroid/app/Activity;I)V

    .line 65
    iput-boolean v6, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->d:Z

    .line 66
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MODEL_ARGUMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 68
    invoke-static {}, Lcom/fineclouds/spaceghostq1/virtualapp/a/a;->a()Lorg/jdeferred/android/a;

    move-result-object v0

    invoke-static {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/a;->a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdeferred/android/a;->b(Ljava/lang/Runnable;)Lorg/jdeferred/h;

    move-result-object v0

    invoke-static {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/b;->a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Lorg/jdeferred/e;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lorg/jdeferred/h;->a(Lorg/jdeferred/e;)Lorg/jdeferred/h;

    .line 80
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/lody/virtual/client/core/VirtualCore;->setLoadingPage(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 112
    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 114
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-boolean v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f:Z

    if-nez v1, :cond_1

    .line 116
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v4, v4, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/lody/virtual/client/core/VirtualCore;->preOpt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 122
    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    sub-long v2, v8, v2

    .line 124
    :goto_1
    const-string v1, "LoadingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: start activity after ms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->b:Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    :cond_2
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 122
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 202
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "LoadingActivity"

    const-string v1, "onRequestPermissionsResult: granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1
    iput-boolean v2, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->c:Z

    .line 211
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 208
    :cond_0
    const-string v0, "LoadingActivity"

    const-string v1, "onRequestPermissionsResult fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    const-string v0, "LoadingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mFirstRun:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->d:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->d:Z

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->finish()V

    goto :goto_0
.end method

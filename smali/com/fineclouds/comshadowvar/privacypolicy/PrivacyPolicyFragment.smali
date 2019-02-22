.class public Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;
.super Landroid/support/v4/app/Fragment;
.source "PrivacyPolicyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private ai:Ljava/lang/Runnable;

.field private b:Landroid/view/View;

.field private c:Lcom/fineclouds/spaceghostq1/common/view/b;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/Button;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->e:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->g:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->h:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;-><init>(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->ai:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method private N()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 134
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->c:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->b()V

    .line 137
    return-void
.end method

.method private O()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://almanac.flabcore.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->e:Ljava/lang/String;

    .line 150
    :cond_0
    const-string v0, "PrivacyPolicyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPolicyPageStartUrl: mPrivacyPageInitUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method private P()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public static a()Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;-><init>()V

    .line 65
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    const v0, 0x7f0d00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->i:Landroid/view/ViewGroup;

    .line 86
    const v0, 0x7f0d00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    .line 87
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->c:Lcom/fineclouds/spaceghostq1/common/view/b;

    .line 88
    const v0, 0x7f0d00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 94
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;

    invoke-direct {v1, p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;-><init>(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->g:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->c:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->a()V

    .line 126
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->N()V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    const v0, 0x7f0d0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a:Landroid/widget/TextView;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0d00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->b:Landroid/view/View;

    .line 159
    return-void
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->N()V

    return-void
.end method

.method static synthetic c(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->ai:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Lcom/fineclouds/spaceghostq1/common/view/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->c:Lcom/fineclouds/spaceghostq1/common/view/b;

    return-object v0
.end method

.method static synthetic g(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic h(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f040034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->b(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->P()V

    .line 79
    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->b()V

    .line 81
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 210
    if-nez p1, :cond_1

    .line 240
    :cond_0
    return-void

    .line 213
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    if-eqz v0, :cond_0

    .line 217
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "mCurRootView"

    aput-object v2, v3, v1

    const-string v2, "mServedView"

    aput-object v2, v3, v4

    const/4 v2, 0x2

    const-string v4, "mNextServedView"

    aput-object v4, v3, v2

    move v2, v1

    .line 220
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    .line 221
    aget-object v1, v3, v2

    .line 223
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_3

    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 229
    check-cast v1, Landroid/view/View;

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_3
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 164
    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x7f0d0072
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r()V

    .line 203
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 204
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    .line 197
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 198
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->t()V

    .line 187
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 188
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 189
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->ai:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 191
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->b(Landroid/content/Context;)V

    .line 192
    return-void
.end method

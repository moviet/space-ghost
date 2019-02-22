.class public Lcom/lody/virtual/client/choose/ChooserActivity;
.super Lcom/lody/virtual/client/choose/ResolverActivity;
.source "ChooserActivity.java"


# static fields
.field public static final ACTION:Ljava/lang/String;

.field public static final EXTRA_DATA:Ljava/lang/String; = "android.intent.extra.virtual.data"

.field public static final EXTRA_REQUEST_CODE:Ljava/lang/String; = "android.intent.extra.virtual.request_code"

.field public static final EXTRA_WHO:Ljava/lang/String; = "android.intent.extra.virtual.who"

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/choose/ChooserActivity;->ACTION:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lody/virtual/client/choose/ResolverActivity;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    :try_start_0
    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lody/virtual/client/choose/ChooserActivity;->ACTION:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 36
    :cond_1
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    const-string v0, "android.intent.extra.user_handle"

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 43
    const-string v0, "android.intent.extra.virtual.data"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ChooserActivity;->mOptions:Landroid/os/Bundle;

    .line 44
    const-string v0, "android.intent.extra.virtual.who"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ChooserActivity;->mResultWho:Ljava/lang/String;

    .line 45
    const-string v0, "android.intent.extra.virtual.request_code"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/choose/ChooserActivity;->mRequestCode:I

    .line 46
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 47
    instance-of v0, v2, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target is not an intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ChooserActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 52
    :cond_0
    check-cast v2, Landroid/content/Intent;

    .line 53
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 54
    const-string v0, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate target:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " title:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v8}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    if-nez v3, :cond_1

    .line 56
    sget v0, Lcom/lody/virtual/R$string;->choose:I

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/choose/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_1
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    array-length v0, v8

    new-array v4, v0, [Landroid/content/Intent;

    move v1, v6

    .line 62
    :goto_1
    array-length v0, v8

    if-ge v1, v0, :cond_4

    .line 63
    aget-object v0, v8, v1

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 64
    const-string v0, "ChooseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial intent #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not an Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v8, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ChooserActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_2
    aget-object v0, v8, v1

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v4, v1

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v4, v5

    :cond_4
    move-object v0, p0

    move-object v1, p1

    .line 72
    invoke-super/range {v0 .. v7}, Lcom/lody/virtual/client/choose/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V

    goto/16 :goto_0
.end method

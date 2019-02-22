.class public Lfineclouds/com/mylibrary/a/c/f;
.super Ljava/lang/Object;
.source "UpgradeAPKInfo.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pacakageName"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionName"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadURL"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upgradeContent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lfineclouds/com/mylibrary/a/c/f;->b:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->c:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->d:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->e:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lfineclouds/com/mylibrary/a/c/f;->b:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->c:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->d:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->e:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/f;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "upgrade"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 95
    const-string v0, "pacakageName"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lfineclouds/com/mylibrary/a/c/f;

    invoke-direct {v0, v3}, Lfineclouds/com/mylibrary/a/c/f;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v3, "versionCode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lfineclouds/com/mylibrary/a/c/f;->a(I)V

    .line 99
    const-string v3, "versionName"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfineclouds/com/mylibrary/a/c/f;->b(Ljava/lang/String;)V

    .line 100
    const-string v3, "downloadURL"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfineclouds/com/mylibrary/a/c/f;->c(Ljava/lang/String;)V

    .line 101
    const-string v3, "upgradeContent"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->d(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upgrade"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    const-string v1, "versionCode"

    iget v2, p1, Lfineclouds/com/mylibrary/a/c/f;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "pacakageName"

    iget-object v2, p1, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "versionName"

    iget-object v2, p1, Lfineclouds/com/mylibrary/a/c/f;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "downloadURL"

    iget-object v2, p1, Lfineclouds/com/mylibrary/a/c/f;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "upgradeContent"

    iget-object v2, p1, Lfineclouds/com/mylibrary/a/c/f;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lfineclouds/com/mylibrary/a/c/f;->b:I

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lfineclouds/com/mylibrary/a/c/f;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/f;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/f;->d:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/f;->e:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/c/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__pacakageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__versionName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/c/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__versionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfineclouds/com/mylibrary/a/c/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__downloadURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/c/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

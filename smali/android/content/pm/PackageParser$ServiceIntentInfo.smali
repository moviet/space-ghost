.class public Landroid/content/pm/PackageParser$ServiceIntentInfo;
.super Landroid/content/pm/PackageParser$IntentInfo;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceIntentInfo"
.end annotation


# instance fields
.field public service:Landroid/content/pm/PackageParser$Service;

.field final synthetic this$0:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->this$0:Landroid/content/pm/PackageParser;

    invoke-direct {p0}, Landroid/content/pm/PackageParser$IntentInfo;-><init>()V

    return-void
.end method

.class public final Landroid/content/pm/PackageParser$Permission;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public info:Landroid/content/pm/PermissionInfo;

.field final synthetic this$0:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Landroid/content/pm/PackageParser$Permission;->this$0:Landroid/content/pm/PackageParser;

    invoke-direct {p0}, Landroid/content/pm/PackageParser$Component;-><init>()V

    return-void
.end method

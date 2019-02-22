.class final Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;
.super Ljava/lang/Object;
.source "PatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/core/PatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatchManagerHolder"
.end annotation


# static fields
.field private static sInit:Z

.field private static sPatchManager:Lcom/lody/virtual/client/core/PatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/lody/virtual/client/core/PatchManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/core/PatchManager;-><init>(Lcom/lody/virtual/client/core/PatchManager$1;)V

    sput-object v0, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sPatchManager:Lcom/lody/virtual/client/core/PatchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lody/virtual/client/core/PatchManager;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sPatchManager:Lcom/lody/virtual/client/core/PatchManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sInit:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 217
    sput-boolean p0, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sInit:Z

    return p0
.end method

.class final enum Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReuseTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v1, "AFFINITY"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v1, "DOCUMENT"

    invoke-direct {v0, v1, v4}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v1, "MULTIPLE"

    invoke-direct {v0, v1, v5}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 632
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;
    .locals 1

    .prologue
    .line 632
    const-class v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    return-object v0
.end method

.method public static values()[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    invoke-virtual {v0}, [Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    return-object v0
.end method

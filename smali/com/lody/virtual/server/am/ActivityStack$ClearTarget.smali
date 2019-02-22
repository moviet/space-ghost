.class final enum Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClearTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;


# instance fields
.field deliverIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 617
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 618
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v1, "SPEC_ACTIVITY"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 619
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v1, "TASK"

    invoke-direct {v0, v1, v4, v2}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 620
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v5, v2}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 616
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;IZ)V

    .line 626
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 628
    iput-boolean p3, p0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->deliverIntent:Z

    .line 629
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
    .locals 1

    .prologue
    .line 616
    const-class v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    return-object v0
.end method

.method public static values()[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    invoke-virtual {v0}, [Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    return-object v0
.end method

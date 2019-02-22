.class final enum Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
.super Ljava/lang/Enum;
.source "VirtualCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/core/VirtualCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lody/virtual/client/core/VirtualCore$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v1, "Server"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 444
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v1, "VAppClient"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 448
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v1, "Main"

    invoke-direct {v0, v1, v4}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 452
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v1, "CHILD"

    invoke-direct {v0, v1, v5}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 436
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->$VALUES:[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

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
    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
    .locals 1

    .prologue
    .line 436
    const-class v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    return-object v0
.end method

.method public static values()[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->$VALUES:[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v0}, [Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    return-object v0
.end method

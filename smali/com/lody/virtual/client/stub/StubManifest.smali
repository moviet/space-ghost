.class public Lcom/lody/virtual/client/stub/StubManifest;
.super Ljava/lang/Object;
.source "StubManifest.java"


# static fields
.field public static STUB_ACTIVITY:Ljava/lang/String; = null

.field public static STUB_COUNT:I = 0x0

.field public static STUB_CP:Ljava/lang/String; = null

.field public static STUB_CP_AUTHORITY:Ljava/lang/String; = null

.field public static final STUB_DEF_AUTHORITY:Ljava/lang/String; = "virtual_stub_"

.field public static STUB_DIALOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/lody/virtual/client/stub/StubActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_ACTIVITY:Ljava/lang/String;

    .line 11
    const-class v0, Lcom/lody/virtual/client/stub/StubDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_DIALOG:Ljava/lang/String;

    .line 12
    const-class v0, Lcom/lody/virtual/client/stub/StubContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP:Ljava/lang/String;

    .line 14
    const-string v0, "virtual_stub_"

    sput-object v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP_AUTHORITY:Ljava/lang/String;

    .line 15
    const/16 v0, 0x32

    sput v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStubActivityName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s$C%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/lody/virtual/client/stub/StubManifest;->STUB_ACTIVITY:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStubAuthority(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 30
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP_AUTHORITY:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStubCP(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s$C%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStubDialogName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 22
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s$C%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/lody/virtual/client/stub/StubManifest;->STUB_DIALOG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

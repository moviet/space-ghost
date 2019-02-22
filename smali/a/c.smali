.class public final La/c;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:La/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:La/c$a;

.field private final b:Ljava/lang/Throwable;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, La/c;

    sget-object v1, La/c$a;->c:La/c$a;

    invoke-direct {v0, v1, v2, v2}, La/c;-><init>(La/c$a;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, La/c;->d:La/c;

    return-void
.end method

.method private constructor <init>(La/c$a;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c$a;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, La/c;->c:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, La/c;->b:Ljava/lang/Throwable;

    .line 82
    iput-object p1, p0, La/c;->a:La/c$a;

    .line 83
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, La/c;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, La/c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, La/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, La/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()La/c$a;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, La/c;->a:La/c$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 219
    check-cast p1, La/c;

    .line 220
    invoke-virtual {p1}, La/c;->e()La/c$a;

    move-result-object v2

    invoke-virtual {p0}, La/c;->e()La/c$a;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, La/c;->c:Ljava/lang/Object;

    iget-object v3, p1, La/c;->c:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, La/c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, La/c;->c:Ljava/lang/Object;

    iget-object v3, p1, La/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, La/c;->b:Ljava/lang/Throwable;

    iget-object v3, p1, La/c;->b:Ljava/lang/Throwable;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, La/c;->b:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    iget-object v2, p0, La/c;->b:Ljava/lang/Throwable;

    iget-object v3, p1, La/c;->b:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, La/c;->e()La/c$a;

    move-result-object v0

    sget-object v1, La/c$a;->b:La/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, La/c;->e()La/c$a;

    move-result-object v0

    sget-object v1, La/c$a;->a:La/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, La/c;->e()La/c$a;

    move-result-object v0

    invoke-virtual {v0}, La/c$a;->hashCode()I

    move-result v0

    .line 196
    invoke-virtual {p0}, La/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_0
    invoke-virtual {p0}, La/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/c;->a()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/c;->e()La/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, La/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/c;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {p0}, La/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/c;->a()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

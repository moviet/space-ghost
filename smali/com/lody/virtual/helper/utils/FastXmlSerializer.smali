.class public Lcom/lody/virtual/helper/utils/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 52
    const-string v0, "                                                              "

    sput-object v0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2000

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mText:[C

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 63
    iput-boolean v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mIndent:Z

    .line 66
    iput v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method private append(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 71
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->flush()V

    .line 73
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 77
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 119
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    .line 80
    if-le p3, v1, :cond_1

    .line 81
    add-int v3, p2, p3

    .line 82
    :goto_0
    if-ge p2, v3, :cond_3

    .line 83
    add-int/lit16 v2, p2, 0x2000

    .line 84
    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    move p2, v2

    .line 86
    goto :goto_0

    .line 84
    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    .line 89
    :cond_1
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 90
    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->flush()V

    .line 92
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 94
    :cond_2
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 95
    add-int/2addr v0, p3

    iput v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 96
    :cond_3
    return-void
.end method

.method private append([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    .line 99
    if-le p3, v1, :cond_1

    .line 100
    add-int v3, p2, p3

    .line 101
    :goto_0
    if-ge p2, v3, :cond_3

    .line 102
    add-int/lit16 v2, p2, 0x2000

    .line 103
    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append([CII)V

    move p2, v2

    .line 105
    goto :goto_0

    .line 103
    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    .line 108
    :cond_1
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 109
    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->flush()V

    .line 111
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/2addr v0, p3

    iput v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 115
    :cond_3
    return-void
.end method

.method private appendIndent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    mul-int/lit8 v0, p1, 0x4

    .line 123
    sget-object v1, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 126
    :cond_0
    sget-object v1, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 127
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 131
    sget-object v1, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v3, v1

    .line 132
    sget-object v4, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    move v1, v0

    .line 135
    :goto_0
    if-ge v1, v2, :cond_3

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 137
    if-lt v5, v3, :cond_1

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    aget-object v5, v4, v5

    .line 139
    if-eqz v5, :cond_0

    .line 140
    if-ge v0, v1, :cond_2

    sub-int v6, v1, v0

    invoke-direct {p0, p1, v0, v6}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 141
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 142
    invoke-direct {p0, v5}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_3
    if-ge v0, v1, :cond_4

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 145
    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v1, v0

    .line 149
    sget-object v2, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 150
    add-int v3, p2, p3

    move v0, p2

    .line 153
    :goto_0
    if-ge p2, v3, :cond_3

    .line 154
    aget-char v4, p1, p2

    .line 155
    if-lt v4, v1, :cond_1

    .line 153
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    aget-object v4, v2, v4

    .line 157
    if-eqz v4, :cond_0

    .line 158
    if-ge v0, p2, :cond_2

    sub-int v5, p2, v0

    invoke-direct {p0, p1, v0, v5}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append([CII)V

    .line 159
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 160
    invoke-direct {p0, v4}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_3
    if-ge v0, p2, :cond_4

    sub-int v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append([CII)V

    .line 163
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 231
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 232
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 167
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(C)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 170
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(C)V

    .line 172
    :cond_0
    invoke-direct {p0, p2}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 173
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p3}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 176
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(C)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    .line 178
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->flush()V

    .line 198
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    .line 203
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 217
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    .line 219
    return-object p0

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    if-eqz v0, :cond_1

    .line 207
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->appendIndent(I)V

    .line 209
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 210
    if-eqz p1, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 212
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(C)V

    .line 214
    :cond_2
    invoke-direct {p0, p2}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 215
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mText:[C

    iget v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    invoke-static {v0, v3, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 241
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 243
    :goto_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->flushBytes()V

    .line 247
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->flushBytes()V

    .line 253
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 258
    :goto_1
    iput v3, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    .line 260
    :cond_2
    return-void

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mText:[C

    iget v2, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mPos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 256
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 299
    const-string v0, "http://almanac.flabcore.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mIndent:Z

    .line 301
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 311
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 320
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0

    .line 315
    :catch_1
    move-exception v0

    .line 316
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 325
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    .line 342
    return-void

    .line 340
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 347
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 350
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->appendIndent(I)V

    .line 352
    :cond_1
    iget v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mNesting:I

    .line 353
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(C)V

    .line 354
    if-eqz p1, :cond_2

    .line 355
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 356
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(C)V

    .line 358
    :cond_2
    invoke-direct {p0, p2}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    .line 361
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-boolean v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v1, :cond_0

    .line 380
    const-string v1, ">"

    invoke-direct {p0, v1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 381
    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    .line 383
    :cond_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 384
    iget-boolean v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    .line 387
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-boolean v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v1, :cond_0

    .line 367
    const-string v1, ">"

    invoke-direct {p0, v1}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 368
    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mInTag:Z

    .line 370
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 371
    iget-boolean v1, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v1, :cond_2

    .line 372
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/FastXmlSerializer;->mLineStart:Z

    .line 374
    :cond_2
    return-object p0
.end method

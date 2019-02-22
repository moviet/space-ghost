.class public Lcom/lody/virtual/helper/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field protected static HEX_DIGITS:[C

.field protected static MESSAGE_DIGEST_5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lody/virtual/helper/utils/MD5Utils;->HEX_DIGITS:[C

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lody/virtual/helper/utils/MD5Utils;->MESSAGE_DIGEST_5:Ljava/security/MessageDigest;

    .line 28
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/helper/utils/MD5Utils;->MESSAGE_DIGEST_5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 22
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/lody/virtual/helper/utils/MD5Utils;->HEX_DIGITS:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 67
    sget-object v1, Lcom/lody/virtual/helper/utils/MD5Utils;->HEX_DIGITS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/lody/virtual/helper/utils/MD5Utils;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 59
    add-int v1, p1, p2

    .line 60
    :goto_0
    if-ge p1, v1, :cond_0

    .line 61
    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/lody/virtual/helper/utils/MD5Utils;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 60
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compareFiles(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 39
    sget-object v3, Lcom/lody/virtual/helper/utils/MD5Utils;->MESSAGE_DIGEST_5:Ljava/security/MessageDigest;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 42
    sget-object v0, Lcom/lody/virtual/helper/utils/MD5Utils;->MESSAGE_DIGEST_5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/MD5Utils;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 49
    sget-object v2, Lcom/lody/virtual/helper/utils/MD5Utils;->MESSAGE_DIGEST_5:Ljava/security/MessageDigest;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 52
    sget-object v0, Lcom/lody/virtual/helper/utils/MD5Utils;->MESSAGE_DIGEST_5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/MD5Utils;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

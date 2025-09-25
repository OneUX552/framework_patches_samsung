.class public final Lcom/samsung/android/service/SemService/SemServiceManager;
.super Ljava/lang/Object;
.source "SemServiceManager.java"


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist ERROR_ADD_DEL_LIST:I = -0x10

.field public static final blacklist ERROR_BOOT_DEACT:I = -0x11

.field public static final blacklist ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final blacklist ERROR_DATA:I = -0xd

.field public static final blacklist ERROR_DEACTIVATION:I = -0x12

.field public static final blacklist ERROR_EXCEPTION:I = -0x5a

.field public static final blacklist ERROR_FACTORY_ERROR:I = -0xa

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0xa

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x5b

.field public static final blacklist ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

.field public static final blacklist ERROR_NO_SERVICE:I = -0x5c

.field public static final blacklist ERROR_SELECT_ERROR:I = -0xb

.field public static final blacklist ERROR_SEND_ERROR:I = -0xc

.field public static final blacklist ERROR_UNSAT_LINK:I = -0x3

.field public static final blacklist ESESTATUS_BUSY:I = -0xc8

.field public static final blacklist ESESTATUS_NOT_SUPPORTED:I = -0x64

.field private static final blacklist HEX_CHARS:[C

.field private static final blacklist MAX_CAPDU_SIZE:I = 0x10009

.field private static final blacklist MAX_RAPDU_SIZE:I = 0x10002

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist NO_ERROR_SPI:I = 0x0

.field public static final blacklist SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final blacklist SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_IN_SSD:I = 0x6

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_ServiceManager"

.field private static blacklist cosName:Ljava/lang/String; = null

.field public static final blacklist isSupportSemService:Z = false

.field private static final blacklist normalSpi_Flag:I = 0x0

.field private static final blacklist secureSpi_Flag:I = 0x1


# instance fields
.field private blacklist isSupportSemServiceManager:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSemService:Lcom/samsung/android/service/SemService/ISemService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->AIDDeactivation(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/SemService/SemServiceManager;->parseList([BI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    .line 69
    const-string v0, "JCOP6.3U"

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->cosName:Ljava/lang/String;

    return-void

    nop

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    .line 77
    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    .line 79
    sget-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->cosName:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v1, "SEC_ESE_ServiceManager"

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "SemService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connects to SemService is failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connects to SemService."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void
.end method

.method private blacklist AIDDeactivation(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 988
    .local p1, "AID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 989
    .local v0, "deactivationListCmd":[B
    const/4 v1, 0x0

    .line 990
    .local v1, "baRsp":[B
    const/4 v2, 0x0

    .line 991
    .local v2, "baRspLen":I
    const/4 v3, 0x0

    .line 992
    .local v3, "failFlag":I
    const-string v4, "80F80002"

    .line 994
    .local v4, "strDeactivationListCmd":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v6, "SEC_ESE_ServiceManager"

    if-nez v5, :cond_0

    .line 995
    const-string v5, "SemService is not supported"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/16 v5, -0x5c

    return v5

    .line 999
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1000
    const/4 v7, 0x0

    .line 1002
    .local v7, "appletAID":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1003
    const-string v8, "AID Null Error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1006
    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 1007
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    .line 1008
    .local v8, "tempLen":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%02x"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1010
    .local v10, "aidlen":Ljava/lang/String;
    const-string v4, "80F80002"

    .line 1011
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v8, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1012
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1013
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1014
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1016
    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1017
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v1

    .line 1018
    if-eqz v1, :cond_6

    array-length v11, v1

    if-ge v11, v9, :cond_2

    goto :goto_1

    .line 1022
    :cond_2
    array-length v2, v1

    .line 1024
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DEAID SW : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, -0x2

    aget-byte v12, v1, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, -0x1

    aget-byte v12, v1, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    if-lt v2, v9, :cond_5

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v1, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_3

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v1, v9

    if-eqz v9, :cond_4

    :cond_3
    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v1, v9

    const/16 v11, 0x63

    if-ne v9, v11, :cond_5

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v1, v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_5

    .line 1027
    :cond_4
    const-string v9, "deactivate list success"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1029
    :cond_5
    const-string v9, "deactivate list fail"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1019
    :cond_6
    :goto_1
    const-string v9, "Aid Deactivation Error"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    add-int/lit8 v3, v3, 0x1

    .line 999
    .end local v7    # "appletAID":Ljava/lang/String;
    .end local v8    # "tempLen":I
    .end local v10    # "aidlen":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v5    # "i":I
    :cond_7
    return v3
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # B

    .line 1905
    sget-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    sget-object v1, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    const/4 v0, 0x0

    aput-char v1, v2, v0

    move-object v0, v2

    .line 1906
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 1894
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1896
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 1897
    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1898
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1899
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1901
    .end local v2    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1895
    .end local v0    # "chars":[C
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1910
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1911
    return-object v0

    .line 1912
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1913
    return-object v0

    .line 1915
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    .line 1916
    .local v0, "len":I
    new-array v1, v0, [B

    .line 1917
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1918
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1917
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1920
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private blacklist isSupportEsek()Z
    .locals 5

    .line 186
    const-string v0, "ro.security.ese.support_esek"

    .line 188
    .local v0, "esekSupportProp":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "propValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_1
    :goto_0
    return v1

    .line 194
    .end local v2    # "propValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get sysProp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEC_ESE_ServiceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v1
.end method

.method private blacklist parseList([BI)Ljava/util/ArrayList;
    .locals 8
    .param p1, "respAid"    # [B
    .param p2, "respAidLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1174
    const/4 v0, 0x0

    const-string v1, "SEC_ESE_ServiceManager"

    if-nez p1, :cond_0

    .line 1175
    const-string v2, "parse list aid null error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-object v0

    .line 1180
    :cond_0
    const/4 v2, 0x0

    .line 1181
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 1183
    .local v3, "tempLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v4, "tempStr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v5, :cond_1

    .line 1186
    const-string v5, "SemService is not supported"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return-object v0

    .line 1190
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1191
    aget-byte v3, p1, v0

    .line 1192
    if-lez v3, :cond_2

    .line 1193
    add-int/lit8 v0, v0, 0x1

    .line 1194
    new-array v5, v3, [B

    .line 1195
    .local v5, "tempData":[B
    add-int v6, v0, v3

    invoke-static {p1, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1196
    add-int/lit8 v6, v3, -0x1

    add-int/2addr v0, v6

    .line 1198
    invoke-static {v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    add-int/lit8 v2, v2, 0x1

    .line 1190
    .end local v5    # "tempData":[B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    .end local v0    # "i":I
    :cond_3
    return-object v4
.end method


# virtual methods
.method public blacklist COSSPIAccessControl(I)I
    .locals 4
    .param p1, "type"    # I

    .line 2061
    const-string v0, "COSSPIAccessControl() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 2064
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    return v2

    .line 2069
    :cond_0
    const/4 v0, 0x1

    const/16 v3, -0x5a

    if-ne p1, v0, :cond_1

    .line 2070
    :try_start_0
    const-string v0, "SPIAC SPI Open"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    return v0

    .line 2091
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2088
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2085
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2081
    :catch_3
    move-exception v0

    goto :goto_3

    .line 2073
    :cond_1
    if-nez p1, :cond_2

    .line 2074
    const-string v0, "SPIAC SPI Close"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I

    move-result v0

    return v0

    .line 2078
    :cond_2
    const-string v0, "SPIAC Type Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    return v3

    .line 2092
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2093
    return v3

    .line 2089
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2090
    return v3

    .line 2086
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2087
    return v3

    .line 2082
    .local v0, "npe":Ljava/lang/NullPointerException;
    :goto_3
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2084
    return v2
.end method

.method public blacklist accessControlForCOSU(I)I
    .locals 1
    .param p1, "type"    # I

    .line 1443
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 19
    .param p1, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 553
    .local p2, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "%02x"

    const/4 v4, -0x1

    .line 555
    .local v4, "ret":I
    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    .line 557
    .local v5, "selectSCRSCmd":[B
    const/4 v6, 0x0

    .line 558
    .local v6, "baRsp":[B
    const/4 v7, 0x0

    .line 559
    .local v7, "baRspLen":I
    const/4 v8, 0x0

    .line 560
    .local v8, "strAddListCmd":Ljava/lang/String;
    const/4 v9, 0x0

    .line 562
    .local v9, "isOpen":Z
    iget-boolean v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v11, "SEC_ESE_ServiceManager"

    if-nez v10, :cond_0

    .line 563
    const-string v3, "SemService is not supported"

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/16 v3, -0x5c

    return v3

    .line 568
    :cond_0
    if-eqz v2, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 573
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v10

    move v4, v10

    .line 574
    if-eqz v4, :cond_2

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPEN Error "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a

    .line 576
    return v4

    .line 578
    :cond_2
    const/4 v9, 0x1

    .line 580
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v10

    move-object v6, v10

    .line 581
    if-eqz v6, :cond_b

    array-length v10, v6

    const/4 v12, 0x2

    if-ge v10, v12, :cond_3

    move/from16 v17, v4

    goto/16 :goto_4

    .line 588
    :cond_3
    array-length v10, v6

    move v7, v10

    .line 589
    const/4 v10, 0x0

    .line 591
    .local v10, "failFlag":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Select SW : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v7, -0x2

    aget-byte v14, v6, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v7, -0x1

    aget-byte v14, v6, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    if-lt v7, v12, :cond_a

    add-int/lit8 v13, v7, -0x2

    aget-byte v13, v6, v13

    const/16 v14, -0x70

    if-ne v13, v14, :cond_a

    add-int/lit8 v13, v7, -0x1

    aget-byte v13, v6, v13

    if-nez v13, :cond_a

    .line 593
    const/4 v13, 0x0

    .line 594
    .local v13, "addListCmd":[B
    const/4 v15, 0x0

    .line 596
    .local v15, "aidlen":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LS : "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_9

    .line 598
    const/4 v14, 0x0

    .line 600
    .local v14, "appletAID":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v17, :cond_4

    .line 601
    move/from16 v17, v4

    .end local v4    # "ret":I
    .local v17, "ret":I
    :try_start_2
    const-string v4, "AID Data Error"

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    add-int/lit8 v10, v10, 0x1

    move-object v2, v13

    const/16 v13, -0x70

    goto/16 :goto_2

    .line 604
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_4
    move/from16 v17, v4

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 605
    .end local v14    # "appletAID":Ljava/lang/String;
    .local v4, "appletAID":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x2

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 606
    .end local v15    # "aidlen":Ljava/lang/String;
    .local v14, "aidlen":Ljava/lang/String;
    const-string v15, "80F600"

    move-object v8, v15

    .line 607
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 610
    invoke-static {v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 612
    .end local v13    # "addListCmd":[B
    .local v2, "addListCmd":[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AID : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v1, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v13

    move-object v6, v13

    .line 615
    if-eqz v6, :cond_8

    array-length v13, v6

    const/4 v15, 0x2

    if-ge v13, v15, :cond_5

    const/16 v13, -0x70

    goto :goto_1

    .line 619
    :cond_5
    array-length v13, v6

    move v7, v13

    .line 621
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RSP SW : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v13, 0x2

    if-lt v7, v13, :cond_6

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    const/16 v13, -0x70

    if-ne v15, v13, :cond_7

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    if-nez v15, :cond_7

    .line 623
    const-string v15, "AL Success"

    invoke-static {v11, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    goto :goto_2

    .line 622
    :cond_6
    const/16 v13, -0x70

    .line 625
    :cond_7
    const-string v15, "AL Fail"

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    add-int/lit8 v10, v10, 0x1

    move-object v15, v14

    goto :goto_2

    .line 615
    :cond_8
    const/16 v13, -0x70

    .line 616
    :goto_1
    const-string v15, "Send Error"

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    add-int/lit8 v10, v10, 0x1

    move-object v15, v14

    .line 597
    .end local v4    # "appletAID":Ljava/lang/String;
    .end local v14    # "aidlen":Ljava/lang/String;
    .restart local v15    # "aidlen":Ljava/lang/String;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object v13, v2

    move/from16 v4, v17

    move-object/from16 v2, p2

    goto/16 :goto_0

    .end local v2    # "addListCmd":[B
    .end local v17    # "ret":I
    .local v4, "ret":I
    .restart local v13    # "addListCmd":[B
    :cond_9
    move/from16 v17, v4

    .line 631
    .end local v4    # "ret":I
    .end local v12    # "i":I
    .end local v13    # "addListCmd":[B
    .end local v15    # "aidlen":Ljava/lang/String;
    .restart local v17    # "ret":I
    goto :goto_3

    .line 592
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_a
    move/from16 v17, v4

    .line 632
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Select Fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v4, -0xb

    .line 635
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :goto_3
    if-lez v10, :cond_d

    const/16 v4, -0x10

    goto/16 :goto_b

    .line 581
    .end local v10    # "failFlag":I
    :cond_b
    move/from16 v17, v4

    .line 582
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    :goto_4
    const-string v2, "Select Error"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 586
    const/16 v2, -0xb

    return v2

    .line 648
    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_6

    .line 645
    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_7

    .line 642
    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_8

    .line 639
    :catch_3
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_9

    .line 636
    :catch_4
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_a

    .line 648
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_5
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_6

    .line 645
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_6
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_7

    .line 642
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_7
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_8

    .line 639
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_8
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_9

    .line 636
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_9
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto/16 :goto_a

    .line 569
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_c
    :goto_5
    :try_start_3
    const-string v2, "AID/Flag Null Error"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_a

    .line 571
    const/16 v2, -0xd

    return v2

    .line 648
    :catch_a
    move-exception v0

    move-object v2, v0

    .line 649
    .local v2, "e":Ljava/lang/Error;
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/16 v4, -0x5a

    goto :goto_c

    .line 645
    .end local v2    # "e":Ljava/lang/Error;
    :catch_b
    move-exception v0

    move-object v2, v0

    .line 646
    .local v2, "e":Ljava/lang/Exception;
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 642
    :catch_c
    move-exception v0

    move-object v2, v0

    .line 643
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to link."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_b

    .line 639
    :catch_d
    move-exception v0

    move-object v2, v0

    .line 640
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find class."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_b

    .line 636
    :catch_e
    move-exception v0

    move-object v2, v0

    .line 637
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect service."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v4, -0x5a

    .line 651
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_d
    :goto_b
    nop

    .line 652
    :goto_c
    if-eqz v9, :cond_e

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 656
    :cond_e
    return v4

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data
.end method

.method public blacklist agentSLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 1386
    const-string v0, "SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1389
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1394
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->agent_SLOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    nop

    .line 1411
    return-void

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    return-void

    .line 1404
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ST_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-void

    .line 1401
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ST_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-void

    .line 1398
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "ST_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void

    .line 1395
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return-void
.end method

.method public blacklist checkFRANetwork(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFRANetwork() is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1151
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1156
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->check_Network(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    nop

    .line 1171
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    return-void

    .line 1164
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1166
    return-void

    .line 1161
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1163
    return-void

    .line 1157
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1158
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1160
    return-void
.end method

.method public blacklist checkSeState([B[B)I
    .locals 4
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B

    .line 1661
    const-string v0, "checkSeState() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1664
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return v2

    .line 1669
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->check_SeState([B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1680
    :catch_0
    move-exception v1

    .line 1681
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1682
    return v0

    .line 1677
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1678
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1679
    return v0

    .line 1674
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1675
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1676
    return v0

    .line 1670
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1671
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1673
    return v2
.end method

.method public blacklist close()I
    .locals 2

    .line 1490
    const-string v0, "close() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1493
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const/16 v0, -0x5c

    return v0

    .line 1498
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist close(I)I
    .locals 2
    .param p1, "flag"    # I

    .line 1602
    const-string v0, "close() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1605
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/16 v0, -0x5c

    return v0

    .line 1609
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist closeSpi(I)I
    .locals 4
    .param p1, "flag"    # I

    .line 1982
    const-string v0, "closeSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1985
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    return v2

    .line 1990
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/SemService/ISemService;->close_Spi(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2001
    :catch_0
    move-exception v1

    .line 2002
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2003
    return v0

    .line 1998
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1999
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2000
    return v0

    .line 1995
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1996
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1997
    return v0

    .line 1991
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1992
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1994
    return v2
.end method

.method public blacklist continueattestation(Ljava/lang/String;I[B)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B

    .line 1269
    const-string v0, "continueattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1272
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return v2

    .line 1277
    :cond_0
    :try_start_0
    const-string v0, "ContinueAttestation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/service/SemService/ISemService;->continue_attestation(Ljava/lang/String;I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1291
    const/16 v1, -0x5a

    return v1

    .line 1286
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1287
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1288
    return v2

    .line 1283
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1285
    return v2

    .line 1279
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1280
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1282
    return v2
.end method

.method public blacklist deactivateCards(I[Ljava/lang/String;[II)I
    .locals 4
    .param p1, "RequestType"    # I
    .param p2, "package_name"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I

    .line 403
    const-string v0, "deactivateCards is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 406
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v2

    .line 412
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    return v0

    .line 420
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 422
    return v0

    .line 417
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 419
    return v0

    .line 413
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 414
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 416
    return v2
.end method

.method public blacklist deactivateCardsAID(II[Ljava/lang/String;[II)I
    .locals 9
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_name"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I

    .line 430
    const-string v0, "deactivateCardsAID is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 433
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v2

    .line 439
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    return v0

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 449
    return v0

    .line 444
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 446
    return v0

    .line 440
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 441
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 443
    return v2
.end method

.method public blacklist deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 11
    .param p1, "inputFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 660
    .local p2, "inputAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x16800

    .line 661
    .local v0, "listByteSize":I
    const-string v1, "02"

    .line 662
    .local v1, "AID_DEACTIVATION_FLAG":Ljava/lang/String;
    const-string v2, "03"

    .line 663
    .local v2, "AID_DEACTIVATION_FLAG_BOOT":Ljava/lang/String;
    const-string v3, "01"

    .line 665
    .local v3, "ALL_DEACTIVATION_FLAG":Ljava/lang/String;
    move-object v4, p1

    .line 666
    .local v4, "flag":Ljava/lang/String;
    move-object v5, p2

    .line 669
    .local v5, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "com.sec.action.CDA_FINISH"

    .line 670
    .local v6, "ACTION_CDA_FINISH":Ljava/lang/String;
    const-string v7, "com.sec.action.CDA_VALUE"

    .line 671
    .local v7, "VALUE_CDA_FINISH":Ljava/lang/String;
    const/4 v8, 0x1

    .line 673
    .local v8, "ACTION_VALUE_CDA_FINISH":I
    iget-boolean v9, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v9, :cond_0

    .line 674
    const-string v9, "SEC_ESE_ServiceManager"

    const-string v10, "SemService is not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/16 v9, -0x5c

    return v9

    .line 679
    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/service/SemService/SemServiceManager$1;

    invoke-direct {v10, p0, v4, v5}, Lcom/samsung/android/service/SemService/SemServiceManager$1;-><init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 982
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 984
    const/4 v9, 0x0

    return v9
.end method

.method public blacklist eSEAidFactoryReset([BI)I
    .locals 4
    .param p1, "aid"    # [B
    .param p2, "aidLen"    # I

    .line 1122
    const-string v0, "eSEAidFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1125
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return v2

    .line 1130
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_AidFactoryReset([BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1143
    return v0

    .line 1138
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1140
    return v0

    .line 1135
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1136
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1137
    return v0

    .line 1131
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1132
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1134
    return v2
.end method

.method public blacklist eSEFactoryReset()I
    .locals 4

    .line 1041
    const-string v0, "eSEFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1044
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v2

    .line 1049
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1062
    return v0

    .line 1057
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1059
    return v0

    .line 1054
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1056
    return v0

    .line 1050
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1051
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1053
    return v2
.end method

.method public blacklist eSEFullFactoryReset()I
    .locals 4

    .line 1095
    const-string v0, "eSEFullFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1098
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return v2

    .line 1103
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FullFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1116
    return v0

    .line 1111
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1112
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1113
    return v0

    .line 1108
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1109
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1110
    return v0

    .line 1104
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1105
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1107
    return v2
.end method

.method public blacklist eSELowFactoryReset()I
    .locals 4

    .line 1068
    const-string v0, "eSELowFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1071
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return v2

    .line 1076
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->eSE_LowFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1087
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1089
    return v0

    .line 1084
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1086
    return v0

    .line 1081
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1083
    return v0

    .line 1077
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1078
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1080
    return v2
.end method

.method public blacklist esekCertificateCheck()I
    .locals 4

    .line 202
    const-string v0, "esekCertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v0, -0xa

    return v0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_1

    .line 210
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v2

    .line 215
    :cond_1
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->esek_certificate_check()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    return v0

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 225
    return v0

    .line 220
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 222
    return v0

    .line 216
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 217
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 219
    return v2
.end method

.method public blacklist getAtr()I
    .locals 4

    .line 1416
    const-string v0, "getAtr() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1419
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return v2

    .line 1424
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->getAtr_Spi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1435
    :catch_0
    move-exception v1

    .line 1436
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1437
    return v0

    .line 1432
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1433
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1434
    return v0

    .line 1429
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1430
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1431
    return v0

    .line 1425
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1426
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1428
    return v2
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 4

    .line 140
    const-string v0, "getCPLC14mode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 142
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v2

    .line 147
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    return-object v2

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 157
    return-object v2

    .line 152
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 154
    return-object v2

    .line 148
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 149
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 151
    return-object v2
.end method

.method public blacklist getHQMMemory([B)I
    .locals 4
    .param p1, "hw_memory_data"    # [B

    .line 375
    const-string v0, "getHQMMemory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 378
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v2

    .line 383
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/SemService/ISemService;->get_HQMMemory([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    return v0

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 393
    return v0

    .line 388
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 390
    return v0

    .line 384
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 385
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 387
    return v2
.end method

.method public blacklist getPK([B)I
    .locals 2
    .param p1, "rspData"    # [B

    .line 1297
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getPK() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSCRSVersion()I
    .locals 13

    .line 457
    const/4 v0, -0x1

    .line 458
    .local v0, "ret":I
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 460
    .local v1, "selectSCRSCmd":[B
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    .line 461
    .local v2, "getVersionCmd":[B
    const/4 v3, 0x0

    .line 462
    .local v3, "baRsp":[B
    const/4 v4, 0x0

    .line 463
    .local v4, "baRspLen":I
    const/4 v5, 0x0

    .line 464
    .local v5, "scrsVersion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 466
    .local v6, "isOpen":Z
    iget-boolean v7, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v8, "SEC_ESE_ServiceManager"

    if-nez v7, :cond_0

    .line 467
    const-string v7, "SemService is not supported"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v7, -0x5c

    return v7

    .line 473
    :cond_0
    :try_start_0
    const-string v7, "ro.factory.factory_binary"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, "factoryProp":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v9, "factory"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 475
    const-string v9, "FACTORY NOT SUPPORT"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v8, -0xa

    return v8

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v9

    move v0, v9

    .line 481
    if-eqz v0, :cond_2

    .line 482
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPEN Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v0

    .line 485
    :cond_2
    const/4 v6, 0x1

    .line 487
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v3, v9

    .line 488
    if-eqz v3, :cond_9

    array-length v9, v3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    goto/16 :goto_2

    .line 495
    :cond_3
    array-length v9, v3

    move v4, v9

    .line 497
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Select SW : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v4, -0x2

    aget-byte v11, v3, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v4, -0x1

    aget-byte v11, v3, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-lt v4, v10, :cond_8

    add-int/lit8 v9, v4, -0x2

    aget-byte v9, v3, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_8

    add-int/lit8 v9, v4, -0x1

    aget-byte v9, v3, v9

    if-nez v9, :cond_8

    .line 499
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v3, v9

    .line 500
    if-eqz v3, :cond_7

    array-length v9, v3

    if-ge v9, v10, :cond_4

    goto/16 :goto_1

    .line 507
    :cond_4
    array-length v9, v3

    move v4, v9

    .line 508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RSP SW : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v4, -0x2

    aget-byte v12, v3, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v4, -0x1

    aget-byte v12, v3, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v9, 0x3

    if-le v4, v9, :cond_6

    add-int/lit8 v12, v4, -0x2

    aget-byte v12, v3, v12

    if-ne v12, v11, :cond_6

    add-int/lit8 v11, v4, -0x1

    aget-byte v11, v3, v11

    if-nez v11, :cond_6

    .line 510
    aget-byte v10, v3, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 511
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v9, v3, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 513
    if-eqz v5, :cond_5

    .line 514
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v0, v9

    goto :goto_0

    .line 516
    :cond_5
    const-string v9, "Parse Version Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v0, -0xd

    goto :goto_0

    .line 520
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v0, -0xc

    .line 523
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCRS Version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 501
    :cond_7
    :goto_1
    const-string v9, "Send Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 504
    const/16 v8, -0xc

    return v8

    .line 525
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v0, -0xb

    goto/16 :goto_3

    .line 489
    :cond_9
    :goto_2
    const-string v9, "Select Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    const/16 v8, -0xb

    return v8

    .line 540
    .end local v7    # "factoryProp":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 541
    .local v7, "e":Ljava/lang/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v0, -0x5a

    goto :goto_4

    .line 537
    .end local v7    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v7

    .line 538
    .local v7, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v0, -0x5a

    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 534
    :catch_2
    move-exception v7

    .line 535
    .local v7, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v9, "Failed to link."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v0, -0x5a

    .end local v7    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3

    .line 531
    :catch_3
    move-exception v7

    .line 532
    .local v7, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v0, -0x5a

    .end local v7    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_3

    .line 528
    :catch_4
    move-exception v7

    .line 529
    .local v7, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect service. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/16 v0, -0x5a

    .line 543
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :goto_3
    nop

    .line 545
    :goto_4
    if-eqz v6, :cond_a

    .line 546
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 549
    :cond_a
    return v0

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        0x0t
        -0x10t
        0x0t
    .end array-data
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 4

    .line 115
    const-string v0, "get_ESEA() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v2

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->get_ESEA()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    return-object v2

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 132
    return-object v2

    .line 127
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 129
    return-object v2

    .line 123
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 124
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 126
    return-object v2
.end method

.method public blacklist grdmCheckRestrictedMode()Ljava/lang/String;
    .locals 4

    .line 1841
    const-string v0, "grdmCheckRestrictedMode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1844
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return-object v2

    .line 1849
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1862
    return-object v2

    .line 1857
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1858
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1859
    return-object v2

    .line 1854
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1856
    return-object v2

    .line 1850
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1851
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1853
    return-object v2
.end method

.method public blacklist grdmCheckStatus()I
    .locals 4

    .line 1867
    const-string v0, "grdmCheckStatus() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1870
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/16 v0, -0x5c

    return v0

    .line 1875
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_Check_Status()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1886
    :catch_0
    move-exception v1

    .line 1887
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1888
    return v0

    .line 1883
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1884
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1885
    return v0

    .line 1880
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1881
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1882
    return v0

    .line 1876
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1877
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1879
    return v0
.end method

.method public blacklist grdmGetAttesCert(I[B)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "rspData"    # [B

    .line 1815
    const-string v0, "grdmGetAttesCert() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1818
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/16 v0, -0x5c

    return v0

    .line 1823
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_attes_cert(I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1834
    :catch_0
    move-exception v1

    .line 1835
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1836
    return v0

    .line 1831
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1832
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1833
    return v0

    .line 1828
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1829
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1830
    return v0

    .line 1824
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1825
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1827
    return v0
.end method

.method public blacklist grdmGetSession()I
    .locals 4

    .line 1737
    const-string v0, "grdmGetSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1740
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const/16 v0, -0x5c

    return v0

    .line 1745
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_session()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1756
    :catch_0
    move-exception v1

    .line 1757
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1758
    return v0

    .line 1753
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1754
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1755
    return v0

    .line 1750
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1751
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1752
    return v0

    .line 1746
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1747
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1749
    return v0
.end method

.method public blacklist grdmReleaseSession()I
    .locals 4

    .line 1789
    const-string v0, "grdmReleaseSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1792
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const/16 v0, -0x5c

    return v0

    .line 1797
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_release_session()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1808
    :catch_0
    move-exception v1

    .line 1809
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1810
    return v0

    .line 1805
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1806
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1807
    return v0

    .line 1802
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1803
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1804
    return v0

    .line 1798
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1799
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1801
    return v0
.end method

.method public blacklist grdmRequestKey(I[B)I
    .locals 4
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B

    .line 1763
    const-string v0, "grdmRequestKey() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1766
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/16 v0, -0x5c

    return v0

    .line 1771
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_request_key(I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1782
    :catch_0
    move-exception v1

    .line 1783
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1784
    return v0

    .line 1779
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1780
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1781
    return v0

    .line 1776
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1777
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1778
    return v0

    .line 1772
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1773
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1775
    return v0
.end method

.method public blacklist isConnected()Z
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v2, "SemService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_1
    return v1
.end method

.method public blacklist isEseSupported()Z
    .locals 4

    .line 1926
    const-string v0, "isEseSupported() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1929
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return v2

    .line 1934
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    const/16 v3, -0x64

    if-ne v0, v3, :cond_1

    .line 1935
    return v2

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    const/4 v0, 0x1

    return v0

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1951
    return v2

    .line 1946
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1947
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1948
    return v2

    .line 1943
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1944
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1945
    return v2

    .line 1939
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1940
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1942
    return v2
.end method

.method public blacklist isLccmSwp()I
    .locals 4

    .line 349
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v1, -0x5c

    const-string v2, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_0

    .line 350
    const-string v0, "SemService is not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return v1

    .line 355
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->isLccmSwp()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    return v0

    .line 363
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 365
    return v0

    .line 360
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 362
    return v0

    .line 356
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 357
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 359
    return v1
.end method

.method public blacklist isOpened()Z
    .locals 6

    .line 1507
    const/4 v0, -0x1

    .line 1509
    .local v0, "result":I
    const-string v1, "isOpened() is called."

    const-string v2, "SEC_ESE_ServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-boolean v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1512
    const-string v1, "SemService is not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return v3

    .line 1517
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v4

    .line 1521
    nop

    .line 1524
    const/16 v4, -0xc8

    if-ne v0, v4, :cond_1

    .line 1525
    :try_start_1
    const-string v4, "eSE is busy now"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return v3

    .line 1534
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1527
    :cond_1
    if-nez v0, :cond_2

    .line 1528
    const-string v3, "eSE is NOT busy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    goto :goto_0

    .line 1531
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eSE returned error value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1538
    :goto_0
    nop

    .line 1539
    return v1

    .line 1535
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpened close Exception! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    .line 1537
    return v1

    .line 1518
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1519
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpened openSpi Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return v1
.end method

.method public blacklist jniICD()I
    .locals 5

    .line 1211
    const/16 v0, -0x3e7

    .line 1213
    .local v0, "icdResult":I
    iget-boolean v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v2, "SEC_ESE_ServiceManager"

    if-nez v1, :cond_0

    .line 1214
    const-string v1, "SemService is not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/16 v1, -0x5c

    return v1

    .line 1219
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->ICD()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v1

    .line 1232
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/16 v0, -0x3e7

    goto :goto_1

    .line 1227
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1229
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/16 v0, -0x3e7

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1224
    :catch_2
    move-exception v1

    .line 1225
    .local v1, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/16 v0, -0x3e7

    .end local v1    # "e1":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1221
    :catch_3
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/16 v0, -0x3e7

    .line 1234
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    nop

    .line 1237
    :goto_1
    return v0
.end method

.method public blacklist open()I
    .locals 2

    .line 1478
    const-string v0, "open() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1481
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/16 v0, -0x5c

    return v0

    .line 1486
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist open(I)I
    .locals 2
    .param p1, "flag"    # I

    .line 1591
    const-string v0, "open() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1594
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/16 v0, -0x5c

    return v0

    .line 1598
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist openSpi(I)I
    .locals 4
    .param p1, "flag"    # I

    .line 1956
    const-string v0, "openSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1959
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    return v2

    .line 1964
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/SemService/ISemService;->open_Spi(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1975
    :catch_0
    move-exception v1

    .line 1976
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1977
    return v0

    .line 1972
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1973
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1974
    return v0

    .line 1969
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1970
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1971
    return v0

    .line 1965
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1966
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1968
    return v2
.end method

.method public blacklist resetForCOSU(I)I
    .locals 5
    .param p1, "type"    # I

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetForCOSU is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v0, -0x1

    .line 1456
    .local v0, "result":I
    iget-boolean v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v2, :cond_0

    .line 1457
    const-string v2, "SemService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/16 v1, -0x5c

    return v1

    .line 1461
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez v2, :cond_1

    .line 1462
    const-string v2, "SemService is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return v0

    .line 1467
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->resetForCOSU()I

    move-result v2

    move v0, v2

    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetForCOSU : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    goto :goto_0

    .line 1469
    :catch_0
    move-exception v2

    .line 1470
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call resetForCOSU Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist scp11CertificateCheck()I
    .locals 4

    .line 233
    const-string v0, "scp11CertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v0, -0xa

    return v0

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_1

    .line 241
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v2

    .line 246
    :cond_1
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->scp11_certificate_check()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    return v0

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 256
    return v0

    .line 251
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 253
    return v0

    .line 247
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 248
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 250
    return v2
.end method

.method public blacklist semFactory()V
    .locals 3

    .line 165
    const-string v0, "semFactory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 167
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->sem_factory()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 176
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 173
    :catch_3
    move-exception v0

    .line 174
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 182
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 183
    :goto_1
    return-void
.end method

.method public blacklist sem_handleCCM([BI)[Ljava/lang/String;
    .locals 4
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 291
    const-string v0, "sem_handleCCM() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 293
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-object v2

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    return-object v2

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 308
    return-object v2

    .line 303
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 305
    return-object v2

    .line 299
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 300
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 302
    return-object v2
.end method

.method public blacklist sem_handleCCMCB([BI[BI)[Ljava/lang/String;
    .locals 6
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I

    .line 316
    const-string v0, "sem_handleCCMCB() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "ccmData0103":[B
    const/4 v2, 0x0

    .line 320
    .local v2, "ret":[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 321
    const-string v3, "SemService is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v4

    .line 326
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 328
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    move-object v0, v3

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmData : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmDataLen : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-object v2

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    return-object v4

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 341
    return-object v4

    .line 336
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 338
    return-object v4

    .line 332
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v3

    .line 333
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v5, "Failed to connect service."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 335
    return-object v4
.end method

.method public blacklist sem_handleCCMScp11c([BI)I
    .locals 3
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 266
    const-string v0, "sem_handleCCMScp11c() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 268
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v0, -0xa

    return v0

    .line 273
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMScp11c([BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    return v0

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 283
    return v0

    .line 278
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 280
    return v0

    .line 274
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 275
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 277
    const/16 v1, -0x5c

    return v1
.end method

.method public blacklist send([B)[B
    .locals 8
    .param p1, "baCmd"    # [B

    .line 1543
    const-string v0, "send() for SE API is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1546
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return-object v2

    .line 1550
    :cond_0
    const v0, 0x10002

    new-array v0, v0, [B

    .line 1551
    .local v0, "baRsp":[B
    const/4 v3, 0x0

    .line 1552
    .local v3, "cLen":I
    const/4 v4, 0x0

    .line 1554
    .local v4, "baRspLen":I
    if-eqz p1, :cond_1

    .line 1555
    array-length v3, p1

    .line 1556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v3, v0, v6}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v4, v5

    .line 1562
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 1563
    const-string v5, "RSP is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-object v2

    .line 1566
    :cond_2
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    .line 1567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    return-object v0

    .line 1582
    :catch_0
    move-exception v5

    .line 1583
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-object v2

    .line 1579
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1580
    .local v5, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-object v2

    .line 1576
    .end local v5    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v5

    .line 1577
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-object v2

    .line 1571
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v5

    .line 1573
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    return-object v2
.end method

.method public blacklist send([BI)[B
    .locals 8
    .param p1, "baCmd"    # [B
    .param p2, "flag"    # I

    .line 1613
    const-string v0, "send() for normal/secure SPI is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1616
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return-object v2

    .line 1620
    :cond_0
    const v0, 0x10002

    new-array v0, v0, [B

    .line 1621
    .local v0, "baRsp":[B
    const/4 v3, 0x0

    .line 1622
    .local v3, "cLen":I
    const/4 v4, 0x0

    .line 1624
    .local v4, "baRspLen":I
    if-eqz p1, :cond_1

    .line 1625
    array-length v3, p1

    .line 1626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v5, p1, v3, v0, p2}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v4, v5

    .line 1632
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 1633
    const-string v5, "RSP is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return-object v2

    .line 1636
    :cond_2
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    .line 1637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    return-object v0

    .line 1652
    :catch_0
    move-exception v5

    .line 1653
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-object v2

    .line 1649
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1650
    .local v5, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-object v2

    .line 1646
    .end local v5    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v5

    .line 1647
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-object v2

    .line 1641
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v5

    .line 1643
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1644
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return-object v2
.end method

.method public blacklist sendData([BI[B)I
    .locals 5
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B

    .line 2035
    const-string v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 2038
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return v2

    .line 2043
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, p3, v4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2054
    :catch_0
    move-exception v1

    .line 2055
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2056
    return v0

    .line 2051
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2052
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2053
    return v0

    .line 2048
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 2049
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2050
    return v0

    .line 2044
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 2045
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2047
    return v2
.end method

.method public blacklist sendData([BI[BI)I
    .locals 4
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I

    .line 2009
    const-string v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 2012
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return v2

    .line 2017
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2028
    :catch_0
    move-exception v1

    .line 2029
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2030
    return v0

    .line 2025
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2027
    return v0

    .line 2022
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 2023
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2024
    return v0

    .line 2018
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 2019
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2021
    return v2
.end method

.method public blacklist sercureLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1302
    const-string v0, "SecureLog() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void

    .line 1310
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->secureLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    nop

    .line 1327
    return-void

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-void

    .line 1320
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 1317
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void

    .line 1314
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void

    .line 1311
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void
.end method

.method public blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
    .locals 4
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B

    .line 1687
    const-string v0, "startRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1690
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return v2

    .line 1695
    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1706
    :catch_0
    move-exception v1

    .line 1707
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1708
    return v0

    .line 1703
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1704
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1705
    return v0

    .line 1700
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 1701
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1702
    return v0

    .line 1696
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1697
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1699
    return v2
.end method

.method public blacklist startSLOG()V
    .locals 3

    .line 1330
    const-string v0, "START SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1333
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void

    .line 1338
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->start_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    nop

    .line 1355
    return-void

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-void

    .line 1348
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "S_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    return-void

    .line 1345
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "S_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return-void

    .line 1342
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "S_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    return-void

    .line 1339
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void
.end method

.method public blacklist startattestation([BI[BI)I
    .locals 4
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I

    .line 1241
    const-string v0, "startattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    .line 1244
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return v2

    .line 1249
    :cond_0
    :try_start_0
    const-string v0, "StartAttestation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_attestation([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1263
    const/16 v1, -0x5a

    return v1

    .line 1258
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1260
    return v2

    .line 1255
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1256
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1257
    return v2

    .line 1251
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 1252
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1254
    return v2
.end method

.method public blacklist stopRequestCredentials()V
    .locals 3

    .line 1713
    const-string v0, "stopRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1716
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    return-void

    .line 1721
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->stop_request_credentials()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1727
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1728
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1725
    :catch_2
    move-exception v0

    .line 1726
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1722
    :catch_3
    move-exception v0

    .line 1723
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1731
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 1732
    :goto_1
    return-void
.end method

.method public blacklist stopSLOG()V
    .locals 3

    .line 1358
    const-string v0, "STOP SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    .line 1361
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-void

    .line 1366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->stop_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    nop

    .line 1383
    return-void

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-void

    .line 1376
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ST_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-void

    .line 1373
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1374
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ST_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void

    .line 1370
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "ST_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1367
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void
.end method

.class public final Lcom/android/server/knox/dar/DarManagerService;
.super Lcom/samsung/android/knox/dar/IDarManagerService$Stub;
.source "qb/97330867 27cc687e617a2c5e9df4110e7e3be191ff1d2a0c1fcb6b1e5e0352b887c9e97d"


# static fields
.field public static final NULL_USER:Landroid/content/pm/UserInfo;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

.field public final mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

.field public final mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

.field public final mEscrowTokenStateChangeCallback:Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda1;

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public final mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserSwitchObserver:Lcom/android/server/knox/dar/DarManagerService$1;

.field public final mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/knox/dar/DarManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/DarManagerService;)V

    new-instance v1, Lcom/android/server/knox/dar/DarManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/DarManagerService$1;-><init>(Lcom/android/server/knox/dar/DarManagerService;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserSwitchObserver:Lcom/android/server/knox/dar/DarManagerService$1;

    const-string v1, "DarManagerService"

    const-string v2, "DarManagerService init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getInstance()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    iget-object v2, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->systemReady()V

    new-instance v0, Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/VirtualLockImpl;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v0, "DarManagerService_SDP"

    const-string/jumbo v2, "prepare Sdp Service"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    invoke-direct {v2, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    const-string p1, "DarManagerService_DUAL_DAR"

    const-string/jumbo v2, "prepare DualDAR DO Service"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-direct {p1, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    const-string/jumbo p0, "prepare EndpointMonitor Service"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fileRead(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_2
    return-object v1

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static fileWrite(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return v0
.end method


# virtual methods
.method public final addBlockedClearablePackages(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "addBlockedClearablePackages"

    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v0, "pkg_blocked_clearable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "empty"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-static {v1, v2, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21

    move-object/from16 v0, p1

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string v5, "SdpManagerImpl"

    const-string v6, "add engine :: calling by the process %d %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_e

    :cond_0
    const-string v6, "SdpManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "add engine :: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v14

    iget-object v6, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "SdpManagerImpl"

    const-string v8, ""

    if-nez v6, :cond_2

    const-string/jumbo v6, "getPackage :: Not found with caller "

    invoke-static {v4, v6, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v15, v8

    goto :goto_1

    :cond_2
    array-length v10, v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v6, v11

    const-string/jumbo v13, "getPackage :: found name for caller "

    invoke-static {v4, v13, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v8, v12

    :cond_3
    add-int/2addr v11, v1

    goto :goto_0

    :goto_1
    invoke-static {v14}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    const-string v6, "SdpManagerImpl"

    const-string/jumbo v7, "custom engine. assign custom engine id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    const/16 v6, 0x3e8

    :goto_2
    :try_start_0
    iget-object v8, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    add-int/2addr v6, v1

    goto :goto_2

    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "SdpManagerImpl"

    const-string/jumbo v8, "custom engine : "

    const-string v10, ", id assigned. ["

    const-string v11, "]"

    invoke-static {v6, v8, v14, v10, v11}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v13, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getFlags()I

    move-result v11

    const-string v6, "SdpManagerImpl"

    const-string v7, "add engine :: alias : %s, id : %d"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v14, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v10, 0x1

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v6, v12

    move-object v7, v14

    move v8, v13

    move-object v5, v12

    move/from16 v12, v16

    move v1, v13

    move/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v5, v15}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v0, "SdpManagerImpl"

    const-string v1, "add engine :: not supported anymore to "

    invoke-static {v1, v14, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v5, -0x3

    goto/16 :goto_f

    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_7

    move v5, v7

    goto/16 :goto_f

    :cond_7
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v6

    const/16 v8, 0x20

    if-eqz v6, :cond_9

    invoke-static/range {p3 .. p3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_9

    :cond_8
    const/4 v5, -0x2

    goto/16 :goto_f

    :cond_9
    iget-object v6, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    invoke-virtual {v2, v14}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v9

    if-nez v9, :cond_16

    invoke-virtual {v2, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    goto/16 :goto_c

    :cond_a
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object/from16 v6, p3

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_5

    :cond_b
    sget-object v1, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v8}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    :goto_5
    sget-object v6, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v6, v8}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const-string v9, "SdpManagerImpl"

    const-string/jumbo v10, "try to add engine internal for virtual user : "

    invoke-static {v8, v10, v9}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v9, v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    iget-object v9, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v9, v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    iget-object v9, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    iget-object v10, v9, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v10, v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v11

    const-wide/16 v17, 0x0

    if-nez v11, :cond_d

    :cond_c
    :goto_6
    move-wide/from16 v9, v17

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v9, v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    invoke-static {v8}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_6

    :cond_e
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "users"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v15, "SdpManagerImpl.VirtualLock"

    if-nez v12, :cond_f

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_f

    const-string/jumbo v7, "prepare - failed to create sp state path for user "

    invoke-static {v8, v7, v15}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1f9

    invoke-static {v11, v12, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Engine info initialized for engine "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v10, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {v7, v8}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->destroy(I)V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v12, "smk_ver"

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Set reset password token for user "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v7

    if-nez v7, :cond_10

    move-wide/from16 v19, v17

    goto :goto_7

    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_3
    iget-object v7, v10, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1, v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide/from16 v19, v10

    :goto_7
    move v10, v8

    move-wide/from16 v11, v19

    move-object/from16 v13, p2

    move-object v14, v1

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setPasswordWithToken(IJLjava/lang/String;[B)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v9, "establish - sp based credential established for user %d with %d"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v9, v19

    :goto_8
    iget-object v7, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    move-object/from16 v11, p2

    invoke-virtual {v7, v8, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_9

    :cond_11
    sget-object v11, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v11, "SdpTokenHandle"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v11, v9}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result v9

    invoke-static {v9}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    :goto_9
    const/16 v0, -0xe

    goto :goto_a

    :cond_12
    invoke-static {v5, v7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    move v0, v9

    goto :goto_a

    :cond_13
    iget-object v9, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v3, v4, v5, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPolicy(IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    :goto_a
    if-eqz v0, :cond_14

    const-string v3, "SdpManagerImpl"

    const-string v4, "add engine :: Failed with error code "

    invoke-static {v0, v4, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    iget-object v3, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3, v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    iget-object v2, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-virtual {v2, v5}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    goto :goto_b

    :cond_14
    const-string v3, "SdpManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "add engine - Sucessfully done with "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    iget-object v3, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v4, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v4, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v4, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v3, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v4, "SdpSessionKey"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v4, v6}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    iget-object v3, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "KeyProtector"

    const-string v4, "Wrong input parameter..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v2, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpResetToken"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v3, v1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    :cond_15
    :goto_b
    filled-new-array {v7, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->clearAll([Ljava/lang/Object;)V

    move v5, v0

    goto :goto_f

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_d

    :cond_16
    :goto_c
    :try_start_6
    const-string v0, "SdpManagerImpl"

    const-string v1, "add engine :: failed to create engine due to pre-existing engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    const/4 v5, -0x4

    goto :goto_f

    :goto_d
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_17
    :goto_e
    const-string v0, "SdpManagerImpl"

    const-string v1, "add engine :: failed to create engine due to invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :goto_f
    return v5

    :cond_18
    const/16 v0, -0xa

    return v0
.end method

.method public final allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const/4 p0, -0x5

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 v0, -0x63

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result v0

    :cond_2
    move p0, v0

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    const/4 p0, -0x7

    :goto_2
    return p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    const/16 p0, -0xa

    return p0
.end method

.method public final checkDeviceIntegrity([Ljava/security/cert/Certificate;)Z
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    :try_start_0
    new-instance v1, Lcom/android/server/knox/dar/AttestedCertParser;

    invoke-direct {v1, p1}, Lcom/android/server/knox/dar/AttestedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V

    iget-object p1, v1, Lcom/android/server/knox/dar/AttestedCertParser;->mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    if-nez v2, :cond_0

    iget p1, p1, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isEmTokenAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "DarManagerService"

    const-string p1, "Failed in device integrity check. But, EM Token is allowed. Continue - "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public final checkSystemPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "DarManagerService"

    const-string v1, "Require system permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Security Exception Occurred in pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearResetPasswordToken(I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clear Reset password token for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualLockImpl"

    invoke-static {v3, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, v0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v4, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(IJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    new-instance p1, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_1
    return v1
.end method

.method public final createEncPkgDir(ILjava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v1, -0xb

    :cond_0
    return v1
.end method

.method public final deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string/jumbo v0, "deleteToeknFromTrusted"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->exists(ILjava/lang/String;)Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    move p0, v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    const/16 p0, -0x63

    :goto_1
    return p0

    :cond_3
    const/16 p0, -0xa

    return p0
.end method

.method public final disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const/4 p0, -0x5

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 v0, -0x63

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result v0

    :cond_2
    move p0, v0

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    const/4 p0, -0x7

    :goto_2
    return p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    const/16 p0, -0xa

    return p0
.end method

.method public doesSpecificKeyExist(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->exists(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    const-string v4, "DarManagerService"

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    const-string/jumbo v3, "sdp_dump"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v5, v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Permission Denial: Can\'t dump SDP from pid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " without permission android.permission.DUMP"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    iget-object v5, v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v6, "SDP Engine List :"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_2

    const-string v3, "EMPTY"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    iget-object v6, v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_6

    iget-object v8, v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v8, :cond_3

    goto :goto_5

    :cond_3
    const-string v9, "Engine Id : %5d   User ID : %5d   Version : %d   State : %s   Flag : %10s ( %d )   Alias : %s"

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v10

    const/4 v14, 0x2

    if-ne v10, v14, :cond_4

    const-string v10, "UNLOCKED"

    :goto_1
    move-object v14, v10

    goto :goto_2

    :cond_4
    const-string v10, "LOCKED"

    goto :goto_1

    :goto_2
    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "SDP_MINOR"

    :goto_3
    move-object v15, v10

    goto :goto_4

    :cond_5
    const-string v10, "SDP_MDFPP"

    goto :goto_3

    :goto_4
    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_8

    :goto_7
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "dualdar_dump"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    new-instance v5, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

    move-object/from16 v6, p1

    invoke-direct {v5, v0, v6, v1, v2}, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/DarManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_8
    if-eqz v2, :cond_f

    array-length v0, v2

    if-lez v0, :cond_f

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "-a"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "sdplog"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_9
    const-string/jumbo v0, "sdplog_dump"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-------------------------------------------------- START DUMP --------------------------------------------------"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLog;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    const-string v2, "Failed to dump: "

    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Failed to dump: Maybe target file is already being used..."

    const-string v2, "SDPLogFile"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Target file busy"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_a
    const/4 v3, 0x0

    :try_start_2
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v0, "/data/log/sdp_log"

    const-string/jumbo v6, "r"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v5}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v6, 0x11

    :try_start_4
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0x1770

    if-lt v4, v6, :cond_b

    const-string v3, "Dump line count reached to the limit: 6000"

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v2

    goto :goto_9

    :cond_c
    :goto_a
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v0, "SDPLogFile"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_b
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v3, :cond_e

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_f
    const-string v0, "-------------------------------------------------- END DUMP --------------------------------------------------"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final exists(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    monitor-exit v0

    if-eqz p0, :cond_0

    const/4 p0, -0x4

    goto :goto_0

    :cond_0
    const/4 p0, -0x5

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/16 p0, -0xa

    return p0
.end method

.method public generateAndSaveSpecificKey(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return p0

    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    throw p0
.end method

.method public final getAvailableUserId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method public final getBlockedClearablePackages(I)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "getBlockedClearablePackages"

    invoke-static {v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "pkg_blocked_clearable"

    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "empty"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mNonClearablePackages:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInnerAuthUserId(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method public final getMainUserId(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    const/16 v1, -0x2710

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v0, "ddar.inner.main.userid"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v1
.end method

.method public final getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "getPackageListForDualDarPolicy"

    invoke-static {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPasswordMinimumLengthForInner()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getPasswordMinimumLengthForInner()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getReservedUserIdForSystem()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method public getSpecificKeyViaProtector(Ljava/lang/String;I)[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(ILjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final getSupportedSDKVersion()D
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/knox/dar/DarManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_1
    return-object p1
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public final handleDeviceOwnerChanged()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/server/knox/dar/DarUtil;->mIsDeviceOwnerEnabled:Z

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwner(I)V

    const-string p0, "Skip sdp engine creation for dual-dar do"

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v4

    const-string v5, "Device Owner has been changed!"

    invoke-static {v1, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Confirming Device Owner information [ Owner : %s, User : %d ]"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string/jumbo v5, "do_cleared"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "0"

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string p0, "Unexpected condition as per DO\' already has engine"

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v3, Lcom/android/server/knox/dar/DarUtil;->mIsDeviceOwnerEnabled:Z

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwner(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->welcomeNewUser(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_1
    const-string/jumbo v0, "ro.crypto.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "file"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isUcmUser(I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/knox/secure_fs/enc_media"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "Failed to set sdp policy due to non-existent target"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    if-nez v5, :cond_4

    const-class v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    iput-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    :cond_4
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda0;-><init>(IILjava/io/File;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successfully set sdp policy to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->mountSdpMediaStorage(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Result of mount sdp media storage : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set sdp policy to "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "SdpManagerImpl"

    const-string v1, "Update SdpMdfpp for System."

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;-><init>(IJ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    goto :goto_6

    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_8
    :goto_5
    const-string v0, "Device Owner turned out to be ejected..."

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string/jumbo v1, "do_cleared"

    const-string v3, "1"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->updateDeviceOwnerStatus()V

    :cond_9
    :goto_6
    return-void
.end method

.method public handleUnlockSecureFolderWithToken(I)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    const-string v0, "SdpTokenHandle"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "DarManagerService"

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "get SecureFolder Token Handle Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    const-string v0, "SdpResetToken"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockSettingsInternal;

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4, v2, v3, v0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Unexpected failure while unlock secure folder with token"

    invoke-static {v2, v3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SecureFolder user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been unlocked [ res : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isDarSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isDefaultPathUser(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceRootKeyInstalled()Z
    .locals 10

    const-string/jumbo v0, "ro.hardware.virtual_device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DarManagerService"

    if-eqz v0, :cond_0

    const-string p0, "Will be Failed in device integrity check. But, running on VirtualDevice. Continue .. "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "ro.security.keystore.keytype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sakm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const-string v0, "Check SAK instead for JDM with GRDM or KnoxVault2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxTestKey"

    const-string v4, "Failed while check SAK : "

    iget-object v5, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    new-instance v7, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v7}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    sget-object v8, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    move-result-object v7

    if-eqz v7, :cond_1

    move v3, v1

    :cond_1
    if-eqz v3, :cond_2

    const-string v7, "Generated keypair is protected by SAK"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isEmTokenAllowed()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v0, "Failed while check SAK. But, EM Token is allowed. Continue - "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return v3

    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_2
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v6, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v0, "DRK service is not ready..."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    goto :goto_6

    :goto_8
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return v3

    :goto_9
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isDualDarDoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEmTokenAllowed()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "EM Token status : "

    const-string v1, "DarManagerService"

    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public final isInnerAuthRequired(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    iget-object v2, v0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getDualDARLockstate()Z

    move-result v2

    const-string/jumbo v3, "isInnerLayerLockedState - result : "

    const-string v4, "DualDarManagerImpl"

    invoke-static {v3, v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result p1

    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    :cond_4
    :goto_1
    return v1
.end method

.method public final isKnoxKeyInstallable()Z
    .locals 15

    const-string v0, "KnoxTestKey"

    const-string/jumbo v1, "ro.hardware.virtual_device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "DarManagerService"

    const-string v0, "Will be Failed in device integrity check. But, running on VirtualDevice. Continue - "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v4}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    sget-object v5, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v13, "SHA-384"

    const-string v14, "SHA-512"

    const-string v9, "NONE"

    const-string v10, "SHA-1"

    const-string v11, "SHA-224"

    const-string v12, "SHA-256"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v12

    new-instance v5, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    const/4 v11, 0x0

    const/4 v10, 0x1

    move-object v7, v5

    move v9, v11

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZZLandroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/DarManagerService;->checkDeviceIntegrity([Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "challenge == null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    goto :goto_1

    :goto_3
    return v3

    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isLicensed()I
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v2, v3, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Check permission { Package : %s, PID : %d, UID : %d, UserId : %d }"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpServiceKeeper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz v4, :cond_1

    sget-object v6, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string p0, "Identified as whitelisted"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5, v4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Identified as system app"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    const-string p0, "License activation required"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, -0x9

    :cond_6
    :goto_2
    return v1

    :cond_7
    const/16 p0, -0xa

    return p0
.end method

.method public final isResetPasswordTokenActive(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, p0

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    return v1
.end method

.method public final isSDPEnabled(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isSdpSupported()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isUcmUser(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "SdpManagerImpl"

    const-string v1, ""

    :try_start_0
    const-string/jumbo v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string/jumbo v3, "ril.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v1

    :catch_1
    const-string/jumbo v3, "readOMCSalesCode failed"

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    const-string/jumbo v2, "isLDUModel : sales code : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "FOP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "LDU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :cond_8
    :goto_2
    return v0

    :cond_9
    const-string p0, "DarManagerService_SDP"

    const-string v1, "SDP not supported"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isSdpSupportedSecureFolder(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSensitive(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isVirtualLockSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final lock(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string/jumbo v0, "lock :: Can\'t find engine info "

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "SdpManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, -0x5

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SdpManagerImpl"

    const-string/jumbo v0, "lock :: Not supported anymore to "

    invoke-static {v0, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x63

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "lock :: Permission denied to invoke engine control API"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lock :: Lock engine for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "lock :: Successfully done for user %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string/jumbo v1, "credential"

    invoke-static {p0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "lock :: Failed to lock for user %d... [ rc : %d ]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p0, v0

    :goto_1
    return p0

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    const/16 p0, -0xa

    return p0
.end method

.method public final migrate(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, -0xa

    return p0
.end method

.method public final onBiometricsAuthenticated(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "User %d has been authenticated with biometrics"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    :cond_0
    return-void
.end method

.method public final onDeviceOwnerLocked(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "User %d has been locked"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/android/server/knox/dar/DarUtil;->mIsDeviceOwnerEnabled:Z

    if-nez v1, :cond_0

    const-string v1, "DARUtil"

    const-string v2, "Device owner status not updated yet..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockSdpIfRequired(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public prepareSecuredDataKey(I)V
    .locals 2

    const-string v0, "SdpSecureDataKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->doesSpecificKeyExist(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->generateAndSaveSpecificKey(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Generate secure data key for user %d [ res : %b ]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DarManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    invoke-direct {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;-><init>()V

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    iget-boolean p0, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string p2, "SdpManagerImpl"

    const-string/jumbo v2, "registerClient :: Engine Id = %d, Roll Size = %d, Result = %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_3
    return-void
.end method

.method public final registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p0, -0x5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SdpManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerListener from pid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_3
    const-string p1, "SdpManagerImpl"

    const-string p2, "Failed to link to listener death"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    :goto_1
    return p0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_2
    const/16 p0, -0xa

    return p0
.end method

.method public final removeEngine(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "removeEngine :: no engine found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SdpManagerImpl"

    const-string/jumbo v0, "remove :: Not supported anymore to "

    invoke-static {v0, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x63

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "remove :: Permission denied to invoke engine control API"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    const/16 p0, -0xa

    return p0
.end method

.method public final reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "DarManagerService"

    if-eq v0, p3, :cond_0

    const-string/jumbo p0, "reportApplicationBinding: pid is not matched"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p3}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "reportApplicationBinding: Package is not valid with pid : "

    invoke-static {p3, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v7, Lcom/android/server/knox/dar/DarManagerService$2;

    move-object v0, v7

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/knox/dar/DarManagerService$2;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final reserveUserIdForSystem()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/16 v1, -0x2710

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "reserveUserIdForSystem"

    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "vl.reserved.userid"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public final resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string/jumbo v0, "reset :: Can\'t find engine info "

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "SdpManagerImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, -0x5

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    const/16 v1, -0x63

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p2, "reset :: Not supported anymore to "

    invoke-static {p2, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move p0, v1

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "reset :: Permission denied to invoke engine control API"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Reset password for user "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdpManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpResetToken"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/android/server/knox/dar/KeyProtector;->release(ILjava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    if-eqz p2, :cond_5

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    move-object v7, p1

    :goto_2
    invoke-static {v7}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, -0x2

    goto :goto_3

    :cond_6
    invoke-static {p3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, -0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setPasswordWithToken(IJLjava/lang/String;[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    :goto_3
    return p0

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_8
    const/16 p0, -0xa

    return p0
.end method

.method public final resetPasswordWithToken(Ljava/lang/String;[BI)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Reset password with token for user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VirtualLockImpl"

    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v0, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_1
    move-object v2, p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez p1, :cond_3

    const-class p1, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return v1

    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    return v1
.end method

.method public saveResetTokenViaProtectorForLegacy([BI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SdpResetToken"

    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return p0
.end method

.method public saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p1

    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public saveTokenHandleViaProtectorForLegacy(JI)Z
    .locals 2

    sget-object v0, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SdpTokenHandle"

    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return p0
.end method

.method public final saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string/jumbo v0, "saveTokenIntoTrusted"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move p0, v4

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, -0x63

    :goto_1
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    goto :goto_4

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    :goto_3
    const/4 v4, -0x3

    :goto_4
    return v4

    :cond_4
    const/16 p0, -0xa

    return p0
.end method

.method public final setDualDarInfo(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "setDualDarInfo"

    invoke-static {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->setDualDarInfo(II)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final setInnerAuthUserId(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "setInnerAuthUserId"

    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ddar.inner.auth.userid"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setMainUserId(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "setMainUserId"

    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ddar.inner.main.userid"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string/jumbo v0, "set password :: Can\'t find engine info "

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "SdpManagerImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, -0x5

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    const/16 v1, -0x63

    if-eqz v0, :cond_1

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p2, "set password :: Not supported anymore to "

    invoke-static {p2, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move p0, v1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "set password :: Permission denied to invoke engine control API"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, -0x1

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, -0x6

    if-eq v0, v2, :cond_4

    :goto_1
    move p0, v3

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string/jumbo v2, "credential"

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "SdpManagerImpl"

    if-eqz v2, :cond_5

    const-string/jumbo p0, "set password :: Unexpected condition while derive managed creential for user "

    invoke-static {p1, p0, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Change password for user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SdpManagerImpl.VirtualLock"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v5, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set password for user "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object v5

    new-instance v8, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;

    invoke-direct {v8, p1, p2, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    invoke-virtual {v3, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x0

    :cond_8
    if-nez v1, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "set password :: Successfully done for user %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string/jumbo v5, "credential"

    invoke-virtual {p0, v4, v5, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    goto :goto_4

    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "set password :: Failed to set password for user %d... [ rc : %d ]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clearAll([Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_5
    return p0

    :catchall_1
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    const/16 p0, -0xa

    return p0
.end method

.method public final setResetPasswordToken([BI)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    const-string/jumbo v2, "vl.rst.token.handle"

    iget-object v3, v0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set reset password token for user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VirtualLockImpl"

    invoke-static {v5, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    array-length v4, p1

    const/16 v6, 0x20

    if-lt v4, v6, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-virtual {v3, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, p2, v8, v9}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(IJ)Z

    iget-object v4, v0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, v0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p2, v2, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p1, v8, v2

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-nez p2, :cond_2

    iput-boolean v5, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    new-instance p2, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_2
    move v1, p1

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must be at least 32-byte long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return v1
.end method

.method public setResetTokenForLegacy([BI)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set reset token for Legacy user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "token"

    const-string/jumbo v2, "userId"

    filled-new-array {v1, p1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/knox/dar/DarManagerService;->saveTokenHandleViaProtectorForLegacy(JI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "Unexpected exception while set reset token for Legacy"

    invoke-static {p1, v2, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    goto :goto_1

    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Result of set reset token for Legacy : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final setSensitive(ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x6

    :goto_0
    return p0
.end method

.method public final startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/DarManagerService;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result p0

    return p0
.end method

.method public final stopMonitoring(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoring(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x6

    :goto_0
    return p0
.end method

.method public final stopTracing(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->stopMonitoring(II)I

    move-result p0

    return p0
.end method

.method public final systemReady()V
    .locals 3

    const-string v0, "DarManagerService"

    const-string/jumbo v1, "systemReady for DarManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DarManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/DarManagerService$DarHandler;-><init>(Lcom/android/server/knox/dar/DarManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/DarManagerService;->prepareSecuredDataKey(I)V

    const-class p0, Lcom/android/server/knox/dar/DarManagerService;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p2, "unlock :: Can\'t find engine info for "

    invoke-static {p2, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x5

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    const/16 v2, -0x63

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p2, "unlock :: Not supported anymore to "

    invoke-static {p2, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move p0, v2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlock :: Permission denied to invoke engine control API"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "SdpManagerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unlock :: Failed to check password user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v4

    goto/16 :goto_4

    :cond_4
    :goto_1
    const-string v3, "SdpManagerImpl"

    const-string/jumbo v5, "unlock :: Result of virtual user %d verification : %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eq v3, v4, :cond_8

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    const-string v0, "SdpManagerImpl"

    const-string/jumbo v3, "unlock :: User %d throttled! Please try %d ms later..."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockNative(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "SdpManagerImpl"

    const-string/jumbo v4, "unlock :: Failed in native unlock with user "

    invoke-static {p1, v4, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x2

    :try_start_2
    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string/jumbo v1, "credential"

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :goto_4
    return p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_9
    const/16 p0, -0xa

    return p0
.end method

.method public final unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string/jumbo v0, "unlockViaTrusted :: Can\'t find engine info with "

    const-string/jumbo v1, "unlockViaTrusted"

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "SdpManagerImpl"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, -0x5

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p2

    const/4 v0, -0x7

    if-eqz p2, :cond_1

    :goto_0
    move p0, v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlockViaTrusted :: Permission denied to invoke engine control API"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(ILjava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlockViaTrusted :: Failed to get token for user "

    invoke-static {v0, p1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_4

    const-string p1, "SdpManagerImpl"

    const-string/jumbo p2, "unlockViaTrusted :: Failed to get token handle for user"

    invoke-static {v0, p2, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Verify token for user "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "SdpManagerImpl.VirtualLock"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_1

    :cond_5
    iget-object p2, p2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_2
    invoke-virtual {p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, v3, v4, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda4;-><init>(J[BI)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockNative(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v3, "unlockViaTrusted :: Failed in native unlock with user "

    invoke-static {v0, v3, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x2

    :try_start_3
    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const/4 p0, 0x0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_7
    const/16 p0, -0x63

    :goto_2
    const-string p2, "SdpManagerImpl"

    const-string/jumbo v1, "unlockViaTrusted :: Result of virtual user %d verification : %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return p0

    :catchall_2
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_3
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_8
    const/16 p0, -0xa

    return p0
.end method

.method public final unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p2, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterClient :: Already cleared..."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    iget-object v1, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_1
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    :goto_2
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    const-string p0, "SdpManagerImpl"

    const-string/jumbo p2, "unregisterClient :: Engine Id = %d, Roll Size = %d, Result = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    :goto_5
    return-void
.end method

.method public final unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mSdpManagerImpl:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p0, -0x5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;

    iget-object v5, v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v1

    :goto_1
    move p0, v2

    :goto_2
    return p0

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    const/16 p0, -0xa

    return p0
.end method

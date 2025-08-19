.class public final Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "qb/97330867 27cc687e617a2c5e9df4110e7e3be191ff1d2a0c1fcb6b1e5e0352b887c9e97d"


# static fields
.field public static final DEBUG_DUMP:Z

.field public static final FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

.field public static final SYSTEM_CREDENTIAL_UIDS:[I

.field public static mIsDbMigrated:Z

.field public static mIsSpblobMigrated:Z


# instance fields
.field public final RemoteLockType:[Ljava/lang/String;

.field public final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecret:[B

.field public mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

.field public final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final mBroadcastReceiver:Lcom/android/server/locksettings/LockSettingsService$3;

.field public final mCallbacks:Ljava/util/HashMap;

.field public final mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

.field public final mContext:Landroid/content/Context;

.field public final mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public final mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public mEarlyCreatedUsers:Landroid/util/SparseIntArray;

.field public mEarlyRemovedUsers:Landroid/util/SparseIntArray;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mGatekeeperPasswords:Landroid/util/LongSparseArray;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field protected final mHeadlessAuthSecretLock:Ljava/lang/Object;

.field public mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field public final mKeyStore:Ljava/security/KeyStore;

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mLockTypeForPasswordCheck:I

.field public mMaintenanceModeCallback:Ljava/util/function/Consumer;

.field public final mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPassword:[B

.field public final mPendingVerifiedResults:Landroid/util/SparseArray;

.field public final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field public mRemoteCallback:Landroid/os/IRemoteCallback;

.field public final mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

.field public final mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mSeparateChallengeLock:Ljava/lang/Object;

.field public mShellCommandCallback:Landroid/os/IRemoteCallback;

.field public mShouldUnbind:Z

.field public final mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

.field public final mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

.field public final mSpDumpReceiver:Lcom/android/server/locksettings/LockSettingsService$3;

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mStorageManager:Landroid/os/storage/IStorageManager;

.field public final mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

.field public final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field public final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field public mThirdPartyAppsStarted:Z

.field public final mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

.field public final mUserCreationAndRemovalLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerCache:Ljava/util/HashMap;

.field public final mUserPasswordMetrics:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Unknown or unactivated token: "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set lock credential with token for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v8, "credential"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v9

    const-string/jumbo v10, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "tokenHandle"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "token"

    const-string/jumbo v16, "userId"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v15, p4

    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v10, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isInnerAuthUserForDualDarDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService.DarVirtualLock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "LockSettingsService.DarVirtualLock"

    const-string v1, "Dual DAR Client failed to reset password with token for user: "

    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v8, v6

    goto :goto_2

    :cond_0
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v11

    :try_start_1
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object v0, v1

    move/from16 v1, p5

    move-wide/from16 v2, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v1, :cond_1

    const-string v0, "Invalid escrow token supplied"

    invoke-static {v9, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v12

    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v1

    move-object/from16 v1, p1

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v7, v12, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    monitor-exit v11

    :goto_2
    move v6, v8

    goto/16 :goto_5

    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_2
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v3, v7}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->restoreEscrowDataIfNeededLocked(I)V

    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-wide/from16 v3, p2

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    invoke-virtual {v1, v3, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialChanged(II)V

    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_6

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3, v0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_6
    :goto_4
    const-string v0, "Result of setting credential with token for user %d : %s"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v6

    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Escrow token is disabled on the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/security/Flags;->fixUnlockedDeviceRequiredKeysV2()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "eng"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    const/16 v0, 0x3f8

    const/16 v1, 0x3e8

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    sput-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    sput-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v3, v0}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$3;

    const/4 v3, 0x0

    invoke-direct {v5, v0, v3}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v4, v0}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const-string v4, "FMM"

    const-string v6, "CarrierLock"

    const-string v7, "RmmLock"

    const-string v8, "KnoxGuard"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->RemoteLockType:[Ljava/lang/String;

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-direct {v4, v0, v3}, Lcom/android/server/locksettings/LockSettingsService$9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$9;

    const/4 v11, 0x1

    invoke-direct {v3, v0, v11}, Lcom/android/server/locksettings/LockSettingsService$9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v3, v0, v11}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v12, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    iput-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    :try_start_0
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    const-string v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    new-instance v4, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v6, 0x67

    invoke-direct {v4, v6}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v13, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    iput-object v13, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    monitor-enter v6

    :try_start_1
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    const-string/jumbo v8, "recoverablekeystore.db"

    const/4 v9, 0x7

    invoke-direct {v7, v4, v8, v2, v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v7, v11}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v8, 0x1e

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-direct {v8, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    const-string/jumbo v7, "settings_enable_lockscreen_transfer_api"

    invoke-static {v4, v7}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    invoke-direct {v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v25, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v25, v2

    :goto_0
    :try_start_2
    invoke-static {v4, v8}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v21

    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    move-result-object v7
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v9, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "system"

    invoke-direct {v10, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    new-instance v15, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-direct {v15, v9, v8, v10, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V

    new-instance v10, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v17, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    invoke-static {v11}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v18

    new-instance v14, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v14, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v14, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    new-instance v23, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    move-object v2, v14

    move-object v14, v10

    move-object/from16 v24, v15

    move-object v15, v4

    move-object/from16 v16, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v2

    move-object/from16 v22, v7

    invoke-direct/range {v14 .. v25}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;)V

    sput-object v10, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_1
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_3
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    const/16 v14, 0xa

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/ServiceThread;

    const-string v4, "LockSettingsService"

    invoke-direct {v2, v14, v4, v11}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    iput-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_3

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    :cond_3
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-direct {v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;-><init>()V

    invoke-direct {v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STARTING"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v4, Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v5, v4}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object v6, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    iput-object v5, v6, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    const-class v5, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v5

    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    new-instance v8, Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v5, v4, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V

    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    new-instance v5, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-direct {v5, v13}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;-><init>(Ljava/security/KeyStore;)V

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    new-instance v5, Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-direct {v5, v2}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v8, :cond_5

    new-instance v8, Lcom/android/server/ServiceThread;

    const-string v9, "LockSettingsService"

    invoke-direct {v8, v14, v9, v11}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    iput-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    :cond_5
    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v9, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    if-nez v9, :cond_6

    new-instance v9, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v9, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    :cond_6
    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v9

    new-instance v10, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-direct {v10, v7, v4, v9}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {v5, v10, v2, v4, v8}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V

    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    if-eqz v2, :cond_7

    const-string v2, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    const-string v4, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    const-string v5, "android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    invoke-static {v2, v4, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_7
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordDump;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-direct {v1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :goto_5
    monitor-exit v6

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot load keystore"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isEnablePrevCredential()Z
    .locals 1

    const/4 v0, 0x0   
    return v0
.end method
.method public static scheduleGc()V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V
    .locals 6

    const-string/jumbo v0, "dar"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v3, "automatic_data_decryption"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Secure folder user "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not running yet when on unlock system user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unlock secure folder user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    const/16 v3, 0x96

    invoke-virtual {v0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public final addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add escrow token for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    const-string/jumbo v1, "userId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "add escrow token for virtual user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->prepare(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->initializeSyntheticPasswordForVirtualUser(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->addPendingToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p1

    if-eqz v1, :cond_3

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p4, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p4, p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->getPendingTokenForDualDAR(IJ)[B

    move-result-object v7

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p4, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    const/4 v8, 0x0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokenForDualDAR(JI[B[B)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    :cond_3
    :goto_1
    monitor-exit v0

    return-wide p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    const-string v0, "LockSettingsService"

    const-string v2, "Adding escrow token for user %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v5

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    const/4 v9, 0x0

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    const-string v2, "addEscrowToken: initializeMasterKeyIfRequired"

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v2, p3, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->initializeMasterKeyIfRequired(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    const-string v2, "addEscrowToken: saveEscrowDataIfNeededLocked"

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v2, p3, v1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->saveEscrowDataIfNeededLocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    const-string v2, "addEscrowToken: restoreEscrowDataIfNeededLocked"

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->restoreEscrowDataIfNeededLocked(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->addPendingToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p4, p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->getPendingTokenForDualDAR(IJ)[B

    move-result-object v7

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p4, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    const/4 v8, 0x0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokenForDualDAR(JI[B[B)V

    goto :goto_4

    :cond_6
    const-string p4, "LockSettingsService"

    const-string v2, "Immediately activating escrow token %016x"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p4, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    goto :goto_4

    :cond_7
    const-string p0, "LockSettingsService"

    const-string p3, "Escrow token %016x will be activated when user is unlocked"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p3, p4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    monitor-exit v0

    return-wide p1

    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    const-string v0, "Listener can not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget-boolean v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iget-object v5, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    iget-boolean v7, v2, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    iget-object v8, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    iget v10, v2, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    int-to-long v10, v10

    iget-wide v12, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    iget v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    int-to-long v14, v14

    move-wide/from16 v16, v14

    iget-boolean v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iget-boolean v15, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    move/from16 v18, v15

    iget-object v15, v2, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    const/16 v19, 0x0

    if-eqz v15, :cond_2

    const-string/jumbo v2, "customer_app_name"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    goto :goto_0

    :cond_0
    move-object/from16 v20, v19

    :goto_0
    const-string/jumbo v2, "customer_package_name"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    :cond_1
    move-object/from16 v2, v20

    goto :goto_1

    :cond_2
    move-object/from16 v2, v19

    :goto_1
    const-string/jumbo v15, "locked"

    move-object/from16 v20, v2

    if-eqz v4, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message"

    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "phonenumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableemergencycall"

    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clientname"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "emailaddress"

    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "allowfailcount"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10, v11, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "locktime"

    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v13, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "permanentblockcount"

    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v4, v16

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skippin"

    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "skipsupport"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v4, v18

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    move-object/from16 v2, p2

    iget-object v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packagename"

    invoke-static {v3, v4, v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v19

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remotelockscreen.lockoutdeadline"

    invoke-static {v3, v4, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remotelockscreen.failedunlockcount"

    invoke-static {v3, v4, v8}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :goto_2
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const-string/jumbo v3, "failed changeRemoteLockState callback!"

    const-string v4, "LockSettingsService"

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v5

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v6, :cond_6

    :try_start_1
    invoke-interface {v6, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string v0, "!@ failed changeRemoteLockState callback!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :cond_6
    const-string v0, "!@ NULL Callback for changeRemoteLockState!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v0, :cond_7

    :try_start_2
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_6
    return v5
.end method

.method public final callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p2

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 v1, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "LockSettingsService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Generating new vendor auth secret and storing for user: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x20

    invoke-static {p3}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_6

    const-string p0, "LockSettingsService"

    const-string p2, "Creating non-main user "

    const-string p3, " but vendor auth secret is not in memory"

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    move-object p3, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    invoke-virtual {p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p2

    new-array v1, v1, [B

    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v7

    const-string/jumbo v6, "vendor_auth_secret"

    const-wide/16 v4, 0x0

    move-object v2, v0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(IJLjava/lang/String;[B)V

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    move-object p2, p3

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_7
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v0, "vendor_auth_secret"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, p1, v0, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(ILjava/lang/String;J)[B

    move-result-object p3

    if-nez p3, :cond_8

    const/4 p2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p2

    new-array v0, v1, [B

    invoke-static {p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p2

    :goto_1
    if-nez p2, :cond_9

    const-string p0, "LockSettingsService"

    const-string p2, "Unable to read vendor auth secret for user: "

    invoke-static {p1, p2, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    const-string p3, "LockSettingsService"

    const-string v0, "Sending vendor auth secret to IAuthSecret HAL as user: "

    invoke-static {p1, v0, p3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    invoke-interface {p0, p2}, Landroid/hardware/authsecret/IAuthSecret;->setPrimaryUserCredential([B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string p2, "Failed to send vendor auth secret to IAuthSecret HAL"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_a
    :goto_4
    return-void
.end method

.method public final changeToken([BJ[BJI)Z
    .locals 13

    move-object v0, p0

    move-wide/from16 v7, p5

    move/from16 v9, p7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change token for user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "newToken"

    const-string/jumbo v2, "newHandle"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", oldToken : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", oldHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    filled-new-array {v1, p1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move/from16 v2, p7

    move-wide/from16 v3, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v1, :cond_0

    const-string v0, "Failed due to invalid token"

    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-wide v3, p2

    invoke-virtual {v2, v9, v3, v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v1, "Failed in new token activation"

    invoke-static {v10, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Failed in old token elimination"

    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    monitor-exit v12

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Excrow token is disabled for current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected exception while change token"

    invoke-static {v0, v10, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Final result of change token : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v11
.end method

.method public final checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "applockbackuppin.key"

    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "applockfingerprintpassword.key"

    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "applockpassword.key"

    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockpattern.key"

    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p2, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x1

    if-nez p0, :cond_1

    return p2

    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_1
    return p2
.end method

.method public final checkAppLockPin(Ljava/lang/String;I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "applockpin.key"

    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final checkCarrierPassword([BI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sktpassword.key"

    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p2, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_0
    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw p0
.end method

.method public final checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw p0
.end method

.method public final checkDatabaseReadPermission(ILjava/lang/String;)V
    .locals 2

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " needs permission android.permission.ACCESS_KEYGUARD_SECURE_STORAGE to read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for user "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkFMMPassword([BI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "fmmpassword.key"

    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p2, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final checkManageWeakEscrowTokenMethodUsage()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_WEAK_ESCROW_TOKEN"

    const-string v2, "Requires MANAGE_WEAK_ESCROW_TOKEN permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weak escrow token are only for automotive devices."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPasswordReadPermission()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsRead"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    const-string/jumbo p0, "failed checkRemoteLockPassword callback!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_0
    const/4 p2, -0x1

    :goto_0
    const-string/jumbo v0, "result"

    invoke-static {p2, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-lez p2, :cond_1

    const-string/jumbo p2, "locktime"

    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    const-string/jumbo p2, "timeout"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    :try_start_1
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string/jumbo p1, "failed sendResult callback!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final checkWritePermission()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsWrite"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final closeSession(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string/jumbo v0, "invalid session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_0
    return-void
.end method

.method public deleteRepairModePersistentDataIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .locals 9

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LockSettingsService.SDP"

    const-string p1, "Virtual user can have escrow token"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v1, "e0"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    move-result v4

    const-string/jumbo v5, "p1"

    if-nez v4, :cond_2

    invoke-virtual {v0, p1, v5, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    const-string/jumbo v0, "device_policy_manager"

    const-string/jumbo v4, "deprecate_usermanagerinternal_devicepolicy"

    const/4 v8, 0x1

    invoke-static {v0, v4, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "LockSettingsService"

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceStateCache;->isUserOrganizationManaged(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->isResetPasswordSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Dual DAR enabled Organization Managed profile can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    :try_start_2
    const-string v0, "Dual DAR enabled Organization Managed profile doesn\'t support reset password. Disable escrow"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string p0, "Organization managed users can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserManaged(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v8, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->isResetPasswordSupported(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string p0, "Dual DAR enabled Managed profile can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6
    :try_start_4
    const-string v8, "Dual DAR enabled Managed profile doesn\'t support reset password. Disable escrow"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string p0, "Managed profile can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_8
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "Corp-owned device can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "User with knox admin can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_b

    const-string p0, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.type.automotive"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "SecureFolder can have escrow token"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Permanently disabling support for escrow tokens on user %d"

    invoke-static {v4, v6, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    return-void

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v8, p2

    if-eqz v9, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Verify credential for user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v2, "credential"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    const-string/jumbo v4, "credentialType"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "userId"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v11, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v11, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v3

    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v11}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    goto :goto_0

    :cond_0
    const-string v2, "Sp not yet applied to user "

    invoke-static {v8, v2, v10}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Result of verification for user %d : %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialMismatchedForInner(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v9, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    const-string/jumbo v0, "set Sdp key"

    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Result of verification of user %d : %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v11, v8}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    invoke-virtual {v0, v2, v8, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I[B)V

    :cond_5
    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v11, 0x0

    const/16 v2, -0x270f

    if-ne v8, v2, :cond_8

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v0, v3, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "LockSettingsService"

    const-string v1, "FRP credential can only be verified prior to provisioning."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_8
    const/16 v0, -0x270e

    if-ne v8, v0, :cond_9

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "LockSettingsService"

    const-string v1, "Repair mode is not active on the device."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_9
    const-string v0, "LockSettingsService"

    const-string v3, "Verifying lockscreen credential for user %d"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v0, v9, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->doVerifyCredentialForDualDAR(Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "verifyChallenge for DualDAR failed."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RemoteException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v12, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v12

    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifySpecialUserCredential(ILandroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_c

    if-ne v8, v2, :cond_c

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    iget-object v2, v1, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v2, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iput-boolean v11, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {v1, v11}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_b
    const-string v1, "LockSettingsStorage"

    const-string v2, "Failed to get PersistentDataBlockManagerInternal"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_c
    :goto_2
    monitor-exit v12

    return-object v0

    :cond_d
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_e

    const/16 v0, -0x26ab

    if-ne v8, v0, :cond_e

    const-string v0, "LockSettingsService"

    const-string v2, "!@ try unlock with prevCredential!!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v2

    move-wide v14, v2

    move v0, v11

    move/from16 v16, v13

    goto :goto_3

    :cond_e
    move-wide v14, v2

    move v0, v8

    move/from16 v16, v11

    :goto_3
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, v14

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_10

    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v0, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeRepairModeCredentialLocked(IJ)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v0, "LockSettingsService"

    const-string v1, "Failed to write repair mode credential"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Verify success. But failed to write repair mode credential"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v12

    return-object v0

    :cond_f
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v5, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v0, v5}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    iget-object v4, v4, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "LockSettingsService"

    const-string v5, "Successfully verified lockscreen credential for user %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-eqz v16, :cond_11

    move-object v5, v10

    goto :goto_4

    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v5

    :goto_4
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object v5, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I[B)V

    :cond_12
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_5
    cmp-long v12, v7, v5

    if-eqz v12, :cond_14

    :try_start_4
    iget-object v12, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_13

    goto :goto_6

    :cond_13
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v7, v8, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v7, v8}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    const-wide/32 v5, 0x927c0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v3}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_14
    :goto_6
    :try_start_5
    sget-object v7, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v7

    goto :goto_5

    :goto_7
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_15
    :goto_8
    const-string v4, "Result of verification of user %d : %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSdpMasterKey()[B

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v4, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isSdpUser(I)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string/jumbo v5, "unlockSdpOnCredentialVerified."

    invoke-static {v10, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_16

    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->getSdpManager()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda5;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6, v2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_9

    :cond_16
    const-string v2, "Unlock SDP on credential verified - Unexpected condition with user "

    const-string v4, "LockSettingsService.SDP"

    invoke-static {v0, v2, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_9
    invoke-virtual {v1, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->cancelDataLock(I)V

    :cond_18
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object v4, v2, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string/jumbo v5, "ro.product.first_api_level"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x1d

    if-ge v5, v6, :cond_19

    const-string/jumbo v5, "migrated_password_hash"

    invoke-virtual {v4, v5, v11, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "Migrate password hash for enterprise user "

    const-string v7, "LockSettingsService.SDP"

    invoke-static {v0, v6, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v13, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v9, v0, v6}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/android/internal/widget/LockscreenCredential;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    const-string/jumbo v2, "persist.escrowvault.sa.signed"

    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "isSaSignedIn : "

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->updateVerifier(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_a

    :cond_1a
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v13, :cond_1b

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    if-lez v2, :cond_1b

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_1b
    :goto_a
    invoke-static {}, Landroid/security/Flags;->reportPrimaryAuthAttempts()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_1c

    move v11, v13

    :cond_1c
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockSettingsStateListener;

    if-eqz v11, :cond_1d

    invoke-interface {v2, v0}, Lcom/android/internal/widget/LockSettingsStateListener;->onAuthenticationSucceeded(I)V

    goto :goto_b

    :cond_1d
    invoke-interface {v2, v0}, Lcom/android/internal/widget/LockSettingsStateListener;->onAuthenticationFailed(I)V

    goto :goto_b

    :cond_1e
    return-object v3

    :goto_c
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Verify credential for dual-dar user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "credential"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    :goto_1
    const-string/jumbo v3, "credentialType"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "opiotn"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "LockSettingsService"

    const-string v1, "Verifying lockscreen credential for user %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p2, v3}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    iget-object v2, v2, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v9

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v10

    const-wide/16 v7, 0x0

    move v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    :goto_3
    const-string p0, "LockSettingsService"

    const-string/jumbo p1, "verifyChallenge with SP failed."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v0

    return-object p0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_8

    const-string v0, "LockSettingsService"

    const-string v4, "Successfully verified lockscreen credential for user %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/2addr p3, v3

    if-eqz p3, :cond_6

    iget-object p3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    const-string v1, "Postpone credential verified event for user "

    const/4 v3, 0x0

    invoke-static {p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_1
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    invoke-direct {v1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>()V

    iput-object p4, v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    if-nez p4, :cond_5

    move-object p4, v3

    goto :goto_4

    :cond_5
    invoke-interface {p4}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    :goto_4
    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;I)V

    invoke-virtual {p4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance p4, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    invoke-direct {p4, p3, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p3, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result p4

    if-nez p4, :cond_7

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Auth user "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has no credential"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-virtual {p4, v0, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z

    goto :goto_5

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    iget-object p3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p4

    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    :cond_7
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->cancelDataLock(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p1

    if-lez p1, :cond_9

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_9
    :goto_6
    return-object v2

    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Credential can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string p3, "LockSettingsService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "Current lock settings service state:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceOwner(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DO Enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sdp-mdfppmode-for-system"

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-string v1, "SdpMdfppMode for System Applied: NeedToEnableSdpMdfppMode"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "sdp-mdfppmode-for-system"

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    const-string v1, "SdpMdfppMode for System Applied: SdpMdfppModeEnabledForSystem"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "User State:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    move v4, p1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "User "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v6

    :try_start_0
    const-string v7, "LSKF-based SP protector ID: %016x"

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "LSKF last changed: %s (previous protector: %016x)"

    const-string/jumbo v8, "sp-handle-ts"

    invoke-virtual {p0, v8, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "prev-sp-handle"

    invoke-virtual {p0, v9, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-nez v5, :cond_2

    const-string v7, "Backup protector: %016x (set : %s, expire : %s)"

    const-string/jumbo v8, "backup-protector-id"

    invoke-virtual {p0, v8, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string/jumbo v9, "backup-protector-ts"

    invoke-virtual {p0, v9, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "backup-expiration-ts"

    invoke-virtual {p0, v10, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Secure Mode: %d"

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v7, v5}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    const-string v6, "SID: %016x"

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Quality: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v8, "lockscreen.password_type"

    invoke-virtual {v7, v8, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CredentialType: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SeparateChallenge: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "Metrics: %s"

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "known"

    goto :goto_3

    :cond_3
    const-string/jumbo v7, "unknown"

    :goto_3
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "failed attempt = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v7}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Keys in namespace:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to get keys: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "LockSettingsService"

    const-string v5, "Dump error"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Storage:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "%6d %s %s"

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v7

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "User %d [%s]:"

    invoke-static {v9, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v8, v7

    move v9, p1

    :goto_7
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v11, v12, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    const-string v6, "[Not found]"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v5}, Lcom/samsung/android/lock/SPBnRManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Repair Mode [%s]:"

    invoke-static {v7, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    goto :goto_8

    :cond_9
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v1

    :goto_8
    iget v4, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    if-eqz v1, :cond_a

    array-length v1, v1

    goto :goto_9

    :cond_a
    move v1, p1

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "type: %d, user id: %d, payload size: %d"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "StrongAuth:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "PrimaryAuthFlags state:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v4, p1

    :goto_a
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const-string/jumbo v6, "userId="

    if-ge v4, v5, :cond_c

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-string v8, ", primaryAuthFlags="

    invoke-static {v5, v6, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "NonStrongBiometricAllowed state:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v4, p1

    :goto_b
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", allowed="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "strong auth timeout state:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v6, "lockscreen.strong_bio_timeout"

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "strong biometric timeout:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v6, "lockscreen.non_strong_bio_timeout"

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "non strong biometric timeout:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v5, "lockscreen.non_strong_bio_idle_timeout"

    invoke-virtual {v1, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "non strong biometric idle timeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "RebootEscrow:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "mRebootEscrowWanted="

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v2, "mRebootEscrowReady="

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v2, "mRebootEscrowListener="

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v2, "mLoadEscrowDataErrorCode="

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    iget-object v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_c

    :cond_11
    move v3, p1

    :goto_c
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string/jumbo v2, "mPendingRebootEscrowKey is "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_12

    const-string/jumbo v2, "set"

    goto :goto_d

    :cond_12
    const-string/jumbo v2, "not set"

    :goto_d
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget-object v2, v2, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    if-nez v2, :cond_13

    const-string/jumbo v2, "null"

    goto :goto_e

    :cond_13
    invoke-interface {v2}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RebootEscrowProvider type is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Event log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_f
    iget-object v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    array-length v4, v3

    if-ge p1, v4, :cond_16

    iget v4, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    add-int/2addr v4, p1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    if-nez v3, :cond_14

    goto :goto_11

    :cond_14
    const-string v4, "Event #"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v3, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v4, " event="

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    packed-switch v4, :pswitch_data_0

    const-string v5, "Unknown event ID "

    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :pswitch_0
    const-string v4, "Retrieved LSKF for user"

    goto :goto_10

    :pswitch_1
    const-string v4, "Stored LSKF for user"

    goto :goto_10

    :pswitch_2
    const-string v4, "Requested LSKF"

    goto :goto_10

    :pswitch_3
    const-string v4, "Retrieved stored KEK"

    goto :goto_10

    :pswitch_4
    const-string v4, "Cleared request for LSKF"

    goto :goto_10

    :pswitch_5
    const-string v4, "Set armed status"

    goto :goto_10

    :pswitch_6
    const-string v4, "Found escrow data"

    :goto_10
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    if-eqz v3, :cond_15

    const-string v4, " user="

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    :goto_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PasswordHandleCount: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThirdPartyAppsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string p0, "LSSLog:"

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final enforceFrpNotActive()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, "LockSettingsService"

    const-string v0, "No Main user on device; skipping enforceFrpNotActive"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result v3

    goto :goto_1

    :cond_2
    const-string p0, "LockSettingsStorage"

    const-string v0, "Failed to get PersistentDataBlockManager"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "secure_frp_mode"

    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_4

    if-eqz v0, :cond_4

    move v3, v2

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot change credential while factory reset protection is active"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final expirePreviousData()V
    .locals 6

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "expirePreviousData requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setBackupLskfBasedProtectorId(IJ)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final gateKeeperClearSecureUserId(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Failed to clear SID"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBackupLskfBasedProtectorId(I)J
    .locals 3

    const-string/jumbo v0, "backup-protector-id"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getBoolean(Ljava/lang/String;ZI)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public final getCarrierLock(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    const-string/jumbo v0, "getCarrierLock#mSKTLockState = "

    const-string v1, "LockSettingsStorage"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    move-result p1

    if-eqz p1, :cond_2

    iput v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    :goto_1
    return v2
.end method

.method public final getCredentialType(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    return p0
.end method

.method public final getCredentialTypeInternal(I)I
    .locals 8

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p1

    iget v2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    move-result v2

    :goto_0
    return v2

    :cond_3
    const/16 v0, -0x26ab

    const-wide/16 v3, 0x0

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_4

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(IJ)I

    move-result p0

    if-eq p0, v1, :cond_5

    monitor-exit v0

    move v2, p0

    goto :goto_1

    :cond_5
    monitor-exit v0

    :goto_1
    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_1
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->getCredentialType(I)I

    move-result p0
    :try_end_1
    .catch Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v5

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    :cond_7
    const-string v5, "LockSettingsService.SDP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v5, "lockscreen.password_type"

    invoke-virtual {v0, v5, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    long-to-int v0, v5

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualitySmartCard(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x6

    return p0

    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_a

    monitor-exit v0

    return v2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(IJ)I

    move-result v2

    if-eq v2, v1, :cond_b

    monitor-exit v0

    return v2

    :cond_b
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.password_type"

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    move-result p0

    monitor-exit v0

    return p0

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getCurrentLskfBasedProtectorId(I)J
    .locals 3

    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LockSettingsService"

    const-string v2, "Decrypting password for tied profile %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v5, v0

    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v7, 0x80

    invoke-direct {v6, v7, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v4

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to talk to GateKeeper service"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Child profile lock file not found"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getExpireTimeForPrev()J
    .locals 2

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "expirePreviousData requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->updateExpireTimeForPrev(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFailureCount(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFailureCount(Lcom/samsung/android/service/HermesService/IHermesService;JI)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFailureCount(Landroid/service/gatekeeper/IGateKeeperService;JI)I

    move-result v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    if-gez v1, :cond_1

    const-string p1, "LockSettingsService"

    const-string/jumbo v0, "getFailureCount error "

    invoke-static {v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sget p1, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    if-lt v1, p1, :cond_2

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    const-string v0, "LockSettingsService"

    const-string v1, "Unable to acquire GateKeeperService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    :try_start_0
    const-string v0, "LockSettingsService"

    const-string v1, "Getting password history hash factor for user %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v6, p1

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "LockSettingsService"

    const-string p2, "Failed to get unified profile password"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :goto_1
    :try_start_3
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v0, -0x26ab

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    :try_start_4
    const-string p2, "LockSettingsService"

    const-string v0, "!@ getHashFactor with prev!!!"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    move v7, v2

    move v2, p2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_2
    move v7, p2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v2

    :goto_3
    move-wide v4, v2

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p0, :cond_4

    const-string p0, "LockSettingsService"

    const-string p2, "Current credential is incorrect"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :cond_4
    :try_start_5
    sget-object p2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p0

    :goto_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw p0
.end method

.method public final declared-synchronized getHermesService()Lcom/samsung/android/service/HermesService/IHermesService;
    .locals 3

    const-string/jumbo v0, "getHermesService() is "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sepunion"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v2, "HermesService"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public final getLong(Ljava/lang/String;JI)J
    .locals 0

    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPinLength(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget p0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v3, "pwd"

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(ILjava/lang/String;J)[B

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    iget v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    :goto_0
    monitor-exit v0

    return v4

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_1

    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getRecoverySecretTypes()[I
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object p0

    return-object p0
.end method

.method public final getRecoveryStatus()Ljava/util/Map;
    .locals 11

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string p0, "_id"

    const-string v9, "alias"

    const-string/jumbo v10, "recovery_status"

    filled-new-array {p0, v9, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v2, "keys"

    const-string/jumbo v4, "uid = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method public final getSeparateProfileChallengeEnabled(I)Z
    .locals 1

    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    return p0
.end method

.method public final getSeparateProfileChallengeEnabledInternal(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStrongAuthForUser(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    return p0
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/app/admin/PasswordMetrics;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hasPendingEscrowToken(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSecureLockScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return p0
.end method

.method public final haveAppLockBackupPin(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockbackuppin.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final haveAppLockFingerprintPassword(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockfingerprintpassword.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final haveAppLockPassword(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockpassword.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final haveAppLockPattern(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockpattern.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final haveAppLockPin(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockpin.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final haveCarrierPassword(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sktpassword.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final haveFMMPassword(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "fmmpassword.key"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 2

    const-string p0, "Failed to initialize Keystore super keys for user "

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveKeyStorePassword()[B

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/security/AndroidKeyStoreMaintenance;->initUserSuperKeys(I[BZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void

    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    throw p0
.end method

.method public final initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    const-string v0, "RecoverableKeyStoreMgr"

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "recoveryServiceCertFile is null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "recoveryServiceSigFile is null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    :try_start_1
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "The signature over the cert file is invalid. Cert: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Sig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1c

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse the sig file: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x19

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialize sp for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string/jumbo v1, "initializeSP"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/lock/LsLog;->enrollRequest(IILjava/lang/String;)V

    const-string v0, "Enroll [User %d NONE][initializeSP]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "LockSettingsService"

    const-string v2, "Initializing synthetic password for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Cannot reinitialize SP"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v9

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v10, v1

    move v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(IJ)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    sget-boolean v4, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    const-string p0, "LockSettingsService"

    const-string v2, "Successfully initialized synthetic password for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCeStorageUnlocked(I)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Error checking whether CE storage is unlocked"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCredentialSharableWithParent(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create context for user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final isDeviceOwner(I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "knox.device_owner"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isDualDarAuthUserId(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnterpriseUserId(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result p0
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
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isEscrowTokenActive(JI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v1, "spblob"

    invoke-virtual {p0, p3, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isKnoxAdminActivated(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "enterprise_policy"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresentAsUser(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "LockSettingsService"

    const-string v0, "Failed talking with enterprise policy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isProfileWithUnifiedLock(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRemoteLock(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->haveFMMPassword(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCarrierLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final isSupportWeaver()Z
    .locals 1

    const-string/jumbo p0, "security.securehw.available"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isSyntheticPasswordBasedCredentialLocked(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUserSecure(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWeakEscrowTokenActive(JI)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isWeakEscrowTokenValid(J[BI)Z
    .locals 13

    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move/from16 v11, p4

    invoke-virtual {v4, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v4

    const/4 v12, 0x0

    if-nez v4, :cond_0

    const-string v0, "LockSettingsService"

    const-string v4, "Escrow token is disabled on the current user"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const/4 v9, 0x2

    move-wide v7, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v0, :cond_1

    const-string v0, "LockSettingsService"

    const-string v4, "Invalid escrow token supplied"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final loadPasswordMetrics(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string/jumbo v3, "automatic_data_decryption"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1040c4a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v2, "Core.PROFILE_ENCRYPTED_TITLE"

    if-eqz p1, :cond_6

    const-string/jumbo p1, "ro.build.characteristics"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string/jumbo v3, "tablet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c46

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v8, v2

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "Core.PROFILE_ENCRYPTED_MESSAGE"

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_a

    :cond_9
    move-object v10, v9

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    const-string v4, "Core.PROFILE_ENCRYPTED_DETAIL"

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :goto_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v9, v9, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_b

    goto/16 :goto_5

    :cond_b
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_5

    :cond_c
    const/high16 v2, 0x10800000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/admin/flags/Flags;->hsumUnlockNotificationFix()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/high16 v5, 0xa000000

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_4

    :cond_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/high16 v5, 0xa000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_4
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v3, "LockSettingsService"

    const-string v4, "Showing encryption notification for user %d; reason: %s"

    invoke-static {v3, v4, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    const/16 v3, 0x9

    const v4, 0x106001c

    const-wide/16 v5, 0x0

    const v7, 0x10805fa

    if-eqz p2, :cond_e

    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {p2, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v9, v3, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_e
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {p2, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v9, v3, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public final migrateLockSettingsDB()V
    .locals 7

    const-string/jumbo v0, "locksettings_db_backup"

    const-string/jumbo v1, "locksettings_db_restore"

    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    const-string v3, "LockSettingsService"

    if-eqz v2, :cond_0

    const-string p0, "!@ migrateLockSettingsDB already finish"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "PRAGMA quick_check(1)"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ok"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_0
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    move v5, v2

    :goto_4
    if-eqz v5, :cond_5

    const-string v4, "!@ LockSettingsDB, checkIntegrity pass."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "migrate backup locksettings.db! Maybe FOTA updated or backup failed. try to backup DB!"

    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_6

    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "migrate backup locksettings.db! Maybe DB removed. try to restore DB!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_6

    :cond_4
    const-string/jumbo v0, "migrate backup locksettings.db! Maybe 1st boot!!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "LockSettingsDB, DB Integrity failed! restore locksettings.db!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_5

    :cond_6
    const-string v0, "LockSettingsDB, DB Integrity failed! but do not have backup!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    return-void

    :catch_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "LockSettingsDB, Found corrupted! restore locksettings.db!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_6

    :cond_7
    const-string p0, "LockSettingsDB, Found corrupted! but do not have backup!"

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    :cond_8
    :goto_6
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    return-void
.end method

.method public final migrateMdfppPwdData(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migratePwdDataForKnox(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public migrateOldDataAfterSystemReady()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "migrated_frp2"

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v3, :cond_1

    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v4, 0x2

    if-eq v3, v1, :cond_0

    if-ne v3, v4, :cond_4

    :cond_0
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lt v3, v4, :cond_4

    aget-byte v3, v0, v2

    if-nez v3, :cond_4

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v0, "lockscreen.password_type"

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v0, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    long-to-int v0, v5

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v6

    const/high16 v8, 0x20000

    if-eq v0, v8, :cond_3

    const/high16 v9, 0x30000

    if-eq v0, v9, :cond_3

    const/high16 v8, 0x40000

    if-eq v0, v8, :cond_3

    const/high16 v9, 0x50000

    if-eq v0, v9, :cond_3

    const/high16 v9, 0x60000

    if-eq v0, v9, :cond_3

    goto :goto_0

    :cond_3
    move v0, v8

    :goto_0
    invoke-virtual {v5, v6, v7, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    const-string/jumbo v0, "migrated_frp2"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_5
    const-string v0, "LockSettingsService"

    const-string/jumbo v3, "lockscreen.pwdata.ver"

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/lock/LsConstants;->SECURITY_LOG_VERSION:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v5, "empty"

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SecurityLog ver updated! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v5, "locksettings.log.ver"

    invoke-virtual {v3, v2, v2, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    move-result v3

    if-ge v3, v1, :cond_9

    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->migrate(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_8

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "User "

    const-string v9, " list updated!\n"

    invoke-static {v4, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v10, "lockscreen.token"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    move-object v4, v8

    goto :goto_2

    :cond_8
    invoke-static {v4}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    :try_start_1
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "!@ safe mode on"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_a
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    move-result v2

    sget v3, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    if-lt v2, v3, :cond_b

    const-string v2, "!@ debug mode on, Too many failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    goto :goto_4

    :cond_b
    const-string p0, "!@ safe mode off"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAFEMODE Exception occurs! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final migrateSpblob()V
    .locals 7

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    if-eqz v0, :cond_0

    const-string p0, "LockSettingsService"

    const-string v0, "!@ migrateSpblob already finish"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "LockSettingsService"

    const-string v1, "!@ migrateSpblob()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/lock/SPBnRManager;->init(Z)V

    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->resetMode()V

    const-string/jumbo v0, "locksettings_spblob_backup"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v0, v4, v1

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "migrate backup SPBLOB! Maybe FOTA updated or backup failed. try to backup SPBLOB!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v0

    invoke-static {v3, v5, v6, v0, v1}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->startBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "locksettings_spblob_backup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string p0, "SPblobBNR, Success backup spblob dir"

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "SPblobBNR, Failed backup spblob dir"

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "migrate backup SPBLOB! Maybe 1st boot!!"

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v0

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v5

    invoke-static {v3, v0, v1, v5, v6}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->checkIntegrity()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "LockSettingsService"

    const-string v1, "!@ SPblobBNR, checkIntegrity pass."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "locksettings_spblob_backup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string p0, "SPblobBNR, File corruption detected. Backed up or restored."

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sput-boolean v4, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final migrateUserToSpWithBoundCeKeyLocked(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d is secured; no migration needed"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Migrating unsecured user %d to SP-based credential"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Existing unsecured user %d has a synthetic password; re-encrypting CE key with it"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    :goto_0
    return-void
.end method

.method public final migrateUserToSpWithBoundKeysLocked(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d is secured; no migration needed"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Migrating unsecured user %d to SP-based credential"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Existing unsecured user %d has a synthetic password"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "migrated_all_users_to_sp_and_bound_ce"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Encrypting CE key of user %d with synthetic password"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Initializing Keystore super keys for user %d"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void
.end method

.method public final notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 3

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/android/internal/widget/LockscreenCredential;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    :cond_0
    return-void
.end method

.method public final notifySeparateProfileChallengeChanged(I)V
    .locals 1

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .locals 7

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->migrateWithAuthToken(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->migrateWithAuthToken(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p2

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "LockSettingsService"

    const-string v5, "Activating escrow token %016x for user %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p3, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    iget-boolean p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSecureFolderAuthToken:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const-string/jumbo p2, "onCredentialVerified : unlockSecureFolderWithToken is true."

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void

    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p2

    if-eqz p2, :cond_7

    :try_start_2
    const-string/jumbo p2, "password_policy"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p2, :cond_6

    const-string p2, "LockSettingsService"

    const-string v1, "Password change requested so avoid setDeviceLockedForUser false"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/trust/TrustManager;

    invoke-virtual {p2, p3, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p2, v0, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void

    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 4

    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ppp_enroll_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updateVerifier(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    aget-object v3, p4, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "LockSettingsService"

    const-string v5, "Executing shell command \'%s\'; callingPid=%d, callingUid=%d"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    iput-object v1, v3, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    move-object v1, v3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LockSettingsService"

    const-string p1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-byte v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "RebootEscrowManager"

    const-string v1, "Not storing escrow data, RebootEscrowProvider is unavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    monitor-exit v3

    goto :goto_0

    :catch_0
    const-string v4, "RebootEscrowManager"

    const-string v6, "Could not generate reboot escrow key"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    :goto_0
    if-nez v4, :cond_4

    const-string v0, "RebootEscrowManager"

    const-string v1, "Could not generate escrow key"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    iget-object v6, v3, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    move-result-object v3

    if-eqz v3, :cond_5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_5
    :try_start_4
    const-string v3, "AES"

    const-string v7, "AndroidKeyStore"

    invoke-static {v3, v7}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v8, "reboot_escrow_key_store_encryption_key"

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const-string v8, "GCM"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const-string v8, "NoPadding"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v6

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v7, "RebootEscrowKeyStoreManager"

    const-string v8, "Unable to generate key from keystore."

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-nez v5, :cond_6

    const-string v0, "RebootEscrowManager"

    const-string v1, "Failed to generate encryption key from keystore."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :try_start_6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v4, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    invoke-static {v2, v3}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x6

    invoke-direct {v2, v5, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    iget v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    iget-object v5, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object v2, v5, v3

    add-int/2addr v3, v4

    array-length v2, v5

    rem-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    goto :goto_2

    :catch_2
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    const-string v0, "RebootEscrowManager"

    const-string v2, "Could not escrow reboot data"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void

    :goto_3
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :goto_4
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public onUserStopped(I)V
    .locals 4

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "LockSettingsService"

    const-string v3, "Hiding encryption notification for user %d"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final passwordToHash(I[B)[B
    .locals 5

    const-string/jumbo v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 7

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    iget-object v3, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    iget-object v6, v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    :try_start_0
    invoke-static {v4, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x16

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    throw p0

    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "Application uid="

    const-string p3, " does not have pending session \'"

    const-string v0, "\'"

    invoke-static {v1, p2, p3, p1, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x18

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final refreshStoredPinLength(I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v5

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isAutoPinConfirmationFeatureAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "pwd"

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(ILjava/lang/String;J)[B

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v2

    iget v3, v1, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    if-ge v3, v1, :cond_3

    :cond_2
    const/4 v3, -0x1

    :cond_3
    iget v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    if-eq v1, v3, :cond_4

    iput v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    const-string/jumbo v7, "pwd"

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v8

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(IJLjava/lang/String;[B)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    :cond_4
    const/4 v2, 0x1

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    const-string p0, "LockSettingsService"

    const-string p1, "PasswordMetrics is not available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 3

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo v0, "registerRemoteLockCallback!!"

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v2, p1, :cond_3

    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "failed checkRemoteLockPassword callback!! after register"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_2
    const/4 p1, -0x1

    :goto_1
    const-string/jumbo p2, "result"

    invoke-static {p1, p2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :try_start_1
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p2, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string/jumbo p2, "failed sendResult callback!! after register"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    :cond_3
    return-void
.end method

.method public final registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final removeCachedUnifiedChallenge(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .locals 6

    const-string v0, "Clearing activated reset pwd token for DualDAR user: "

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "LockSettingsService"

    const-string p1, "Escrow token handle equals LSKF-based protector ID"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v4, "spblob"

    invoke-virtual {v2, p3, v4, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(IJ)V

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->clearResetPasswordToken(IJ)V

    :cond_3
    monitor-exit v1

    return v5

    :cond_4
    monitor-exit v1

    return v3

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeGatekeeperPasswordHandle(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeKey(Ljava/lang/String;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v3, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p1}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "keys"

    const-string/jumbo v6, "uid = ? AND alias = ?"

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final removeKeystoreProfileKey(I)V
    .locals 5

    const-string v0, "LockSettingsService"

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "profile_key_name_encrypt_"

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "profile_key_name_decrypt_"

    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "Removing keystore profile key for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error removing keystore profile key for user %d"

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final removeStateForReusedUserIdIfNecessary(II)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "serial-number"

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_2

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "LockSettingsService"

    const-string v3, "Removing stale state for reused userId %d (serial %d => %d)"

    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public final removeUserState(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    return-void
.end method

.method public final removeWeakEscrowToken(JI)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final reportSuccessfulBiometricUnlock(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    const-string v2, "LockSettingsBiometric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportSuccessfulBiometricUnlock for isStrongBiometric="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public final requestRemoteLockInfo(I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v0, 0x4

    if-ge v4, v0, :cond_2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "locked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "phonenumber"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "enableemergencycall"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "clientname"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "emailaddress"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "allowfailcount"

    invoke-static {v4, v13}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    move-object/from16 v16, v9

    invoke-virtual {v1, v13, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    long-to-int v8, v8

    const-string/jumbo v9, "locktime"

    invoke-static {v4, v9}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move v13, v8

    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    const-string/jumbo v0, "permanentblockcount"

    invoke-static {v4, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    long-to-int v0, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "skippin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skipsupport"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v3

    const-string/jumbo v3, "appname"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v15, "customer_app_name"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "packagename"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v15, "customer_package_name"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v3, v4, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    move-object/from16 v6, v16

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    move/from16 v3, v17

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const-string/jumbo v5, "failed changeRemoteLockState callback!"

    const-string v6, "LockSettingsService"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final requireStrongAuth(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public final resetKeyStore(I)V
    .locals 13

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Resetting keystore for user %d"

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Failed to decrypt child profile key"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    aget v7, v4, v6

    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v9, v8

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_3

    aget v11, v8, v10

    invoke-static {v7, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v3, v11, v12}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    const-wide/16 v5, 0x66

    invoke-static {v4, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    if-eq v4, v2, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockscreenCredential;

    if-eq v5, v2, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    throw v4
.end method

.method public final scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    const-string v2, "LockSettingsBiometric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scheduleNonStrongBiometricIdleTimeout for userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStrongAuth"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendCredentialsOnChangeIfRequired(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 17

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v15, "RecoverableKeyStoreMgr"

    :try_start_0
    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v4, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v9

    new-instance v10, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v16, Landroid/security/Scrypt;

    invoke-direct/range {v16 .. v16}, Landroid/security/Scrypt;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v8, 0x1

    move-object v1, v0

    move-object v7, v12

    move-object/from16 p2, v12

    move-object v12, v11

    move-object/from16 v11, v16

    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-interface {v12, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 p2, v12

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 p2, v12

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 p2, v12

    goto :goto_5

    :goto_3
    const-string v1, "InsecureUserException during lock screen secret update"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_4
    const-string v1, "Key store error encountered during recoverable key sync"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    const-string v1, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    move-object/from16 v12, p2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    invoke-static/range {p2 .. p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v14, "RecoverableKeyStoreMgr"

    :try_start_0
    iget-object v15, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v5, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v6, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    invoke-static {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v11

    new-instance v12, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Landroid/security/Scrypt;

    invoke-direct {v13}, Landroid/security/Scrypt;-><init>()V

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v15, v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :goto_1
    const-string v3, "Impossible - insecure user, but user just entered lock screen"

    invoke-static {v14, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_2
    const-string v3, "Key store error encountered during recoverable key sync"

    invoke-static {v14, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_3
    const-string v3, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v14, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final sendLockTypeChangedInfo(I)V
    .locals 1

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "sendLockTypeChangedInfo requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    return-void
.end method

.method public final setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "applockbackuppin.key"

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "applockfingerprintpassword.key"

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final setAppLockPassword(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "applockpassword.key"

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final setAppLockPattern(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "applockpattern.key"

    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final setAppLockPin(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "applockpin.key"

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final setBackupLskfBasedProtectorId(IJ)V
    .locals 9

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "!@ setBackupLskfBasedProtectorId : %016x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "backup-protector-id"

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string/jumbo v0, "backup-protector-ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    const-string/jumbo v4, "backup-expiration-ts"

    if-nez v0, :cond_1

    invoke-virtual {p0, v4, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xf731400

    add-long/2addr v5, v7

    invoke-virtual {p0, v4, v5, v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :goto_0
    const-string/jumbo v0, "prev.attempts.count"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "LockSettingsDB, setBackupLskfBasedProtectorId User %d [%016x]"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    const-string/jumbo p2, "locksettings_db_backup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    if-eqz p1, :cond_2

    const-string p0, "SPblobBNR, Backups are only supported for system users"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public final setBoolean(Ljava/lang/String;ZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final setCarrierLockEnabled(I)V
    .locals 0

    return-void
.end method

.method public final setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 5

    const-string v0, "Failed to protect CE key for user "

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->isSdpMdfppMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->ensureSdpTokenSyntheticPassword()V

    iget-object v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    iget p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->secureMode:I

    const-string v2, "ForFileSystem"

    invoke-static {p2, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->personalize(ILjava/lang/String;[B)[B

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    invoke-virtual {p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p2

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "LockSettingsService"

    if-eqz v3, :cond_2

    :try_start_1
    const-string v3, "Do not substitute outer-layer-key in case of DualDAR on DO!"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "need to get secret for DualDAR user"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "getChangedStorageSecretIfDualDAR"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "fetchOuterLayerKey()"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/locksettings/LockSettingsService;

    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object p2

    const-string/jumbo v3, "fetchOuterLayerKey Finished"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setCeStorageProtection(I[B)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setCeStorageProtection(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setCurrentLskfBasedProtectorId(IJ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v0

    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string/jumbo v2, "prev-sp-handle"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string/jumbo v0, "sp-handle-ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "LockSettingsDB, setCurrentLskfBasedProtectorId User %d [%016x]"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const/4 v0, 0x0

    const-string/jumbo v1, "locksettings_db_backup"

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    if-eqz p1, :cond_0

    const-string p0, "LockSettingsService"

    const-string p1, "SPblobBNR, Backups are only supported for system users"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setKeystorePassword([BI)V
    .locals 1

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserPasswordChanged(I[B)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setKeystore, user "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    return-void
.end method

.method public final setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "LockSettingsService"

    const-string/jumbo p1, "failed applyRemoteLock!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setLockCarrierPassword([BI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "sktpassword.key"

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p0

    return p0
.end method

.method public final setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x26ab

    const/4 v11, 0x1

    const/4 v1, 0x0

    move/from16 v2, p3

    if-ne v2, v0, :cond_0

    const-string v0, "LockSettingsService"

    const-string v2, "!@ set credential with prev!!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    move v2, v11

    goto :goto_0

    :cond_0
    move v7, v2

    move v2, v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->resetMode()V

    invoke-static {v7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const-string v0, "Set credential for user virtual "

    const-string v4, " credentialType:"

    invoke-static {v7, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v12, "credential"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v13

    const-string/jumbo v14, "credentialType"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string/jumbo v16, "savedCredential"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v17

    const-string/jumbo v18, "savedCredentialType"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string/jumbo v20, "userId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string/jumbo v22, "isLockTiedToParent"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    filled-new-array/range {v12 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clear virtual lock for user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Handle(%d) detected at the moment of clearing lock for user %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v2, "handle"

    invoke-virtual {v1, v7, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    invoke-static {v7, v4, v5, v2}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJLjava/lang/String;)Z

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    const-string v0, "LockSettingsService.DarVirtualLock"

    const-string/jumbo v1, "credential is NONE"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v11

    :cond_2
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v5, v7}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->prepare(I)V

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->initializeSyntheticPasswordForVirtualUser(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "LockSettingsService.DarVirtualLock"

    const-string/jumbo v4, "progressing to set credential for virtual user"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v4, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Set credential for user enterprise "

    const-string v4, " credentialType:"

    invoke-static {v7, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v12, "credential"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v13

    const-string/jumbo v14, "credentialType"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string/jumbo v16, "savedCredential"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v17

    const-string/jumbo v18, "savedCredentialType"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string/jumbo v20, "userId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string/jumbo v22, "isLockTiedToParent"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    filled-new-array/range {v12 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Check accessor - UID : %d, PID : %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Empty"

    const-string v5, "Hidden"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v4

    goto :goto_4

    :cond_5
    move-object v6, v5

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    move-object v4, v5

    :goto_5
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Yes"

    goto :goto_6

    :cond_7
    const-string v0, "No"

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v6, v4, v0, v5, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Check requisites - Given : %s, Saved : %s, Unified : %s, Type : %d, User : %d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v6, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v6

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_9

    :try_start_3
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v13, v6

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "LockSettingsService"

    const-string v5, "Failed to decrypt child profile key"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v4, v0

    const-string v0, "LockSettingsService"

    const-string v5, "Child profile key not found"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Child profile key not found"

    invoke-static {v4, v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    move-object/from16 v0, p2

    :goto_8
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v4

    iget-object v12, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v13

    const/16 v18, 0x0

    move-wide v14, v4

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v12

    goto :goto_9

    :cond_a
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    iget-object v12, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v13

    const/16 v18, 0x0

    move-wide v14, v4

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v12

    :goto_9
    iget-object v13, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v12, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v12, :cond_e

    const-string v0, "Untrusted credential reset not acceptable"

    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-ne v0, v11, :cond_c

    const-string v0, "LockSettingsService"

    const-string v2, "Failed to enroll: rate limit exceeded."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to enroll: rate limit exceeded."

    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    monitor-exit v6

    return v1

    :cond_c
    const-string/jumbo v0, "credential change failed. sp is null"

    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "password change failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_a
    const-string v0, "LockSettingsService"

    const-string v2, "Failed to enroll: incorrect credential."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to enroll: incorrect credential."

    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    monitor-exit v6

    return v1

    :cond_e
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v2, :cond_f

    if-nez v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->expirePreviousData()V

    :cond_f
    invoke-virtual {v8, v7, v12, v1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v7, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v13, v6

    move-object v6, v12

    move v14, v7

    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_10
    move-object v13, v6

    move v14, v7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v12

    move v7, v14

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v1, v14, v12}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->prepareMasterKeyIfUnsecured(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    :cond_11
    invoke-virtual {v8, v14, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(IZLcom/android/internal/widget/LockscreenCredential;)V

    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v1, v14, v12}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->initializeMasterKeyIfRequired(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v1, v2, v14}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialChanged(II)V

    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v1, v14, v12}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->saveEscrowDataIfNeededLocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_12

    :try_start_6
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v1, v9, v0, v14, v10}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_c

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_c
    monitor-exit v13

    return v11

    :goto_d
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.permission.SET_INITIAL_LOCK"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    const/4 v0, 0x0

    const/16 v1, -0x26ab

    const/4 v2, 0x1

    if-ne p3, v1, :cond_4

    move p3, v0

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpNotActive()V

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "n_digits_pin_enabled"

    invoke-static {v6, v7, v0, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    const-string v8, "User %d identified as sdp not-supported secure folder user"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    :cond_7
    if-eqz v6, :cond_8

    const-string v6, "SEP-Lite User %d identified as SecureFolder user"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-eq v6, v2, :cond_9

    const-string/jumbo p0, "sdp not supported : setSecureFolderLockCredential success"

    invoke-static {v7, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_8
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-static {v6, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->-$$Nest$msetLockCredentialVariant(Lcom/android/server/locksettings/LockSettingsService$Injector$1;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-eq v6, v2, :cond_9

    const-string/jumbo p0, "sdp supported : setLockCredentialVariant success"

    invoke-static {v7, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_9
    :try_start_2
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    move v1, p3

    :goto_4
    :try_start_3
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_b
    :try_start_4
    invoke-virtual {p0, p3, v2, v7}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    if-eqz p4, :cond_c

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result p4

    if-eqz p4, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    :goto_5
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result p4

    if-eqz p4, :cond_d

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/trust/TrustManager;

    invoke-virtual {p4, p3, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_d
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_e
    invoke-static {p3, v0}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    invoke-static {p3}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_6
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Changing lockscreen credential of user %d; newCredentialType=%s\n"

    const-string v12, "LockSettingsService"

    invoke-static {v12, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v13

    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v14

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string/jumbo v2, "handle"

    const/16 v16, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v11, v2, v6, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v3

    invoke-interface {v2, v11, v4, v4, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v17

    const-string/jumbo v18, "handle"

    const-wide/16 v19, 0x0

    move-object v2, v0

    move/from16 v3, p6

    move-wide/from16 v21, v14

    move-object v14, v4

    move-wide/from16 v4, v19

    move-wide v14, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(IJLjava/lang/String;[B)V

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v7

    const-wide/16 v4, 0x0

    move/from16 v3, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    if-nez v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveKeyStorePassword()[B

    move-result-object v0

    invoke-virtual {v1, v0, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fail to create new SID for user "

    const-string v3, " response: "

    invoke-static {v11, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create new SID for user"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-wide/from16 v21, v14

    move-wide v14, v6

    :cond_2
    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_3
    move-wide/from16 v21, v14

    move-wide v14, v6

    invoke-static/range {p6 .. p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v6, v16

    :goto_2
    if-ge v6, v5, :cond_8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v14

    invoke-virtual {v4, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v14, 0x0

    goto :goto_2

    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v11, v2, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    invoke-static {v11, v5, v6, v2}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJLjava/lang/String;)Z

    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    invoke-virtual {v1, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    invoke-virtual {v1, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    if-eqz v0, :cond_9

    invoke-static/range {p6 .. p6}, Landroid/security/AndroidKeyStoreMaintenance;->onUserLskfRemoved(I)I

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    const/4 v3, 0x0

    invoke-direct {v2, v11, v3, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    invoke-virtual {v1, v11, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(IJ)V

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    invoke-static/range {p6 .. p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_7
    move-object/from16 v2, p1

    goto/16 :goto_b

    :cond_b
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Synchronize challenge along with user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Feasible for profiles(%d) ? %b"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v5, v16

    :goto_8
    if-ge v5, v3, :cond_a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    :goto_9
    const/4 v7, 0x0

    goto :goto_a

    :cond_e
    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_9

    :cond_f
    const-string v7, "Profile("

    if-eqz v4, :cond_10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") credential found! Clear profile credential."

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v10, v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v14, 0x1

    invoke-virtual {v1, v7, v10, v6, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_9

    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") credential not found... Clear profile credential."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Attempt to clear tied challenge, but no password supplied."

    invoke-static {v12, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :goto_b
    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    const/4 v0, -0x1

    if-eq v13, v0, :cond_12

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v5, v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v6, "spblob"

    invoke-virtual {v5, v11, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3, v11, v6, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(ILjava/lang/String;J)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v7

    iget-byte v7, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    const/4 v10, 0x2

    if-ne v7, v10, :cond_11

    invoke-virtual {v3, v11, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(IJ)V

    goto :goto_c

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_d

    :cond_13
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eq v13, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    if-eq v2, v0, :cond_14

    if-nez v11, :cond_14

    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    move-wide/from16 v2, v21

    invoke-virtual {v1, v11, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBackupLskfBasedProtectorId(IJ)V

    goto :goto_e

    :cond_14
    move-wide/from16 v2, v21

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v11, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    :goto_e
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Successfully changed lockscreen credential of user %d"

    invoke-static {v12, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v8
.end method

.method public final setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 10

    const-string v0, "Dual DAR Client failed to reset password with token for user: "

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Resetting lockscreen credential of user %d using escrow token %016x"

    const-string v3, "LockSettingsService"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v8

    move v5, p5

    move-wide v6, p2

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p3, :cond_1

    const-string p0, "Invalid escrow token supplied"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p3

    if-eqz p3, :cond_2

    const-string p0, "Obsolete token: synthetic password decrypted but it fails GK verification."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    iget-object p4, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p4, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p3, p5, p4}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->prepareMasterKeyIfUnsecured(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    :cond_4
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, p5, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    const/4 p0, 0x1

    return p0
.end method

.method public final setLockFMMPassword([BI)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    move-result-object p0

    const-string/jumbo p1, "fmmpassword.key"

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    :goto_1
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    return-void
.end method

.method public final setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setLockModeChangedCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public final setLong(Ljava/lang/String;JI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "lockscreen.samsung_biometric"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final setRecoverySecretTypes([I)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string/jumbo v0, "secretTypes is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_0

    const-string p0, "Not updating secret types - same as old value."

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v6, Ljava/util/StringJoiner;

    const-string v7, ","

    invoke-direct {v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {p1, v7}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "secret_types"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "recovery_service_metadata"

    const-string/jumbo v7, "user_id = ? AND uid = ?"

    invoke-virtual {v3, v6, v5, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v5, p1

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_3

    array-length p1, v2

    if-nez p1, :cond_1

    const-string p0, "Initialized secret types."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Updated secret types. Snapshot pending."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "snapshot_version"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    const-string p0, "Updated secret types. Snapshot must be updated"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Updated secret types. Snapshot didn\'t exist"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x16

    const-string v0, "Database error trying to set secret types."

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final setRecoveryStatus(Ljava/lang/String;I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v2, "recovery_status"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "keys"

    const-string/jumbo v0, "uid = ? AND alias = ?"

    invoke-virtual {p0, p2, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x16

    const-string p2, "Failed to set the key recovery status in the local DB."

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LockSettingsService"

    const-string/jumbo p1, "failed applyRemoteLock!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setSecurityDebugLevel(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ setSecurityDebugLevel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->setSecurityDebugLevel(I)V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_c

    const-string/jumbo p1, "lock state (0)"

    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "prev-sp-handle"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SP ID: %016x (prev: %016x)"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    const-string/jumbo v2, "sp-handle-ts"

    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "LSKF last changed: %s "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    const-string/jumbo v2, "backup-protector-id"

    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-string v2, "N-1 : None"

    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "backup-expiration-ts"

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "N-1 ID: %016x (expire : %s)"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LockType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const-string/jumbo v0, "lockscreen.disabled"

    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NONE"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "SWIPE"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v6, v0, :cond_3

    const-string/jumbo v0, "lock_pattern_visible_pattern"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v6, ":V="

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ":A="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getPinLength(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v0, ":A=F"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    const-string/jumbo v0, "lockscreen.samsung_biometric"

    invoke-virtual {p0, v0, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_6

    const-string v4, ", Fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    const-string v0, ", Face"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->haveFMMPassword(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ", FMM"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCarrierLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ", CarrierLock"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "!@ RemoteException occurs! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_4
    move v0, p1

    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "locked"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->RemoteLockType:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FailureCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void
.end method

.method public final setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 7

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    const-string v1, "Enable"

    goto :goto_1

    :cond_3
    const-string v1, "Disable"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " separate challenge for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "profileUserPassword"

    move-object v6, p3

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p3

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    xor-int/lit8 v2, p2, 0x1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2, p1}, Landroid/sec/enterprise/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    throw p2
.end method

.method public final setServerParams([B)V
    .locals 10

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const-string/jumbo v2, "server_params"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    const-string v5, "RecoverableKeyStoreMgr"

    if-eqz v4, :cond_0

    const-string p0, "Not updating server params - same as old value."

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    const-string/jumbo v2, "recovery_service_metadata"

    const-string/jumbo v7, "user_id = ? AND uid = ?"

    invoke-virtual {v4, v2, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v6, p1

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-ltz p1, :cond_3

    if-nez v3, :cond_1

    const-string p0, "Initialized server params."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "snapshot_version"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    const-string p0, "Updated server params. Snapshot must be updated"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Updated server params. Snapshot didn\'t exist"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x16

    const-string v0, "Database failure trying to set server params."

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public final setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const-string v1, "Registered listener for agent with uid "

    monitor-enter p0

    :try_start_0
    const-string v2, "RecoverySnapshotLstnrs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RecoverySnapshotLstnrs"

    const-string v2, "Snapshot already created for agent. Immediately triggering intent."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->tryToSendIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    const-string p0, "RecoverableKeyStoreMgr"

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "invalid session"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "verifierCertPath is null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "vaultParams is null"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "vaultChallenge is null"

    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "secrets is null"

    invoke-static {p6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, 0x19

    :try_start_0
    invoke-virtual {p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-static {v2, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/Certificate;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Failed to encode verifierPublicKey"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p1

    const-string p2, "Failed to validate the given cert path"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1c

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkVerifyRemoteLockscreenPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockPatternUtilsToKeyguardType(I)I

    move-result p0

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->startSession(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Landroid/app/RemoteLockscreenValidationSession$Builder;

    invoke-direct {v2}, Landroid/app/RemoteLockscreenValidationSession$Builder;-><init>()V

    invoke-virtual {v2, p0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setLockType(I)Landroid/app/RemoteLockscreenValidationSession$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setRemainingAttempts(I)Landroid/app/RemoteLockscreenValidationSession$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setSourcePublicKey([B)Landroid/app/RemoteLockscreenValidationSession$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->build()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Under development"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final systemReady()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.secure_lock_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    const-string v0, "LockSettingsService"

    const-string v1, "!@ migrateOldData"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/lock/LsLog;->prepare()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateLockSettingsDB()V

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateSpblob()V

    const-string/jumbo v0, "migrated_keystore_namespace"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    move-result v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    move v7, v3

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "profile_key_name_encrypt_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "profile_key_name_decrypt_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    and-int v0, v4, v7

    if-eqz v0, :cond_2

    const-string/jumbo v0, "migrated_keystore_namespace"

    const-string/jumbo v4, "true"

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "LockSettingsService"

    const-string v4, "Migrated keys to LSS namespace"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "LockSettingsService"

    const-string v4, "Failed to migrate keys to LSS namespace"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/hardware/authsecret/IAuthSecret;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/default"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v4, v2

    goto :goto_2

    :cond_4
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_5

    instance-of v5, v4, Landroid/hardware/authsecret/IAuthSecret;

    if-eqz v5, :cond_5

    check-cast v4, Landroid/hardware/authsecret/IAuthSecret;

    goto :goto_2

    :cond_5
    new-instance v4, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_2
    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    const-string v0, "LockSettingsService"

    if-eqz v4, :cond_6

    const-string v4, "Device implements AIDL AuthSecret HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    move-result-object v4

    new-instance v5, Lcom/android/server/locksettings/AuthSecretHidlAdapter;

    invoke-direct {v5, v4}, Lcom/android/server/locksettings/AuthSecretHidlAdapter;-><init>(Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;)V

    iput-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    const-string v4, "Device implements HIDL AuthSecret HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v5, "Failed to get AuthSecret HAL(hidl)"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    const-string v4, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "LockSettingsService"

    const-string v5, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v4, "LockSettingsService"

    const-string v5, "Failure reporting to IGateKeeperService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v5, v4, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.fingerprint"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_5

    :cond_9
    move-object v4, v2

    :goto_5
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v6, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.biometrics.face"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v2, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "face"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceManager;

    :cond_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v5, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "biometric"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/BiometricManager;

    iput-object v4, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    iput-object v5, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManagerInternal;->registerStorageLockEventListener(Landroid/os/storage/ICeStorageLockEventListener;)V

    :cond_b
    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x22

    if-ge v0, v2, :cond_f

    const-string/jumbo v0, "migrated_mdfpp_pwd_data"

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v4, "No"

    goto :goto_6

    :cond_c
    const-string v4, "YES"

    :goto_6
    const-string v5, "Need pwdData migration ? "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LockSettingsService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr v2, v3

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    move v4, v1

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->migrateMdfppPwdData(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {v2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getVirtualUsers()[I

    move-result-object v2

    array-length v4, v2

    move v5, v1

    :goto_8
    if-ge v5, v4, :cond_e

    aget v6, v2, v5

    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->migrateMdfppPwdData(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_f
    return-void
.end method

.method public final tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tie lock if necessary for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "profileUserPassword"

    const-string/jumbo v2, "profileUserId"

    filled-new-array {v2, v0, v1, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "LockSettingsService"

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Clearing password for profile user %d to match parent"

    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    return-void

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v4}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [B

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_8

    aget-char v9, v5, v8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    invoke-static {v6}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    :try_start_1
    invoke-virtual {p0, v8, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p1, v8}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p1, p2, v8, v3, v4}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, v8, p2, p1, v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    return-void

    :goto_2
    if-eqz v8, :cond_a

    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to talk to GateKeeper service"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V
    .locals 10

    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "LockSettingsService"

    const-string v6, "Tying lock for profile user %d to parent user %d"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "AES"

    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p2

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p2, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance p2, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v6, 0x2

    invoke-direct {p2, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p2

    invoke-virtual {v4, v3, v5, p2}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljavax/crypto/SecretKey;

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    array-length v0, p3

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    filled-new-array {p3, p2}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid iv length: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to encrypt key"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to talk to GateKeeper service"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final tryUnlockWithCachedUnifiedChallenge(I)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    iget-object v1, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "com.android.server.locksettings.unified_profile_cache_v2_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :cond_1
    const/16 v5, 0xc

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    array-length v7, v2

    invoke-static {v2, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v0, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_3
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    monitor-exit v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "UnifiedProfilePasswordCache"

    const-string v5, "Cannot decrypt"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    goto :goto_0

    :catch_1
    const-string v0, "UnifiedProfilePasswordCache"

    const-string v2, "Device not unlocked for more than 7 days"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "UnifiedProfilePasswordCache"

    const-string v5, "Cannot get key"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_2
    return v4

    :cond_3
    :try_start_5
    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p0, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    return v4

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 5

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CE storage for user %d is already unlocked"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "secured"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unsecured"

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->isSdpMdfppMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->ensureSdpTokenSyntheticPassword()V

    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    iget p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->secureMode:I

    const-string v3, "ForFileSystem"

    invoke-static {p2, v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->personalize(ILjava/lang/String;[B)[B

    move-result-object p2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    invoke-virtual {p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Do not substitute outer-layer-key in case of DualDAR on DO!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "need to get secret for DualDAR user"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "getChangedStorageSecretIfDualDAR"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "fetchOuterLayerKey()"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService;

    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object v3

    const-string/jumbo v4, "fetchOuterLayerKey Finished"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1, v3}, Landroid/os/storage/IStorageManager;->unlockCeStorage(I[B)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->unlockCeStorage(I[B)V

    :goto_3
    const-string p0, "!@Unlocked CE storage for %s user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_6

    :goto_5
    :try_start_1
    const-string v3, "Failed to unlock CE storage for %s user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, v3, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([BB)V

    throw p0
.end method

.method public final unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 1

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveKeyStorePassword()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    move-result p0

    if-eqz p0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unlockKeystore fail, user "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLog;->keyErr(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final unlockUser(I)V
    .locals 8

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "!@BOOT: Unlocking user %d"

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v3, v1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v4, p1, v3}, Landroid/app/IActivityManager;->unlockUser2(ILandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    instance-of v5, v4, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_6

    const-string v4, "Child profile key not found"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v5, "Failed to decrypt child profile key"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    :try_start_3
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    const-string v5, "Cache unified profile password failed"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V

    :cond_9
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_4
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "parent unlocked"

    invoke-virtual {p0, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    throw p0

    :cond_a
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final unlockUserKeyIfUnsecured(I)V
    .locals 12

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    const-string/jumbo v0, "migrated_dualdar_user_to_sp_and_bound_ce"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    const-string v2, "LockSettingsService"

    const-string v3, "Migrating unsecured DualDar user."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundCeKeyLocked(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "LockSettingsService"

    const-string v2, "Migrated unsecured DualDar user."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "migrated_dualdar_user_to_sp_and_bound_ce"

    const-string/jumbo v2, "true"

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "LockSettingsService"

    const-string v1, "CE storage for user %d is already unlocked"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "LockSettingsService"

    const-string v1, "Not unlocking CE storage for user %d yet because user is secured"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v5, "LockSettingsService"

    const/4 v6, 0x0

    if-ne v2, v4, :cond_6

    const-string v2, "Password2Auth has already been completed for: "

    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "dualdar data is not unlocked yet!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v6

    :goto_1
    if-nez v3, :cond_7

    const-string p0, "LockSettingsService"

    const-string/jumbo v1, "unlocking CE storage for dualdar user %d is failed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_7
    const-string v2, "LockSettingsService"

    const-string v3, "Unwrapping synthetic password for unsecured user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v7

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v9

    const/4 v11, 0x0

    move v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v3, :cond_8

    const-string p0, "LockSettingsService"

    const-string v1, "Failed to unwrap synthetic password for unsecured user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_8
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    if-eqz v1, :cond_9

    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    :cond_9
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 1

    const-string p2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hasn\'t been registered!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateCarrierLock(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "LockSettingsStorage"

    const-string/jumbo v0, "updateCarrierLock!!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    :goto_0
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final updateExpireTimeForPrev(Z)J
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    return-wide v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v5, "backup-expiration-ts"

    invoke-virtual {p0, v5, v3, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    if-eqz p1, :cond_1

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->expirePreviousData()V

    return-wide v3

    :cond_1
    return-wide v5
.end method

.method public final updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "lockscreen.passwordhistory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, p2

    :goto_0
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Adding new password to password history for user %d"

    const-string v5, "LockSettingsService"

    invoke-static {v5, v4, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v3

    const-string/jumbo v4, "lockscreen.password_salt"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v6, v7, p2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-virtual {p0, v4, v8, v9, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string p0, "Failed to compute password hash; password history won\'t be updated"

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/StringJoiner;

    invoke-direct {v4, p1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge p1, v3, :cond_8

    array-length v3, v2

    if-ge p1, v3, :cond_8

    aget-object v3, v2, p1

    invoke-virtual {v4, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final updateSdpMdfppForSystem(IJ)V
    .locals 5

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "sdp-mdfppmode-for-system"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v2, v0, p2

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Update SdpMdfpp for System for SdpMdfpp supported device. already set as : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update SdpMdfpp for System for SdpMdfpp supported device. set : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateVerifier(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 4

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "updateVerifier : userId = "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p0, "credential is none"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p2, v2

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.kmxservice.escrowvault.UPDATE_VERIFIER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.kmxservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "service_name"

    const-string v3, "KmxService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result p1

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;-><init>(Lcom/android/server/locksettings/LockSettingsService;[BI)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/content/Intent;Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;)V

    const-string p0, "KMX_UPDATE_VERIFIER_SERVICE_CONNECTION"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "credential is zeroized"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateVerifier exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final userPresent(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->updateExpireTimeForPrev(Z)J

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->tryUpload(Landroid/content/Context;)V

    return-void
.end method

.method public final validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkVerifyRemoteLockscreenPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->get(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    move-result v3

    const/4 v4, 0x5

    rsub-int/lit8 v3, v3, 0x5

    if-gtz v3, :cond_0

    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    if-nez v2, :cond_1

    :try_start_1
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v2, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, p1}, Lcom/android/security/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockPatternUtilsToKeyguardType(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lockscreen is not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    const/4 v5, 0x0

    :try_start_5
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0, v4, v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->handleVerifyCredentialResponse(Lcom/android/internal/widget/VerifyCredentialResponse;I)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_1
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    :goto_2
    return-object p0

    :catchall_2
    move-exception p0

    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_7

    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not decrypt credentials guess"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_6
    const-string p1, "RecoverableKeyStoreMgr"

    const-string v1, "Got InvalidKeyException during lock screen credentials decryption"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_7
    const-string p1, "RecoverableKeyStoreMgr"

    const-string v1, "Missing SecureBox algorithm. AOSP required to support this."

    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public final verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_2
    throw p0

    :cond_3
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw p0
.end method

.method public final verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p1

    if-nez v6, :cond_0

    :try_start_1
    const-string p0, "LockSettingsService"

    const-string p2, "No gatekeeper password for handle"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move v2, p5

    move-wide v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Verifying tied profile challenge for user %d"

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "Failed to decrypt child profile key"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to get tied profile token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "User id must be managed/clone profile with unified lock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Verify token for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "token"

    const-string/jumbo v3, "tokenHandle"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p1

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v8

    move v5, p4

    move-wide v6, p2

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p2, :cond_0

    const-string p0, "Failed due to invalid escrow token supplied"

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {p0, p4, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->migrateWithAuthToken(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    new-instance p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iget-object p0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSdpMasterKey()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    :goto_0
    monitor-exit v2

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Unexpected exception while verify token"

    invoke-static {p0, v1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Result of token verification : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

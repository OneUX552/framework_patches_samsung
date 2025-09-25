.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.super Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.source "qb/100751143 724fab5cfdb24f52972d4206b37f737f71c5a979f65210ab3eff7d4c49cb0a59"


# static fields
.field public static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

.field public static final EXCLUDED_ADMINS:Ljava/util/List;

.field public static final MY_PID:I

.field public static final NON_MDM_ADMINS:Ljava/util/List;

.field public static final allowToSkipRuntimePermission:[Ljava/lang/String;

.field public static final allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

.field public static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public static mIsFirmwareUpgrade:Z

.field public static final mKADelegationMapping:Ljava/util/HashMap;

.field public static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public static final mServiceAdditionCondition:Landroid/os/ConditionVariable;


# instance fields
.field public final mAdminList:Ljava/util/ArrayList;

.field public final mAdminMap:Ljava/util/HashMap;

.field public mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

.field public mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserId:I

.field public final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field public mDeferredServicesCreated:Z

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

.field public mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

.field public final mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public final mLockDoNoUseDirectly:Ljava/lang/Object;

.field public mMamState:Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

.field public mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

.field public final mPMS:Landroid/content/pm/IPackageManager;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field public mPseudoAdminUid:I

.field public final mReceiver:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

.field public mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

.field public mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

.field public mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;


# direct methods
.method public static -$$Nest$msystemReady(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "EnterpriseDeviceManagerService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v4, "systemReady() : mCurrentPhase = "

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x1e0

    .line 29
    .line 30
    if-eq v2, v0, :cond_17

    .line 31
    .line 32
    const/16 v0, 0x1f4

    .line 33
    .line 34
    if-eq v2, v0, :cond_0

    .line 35
    .line 36
    goto/16 :goto_10

    .line 37
    .line 38
    :cond_0
    const-string v0, "EnterpriseDeviceManagerService"

    .line 39
    .line 40
    const-string/jumbo v3, "systemReady()"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const-string v0, "EnterpriseDeviceManagerService"

    .line 47
    .line 48
    const-string v3, "ConstrainedModeService move to system ready "

    .line 49
    .line 50
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    if-eqz v0, :cond_16

    .line 58
    .line 59
    sget-object v3, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 60
    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    sget-object v3, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->lock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3

    .line 66
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    new-instance v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 71
    .line 72
    invoke-direct {v4, v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    sput-object v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 76
    .line 77
    const-class v0, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 78
    .line 79
    invoke-static {v0, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    monitor-exit v3

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0

    .line 89
    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    if-eqz v0, :cond_15

    .line 94
    .line 95
    sget-object v3, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mamService:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 96
    .line 97
    if-nez v3, :cond_3

    .line 98
    .line 99
    sget-object v3, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->lock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v3

    .line 102
    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 103
    .line 104
    invoke-direct {v4, v0}, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    sput-object v4, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mamService:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 108
    .line 109
    const-class v0, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 110
    .line 111
    invoke-static {v0, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    monitor-exit v3

    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    throw v0

    .line 119
    :cond_3
    :goto_3
    const-class v0, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 126
    .line 127
    iput-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 128
    .line 129
    const-class v0, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 136
    .line 137
    iput-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMamState:Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDeviceOwnedByOrganization()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const/4 v3, 0x1

    .line 144
    const/4 v4, 0x0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->checkConstrainedState()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-ne v0, v3, :cond_4

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_4
    const-string v5, "EnterpriseDeviceManagerService"

    .line 165
    .line 166
    :try_start_2
    const-string/jumbo v0, "pkgName"

    .line 167
    .line 168
    .line 169
    filled-new-array {v0}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 174
    .line 175
    const-string v7, "LICENSE"

    .line 176
    .line 177
    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_6

    .line 188
    .line 189
    const-string/jumbo v0, "checkIfKnoxLicenseActivated() : License is activated"

    .line 190
    .line 191
    .line 192
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    .line 194
    .line 195
    const-string v0, "EnterpriseDeviceManagerService"

    .line 196
    .line 197
    const-string/jumbo v5, "knox ztna service started"

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 204
    .line 205
    new-instance v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 206
    .line 207
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 208
    .line 209
    invoke-direct {v5, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    const-string/jumbo v0, "knox_nwFilterMgr_policy"

    .line 216
    .line 217
    .line 218
    invoke-static {v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string/jumbo v6, "checkIfKnoxLicenseActivated() : failed. "

    .line 224
    .line 225
    .line 226
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 231
    .line 232
    .line 233
    :cond_6
    :goto_5
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sget-object v5, Lcom/android/server/enterprise/plm/StartReason;->EDM_SYSTEM_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {v0, v3, v5}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    .line 252
    .line 253
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    const-string v0, "RestrictionToastManagerThread"

    .line 258
    .line 259
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    new-instance v5, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    .line 264
    .line 265
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    .line 271
    .line 272
    sput-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    .line 273
    .line 274
    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 275
    .line 276
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    new-instance v6, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    .line 282
    .line 283
    invoke-direct {v6, v0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    .line 284
    .line 285
    .line 286
    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    :try_start_3
    new-instance v8, Landroid/content/IntentFilter;

    .line 289
    .line 290
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 324
    .line 325
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 326
    .line 327
    .line 328
    const/4 v10, 0x0

    .line 329
    const/4 v11, 0x2

    .line 330
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :catch_1
    move-exception v0

    .line 335
    const-string v5, "AccountsReceiver"

    .line 336
    .line 337
    const-string/jumbo v6, "register Account Receiver : failed. "

    .line 338
    .line 339
    .line 340
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .line 342
    .line 343
    :goto_6
    new-instance v0, Landroid/os/HandlerThread;

    .line 344
    .line 345
    const-string v5, "InternalHandlerThread"

    .line 346
    .line 347
    const/16 v6, 0xa

    .line 348
    .line 349
    invoke-direct {v0, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 353
    .line 354
    .line 355
    new-instance v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-direct {v5, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/os/Looper;)V

    .line 362
    .line 363
    .line 364
    iput-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 365
    .line 366
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;

    .line 367
    .line 368
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    monitor-enter v5

    .line 379
    :try_start_4
    const-string v0, "EnterpriseDeviceManagerService"

    .line 380
    .line 381
    const-string/jumbo v6, "loadActiveAdmins"

    .line 382
    .line 383
    .line 384
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    :cond_7
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    const/4 v7, 0x0

    .line 402
    if-eqz v0, :cond_d

    .line 403
    .line 404
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    move-object v8, v0

    .line 409
    check-cast v8, Ljava/lang/Integer;

    .line 410
    .line 411
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 415
    :try_start_5
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 416
    .line 417
    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    .line 418
    .line 419
    .line 420
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 421
    goto :goto_8

    .line 422
    :catchall_2
    move-exception v0

    .line 423
    goto/16 :goto_f

    .line 424
    .line 425
    :catch_2
    move-exception v0

    .line 426
    :try_start_6
    const-string v9, "EnterpriseDeviceManagerService"

    .line 427
    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string/jumbo v11, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move v0, v7

    .line 454
    :goto_8
    if-eqz v0, :cond_8

    .line 455
    .line 456
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 457
    .line 458
    invoke-direct {v0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 459
    .line 460
    .line 461
    iput v15, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 462
    .line 463
    iget-object v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 464
    .line 465
    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_8
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 470
    .line 471
    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 472
    .line 473
    .line 474
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 475
    if-nez v0, :cond_9

    .line 476
    .line 477
    goto :goto_7

    .line 478
    :cond_9
    :try_start_7
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    invoke-virtual {v1, v0, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    if-eqz v8, :cond_c

    .line 487
    .line 488
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 493
    .line 494
    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 495
    .line 496
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 497
    .line 498
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 508
    .line 509
    .line 510
    if-ne v14, v15, :cond_a

    .line 511
    .line 512
    :try_start_8
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 513
    .line 514
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    invoke-interface {v9, v0, v10}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 519
    .line 520
    .line 521
    move-result v9

    .line 522
    if-nez v9, :cond_7

    .line 523
    .line 524
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 525
    .line 526
    invoke-direct {v9, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v9, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    invoke-virtual {v1, v9, v8, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 541
    .line 542
    .line 543
    const-string v7, "EnterpriseDeviceManagerService"

    .line 544
    .line 545
    new-instance v8, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    const-string v9, "Admin invalid on DPM, removing from EDM:   "

    .line 551
    .line 552
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v0, ", uid: "

    .line 563
    .line 564
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 575
    .line 576
    .line 577
    goto/16 :goto_7

    .line 578
    .line 579
    :catch_3
    move-exception v0

    .line 580
    goto/16 :goto_9

    .line 581
    .line 582
    :catch_4
    move-exception v0

    .line 583
    :try_start_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_7

    .line 587
    .line 588
    :cond_a
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 589
    .line 590
    const-string v13, "ADMIN_INFO"

    .line 591
    .line 592
    const-string v16, "adminUid"

    .line 593
    .line 594
    const/4 v11, 0x0

    .line 595
    move v10, v15

    .line 596
    move v12, v14

    .line 597
    move v7, v14

    .line 598
    move-object/from16 v14, v16

    .line 599
    .line 600
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 601
    .line 602
    .line 603
    move-result v9

    .line 604
    if-eqz v9, :cond_b

    .line 605
    .line 606
    const-string v9, "EnterpriseDeviceManagerService"

    .line 607
    .line 608
    new-instance v10, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    const-string v11, "Admin "

    .line 614
    .line 615
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v11

    .line 622
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v11, ", updated with new currentUid: "

    .line 626
    .line 627
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v11, ", old storedUid: "

    .line 634
    .line 635
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 646
    .line 647
    .line 648
    :try_start_a
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 649
    .line 650
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 651
    .line 652
    .line 653
    move-result v10

    .line 654
    invoke-interface {v9, v0, v10}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    if-nez v9, :cond_7

    .line 659
    .line 660
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 661
    .line 662
    invoke-direct {v9, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1, v9, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 666
    .line 667
    .line 668
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 673
    .line 674
    .line 675
    move-result v9

    .line 676
    const/4 v10, 0x0

    .line 677
    invoke-virtual {v1, v9, v8, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 678
    .line 679
    .line 680
    const-string v8, "EnterpriseDeviceManagerService"

    .line 681
    .line 682
    new-instance v9, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    const-string v10, "Admin invalid on DPM, removing from EDM: "

    .line 688
    .line 689
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v0, ", uid: "

    .line 700
    .line 701
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 712
    .line 713
    .line 714
    goto/16 :goto_7

    .line 715
    .line 716
    :catch_5
    move-exception v0

    .line 717
    :try_start_b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_7

    .line 721
    .line 722
    :cond_b
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 723
    .line 724
    .line 725
    move-result-object v7

    .line 726
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 727
    .line 728
    iput v15, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 729
    .line 730
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    .line 731
    .line 732
    invoke-direct {v7, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1, v7, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 736
    .line 737
    .line 738
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    const/4 v9, 0x0

    .line 747
    invoke-virtual {v1, v8, v7, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 748
    .line 749
    .line 750
    const-string v7, "EnterpriseDeviceManagerService"

    .line 751
    .line 752
    new-instance v8, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    const-string v9, "Failed updating uid, removed: "

    .line 758
    .line 759
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    const-string v0, ", uid: "

    .line 770
    .line 771
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .line 783
    .line 784
    goto/16 :goto_7

    .line 785
    .line 786
    :cond_c
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    .line 787
    .line 788
    invoke-direct {v7, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v7, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 792
    .line 793
    .line 794
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 795
    .line 796
    .line 797
    move-result v7

    .line 798
    const/4 v10, 0x0

    .line 799
    invoke-virtual {v1, v7, v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 800
    .line 801
    .line 802
    const-string v7, "EnterpriseDeviceManagerService"

    .line 803
    .line 804
    new-instance v8, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .line 808
    .line 809
    const-string v9, "Admin loaded null, removed: "

    .line 810
    .line 811
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    const-string v0, ", uid: "

    .line 822
    .line 823
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 834
    .line 835
    .line 836
    goto/16 :goto_7

    .line 837
    .line 838
    :goto_9
    :try_start_c
    const-string v7, "EnterpriseDeviceManagerService"

    .line 839
    .line 840
    new-instance v8, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    const-string v9, "Exception occured while loading active admins "

    .line 846
    .line 847
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .line 863
    .line 864
    goto/16 :goto_7

    .line 865
    .line 866
    :cond_d
    move v10, v7

    .line 867
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 868
    .line 869
    const-string/jumbo v6, "user"

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    check-cast v0, Landroid/os/UserManager;

    .line 877
    .line 878
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 883
    .line 884
    .line 885
    move-result-object v6

    .line 886
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_14

    .line 891
    .line 892
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    move-object v7, v0

    .line 897
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 898
    .line 899
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    .line 900
    .line 901
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminsInfo(I)Ljava/util/List;

    .line 902
    .line 903
    .line 904
    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 905
    :try_start_d
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 906
    .line 907
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 908
    .line 909
    invoke-interface {v0, v9}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    .line 910
    .line 911
    .line 912
    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 913
    goto :goto_a

    .line 914
    :catch_6
    move-exception v0

    .line 915
    :try_start_e
    const-string v9, "EnterpriseDeviceManagerService"

    .line 916
    .line 917
    new-instance v11, Ljava/lang/StringBuilder;

    .line 918
    .line 919
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .line 921
    .line 922
    const-string v12, "Failed to get active admins from dpm "

    .line 923
    .line 924
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    move-object v0, v4

    .line 942
    :goto_a
    if-eqz v0, :cond_e

    .line 943
    .line 944
    check-cast v8, Ljava/util/ArrayList;

    .line 945
    .line 946
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 947
    .line 948
    .line 949
    move-result v9

    .line 950
    if-eqz v9, :cond_10

    .line 951
    .line 952
    const-string v8, "EnterpriseDeviceManagerService"

    .line 953
    .line 954
    new-instance v9, Ljava/lang/StringBuilder;

    .line 955
    .line 956
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .line 958
    .line 959
    const-string v11, "Adding all admins from DPM for user : "

    .line 960
    .line 961
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    .line 965
    .line 966
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v9

    .line 973
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .line 975
    .line 976
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    :cond_f
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 981
    .line 982
    .line 983
    move-result v8

    .line 984
    if-eqz v8, :cond_e

    .line 985
    .line 986
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v8

    .line 990
    check-cast v8, Landroid/content/ComponentName;

    .line 991
    .line 992
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 993
    .line 994
    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 995
    .line 996
    .line 997
    move-result-object v9

    .line 998
    if-eqz v9, :cond_f

    .line 999
    .line 1000
    const-string v11, "EnterpriseDeviceManagerService"

    .line 1001
    .line 1002
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .line 1006
    .line 1007
    const-string v13, "Adding missing admin to EDM : "

    .line 1008
    .line 1009
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v12

    .line 1019
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v11

    .line 1026
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1027
    .line 1028
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1029
    .line 1030
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 1031
    .line 1032
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v13

    .line 1036
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 1040
    .line 1041
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1045
    .line 1046
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    invoke-virtual {v9, v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdmin(ILjava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_b

    .line 1054
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    :cond_11
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v9

    .line 1062
    if-eqz v9, :cond_e

    .line 1063
    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v9

    .line 1068
    check-cast v9, Landroid/content/ComponentName;

    .line 1069
    .line 1070
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v11

    .line 1074
    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v12

    .line 1078
    if-eqz v12, :cond_13

    .line 1079
    .line 1080
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v12

    .line 1084
    check-cast v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1085
    .line 1086
    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v12

    .line 1090
    invoke-virtual {v12, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v12

    .line 1094
    if-eqz v12, :cond_12

    .line 1095
    .line 1096
    move v11, v3

    .line 1097
    goto :goto_d

    .line 1098
    :cond_13
    move v11, v10

    .line 1099
    :goto_d
    if-nez v11, :cond_11

    .line 1100
    .line 1101
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1102
    .line 1103
    invoke-virtual {v1, v9, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v11

    .line 1107
    if-eqz v11, :cond_11

    .line 1108
    .line 1109
    const-string v12, "EnterpriseDeviceManagerService"

    .line 1110
    .line 1111
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1114
    .line 1115
    .line 1116
    const-string v14, "Adding missing admin to EDM : "

    .line 1117
    .line 1118
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v13

    .line 1128
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v12

    .line 1135
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1136
    .line 1137
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1138
    .line 1139
    iget-object v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 1140
    .line 1141
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v14

    .line 1145
    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    iget-object v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 1149
    .line 1150
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1154
    .line 1155
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v9

    .line 1159
    invoke-virtual {v11, v12, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdmin(ILjava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_c

    .line 1163
    :cond_14
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1164
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 1165
    .line 1166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1167
    .line 1168
    .line 1169
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 1170
    .line 1171
    .line 1172
    :try_start_f
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startRemoteDesktopService()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_7

    .line 1173
    .line 1174
    .line 1175
    goto :goto_e

    .line 1176
    :catch_7
    move-exception v0

    .line 1177
    move-object v3, v0

    .line 1178
    const-string v0, "EnterpriseDeviceManagerService"

    .line 1179
    .line 1180
    const-string v4, "Failed to start remote desktop service."

    .line 1181
    .line 1182
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    .line 1184
    .line 1185
    goto :goto_e

    .line 1186
    :catch_8
    move-exception v0

    .line 1187
    move-object v3, v0

    .line 1188
    const-string v0, "EnterpriseDeviceManagerService"

    .line 1189
    .line 1190
    const-string v4, "Failed to start remote desktop service."

    .line 1191
    .line 1192
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    .line 1194
    .line 1195
    :goto_e
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 1196
    .line 1197
    if-eqz v0, :cond_18

    .line 1198
    .line 1199
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 1200
    .line 1201
    const/4 v4, 0x2

    .line 1202
    invoke-direct {v3, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1206
    .line 1207
    .line 1208
    goto :goto_10

    .line 1209
    :goto_f
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1210
    throw v0

    .line 1211
    :cond_15
    sget-object v0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mamService:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 1212
    .line 1213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1214
    .line 1215
    const-string v1, "Context cannot be null"

    .line 1216
    .line 1217
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    throw v0

    .line 1221
    :cond_16
    sget-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    .line 1222
    .line 1223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1224
    .line 1225
    const-string v1, "Context cannot be null"

    .line 1226
    .line 1227
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    throw v0

    .line 1231
    :cond_17
    const-string/jumbo v0, "onStartUser() : userId = 0"

    .line 1232
    .line 1233
    .line 1234
    const-string v1, "EnterpriseDeviceManagerService"

    .line 1235
    .line 1236
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    .line 1238
    .line 1239
    :cond_18
    :goto_10
    const-string/jumbo v0, "restriction_policy"

    .line 1240
    .line 1241
    .line 1242
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1247
    .line 1248
    if-eqz v0, :cond_19

    .line 1249
    .line 1250
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->systemReady(I)V

    .line 1251
    .line 1252
    .line 1253
    :cond_19
    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 17
    .line 18
    const-string/jumbo v2, "com.sec.knox.kccagent"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "com.samsung.android.knoxcts.test"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "com.samsung.android.app.smartscan"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "com.samsung.android.knox.dai"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v6, "com.samsung.android.knox.kpu"

    .line 31
    .line 32
    .line 33
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v2, "com.samsung.android.peripheral.framework"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "com.samsung.android.app.kfa"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v4, "com.samsung.android.knox.kpecore"

    .line 46
    .line 47
    .line 48
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "EnterpriseDeviceManagerService"

    .line 55
    .line 56
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string/jumbo v4, "com.android.exchange"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v5, "com.android.email"

    .line 64
    .line 65
    .line 66
    const-string/jumbo v6, "com.samsung.android.email.provider"

    .line 67
    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    const-wide/16 v9, 0x0

    .line 76
    .line 77
    :try_start_0
    invoke-interface {v3, v6, v9, v10, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    const-string/jumbo v1, "isPackageInstalled() : package present. application : com.samsung.android.email.provider"

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    :try_start_1
    const-string/jumbo v0, "isPackageInstalled() : package is not present. application : com.samsung.android.email.provider"

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_1
    :try_start_2
    const-string v1, "Exception in isPackageInstalled()"

    .line 111
    .line 112
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_1
    :goto_3
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :goto_4
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 129
    .line 130
    const-string/jumbo v1, "com.sec.esdk.elm"

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    const-string/jumbo v1, "ro.csc.country_code"

    .line 137
    .line 138
    .line 139
    const-string v2, ""

    .line 140
    .line 141
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string/jumbo v2, "com.samsung.android.kgclient"

    .line 146
    .line 147
    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    const-string v3, "China"

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_2

    .line 157
    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    const-string/jumbo v1, "com.nttdocomo.android.wipe"

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    const-string/jumbo v1, "com.nttdocomo.android.remotelock"

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    new-instance v0, Landroid/os/ConditionVariable;

    .line 194
    .line 195
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 199
    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 205
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 212
    .line 213
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 214
    .line 215
    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 220
    .line 221
    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    new-instance v0, Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    .line 229
    .line 230
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 231
    .line 232
    const-string/jumbo v1, "delegation-cert-install"

    .line 233
    .line 234
    .line 235
    const-string/jumbo v2, "dci"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const-string/jumbo v1, "delegation-app-restrictions"

    .line 242
    .line 243
    .line 244
    const-string/jumbo v2, "dar"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    const-string/jumbo v1, "delegation-block-uninstall"

    .line 251
    .line 252
    .line 253
    const-string/jumbo v2, "dbu"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    const-string/jumbo v1, "delegation-permission-grant"

    .line 260
    .line 261
    .line 262
    const-string/jumbo v2, "dpg"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    const-string/jumbo v1, "delegation-package-access"

    .line 269
    .line 270
    .line 271
    const-string/jumbo v2, "dpa"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    const-string/jumbo v1, "delegation-enable-system-app"

    .line 278
    .line 279
    .line 280
    const-string/jumbo v2, "desa"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    const-string/jumbo v1, "delegation-install-existing-package"

    .line 287
    .line 288
    .line 289
    const-string/jumbo v2, "diep"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    const-string/jumbo v1, "delegation-keep-uninstalled-packages"

    .line 296
    .line 297
    .line 298
    const-string/jumbo v2, "dkup"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    const-string/jumbo v1, "delegation-network-logging"

    .line 305
    .line 306
    .line 307
    const-string/jumbo v2, "dnl"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    const-string/jumbo v1, "delegation-security-logging"

    .line 314
    .line 315
    .line 316
    const-string/jumbo v2, "dsl"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    const-string/jumbo v1, "delegation-cert-selection"

    .line 323
    .line 324
    .line 325
    const-string/jumbo v2, "dcs"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v2, v3}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    iput-boolean v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    iput-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 33
    .line 34
    new-instance v6, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 40
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 47
    .line 48
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 58
    .line 59
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 60
    .line 61
    sput-object p0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string/jumbo v1, "package"

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iput-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 77
    .line 78
    const-string/jumbo v6, "device_policy"

    .line 79
    .line 80
    .line 81
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iput-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerAdaptors()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v7, "handleDowngrade: Checking Downgrade..."

    .line 95
    .line 96
    .line 97
    const-string v8, "EnterpriseDeviceManagerService"

    .line 98
    .line 99
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    const-string/jumbo v7, "enterprise.db"

    .line 103
    .line 104
    .line 105
    :try_start_0
    invoke-virtual {p1, v7, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string/jumbo v7, "could not open or create databse"

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-object p1, v5

    .line 130
    :goto_0
    if-eqz p1, :cond_0

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 137
    .line 138
    .line 139
    if-le v4, v2, :cond_0

    .line 140
    .line 141
    const-string p1, "Current Platform Version is older than the previous DB version"

    .line 142
    .line 143
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    const-string p1, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    .line 147
    .line 148
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    new-instance p1, Ljava/io/File;

    .line 152
    .line 153
    const-string v2, "/data/system/enterprise.db"

    .line 154
    .line 155
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 159
    .line 160
    .line 161
    new-instance p1, Ljava/io/File;

    .line 162
    .line 163
    const-string v2, "/data/system/dmappmgr.db"

    .line 164
    .line 165
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 169
    .line 170
    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    .line 172
    .line 173
    .line 174
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 175
    .line 176
    iget-object v2, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-direct {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 189
    .line 190
    iget-object v2, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 191
    .line 192
    const-string v4, "PlatformSoftwareVersion"

    .line 193
    .line 194
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const-string/jumbo v7, "ro.build.fingerprint"

    .line 199
    .line 200
    .line 201
    const-string/jumbo v9, "unknown"

    .line 202
    .line 203
    .line 204
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-eqz v11, :cond_1

    .line 213
    .line 214
    move-object v10, v5

    .line 215
    :cond_1
    const-string/jumbo v11, "generic"

    .line 216
    .line 217
    .line 218
    const-string/jumbo v12, "value"

    .line 219
    .line 220
    .line 221
    const-string/jumbo v13, "name"

    .line 222
    .line 223
    .line 224
    if-eqz v2, :cond_2

    .line 225
    .line 226
    if-eqz v10, :cond_3

    .line 227
    .line 228
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_3

    .line 233
    .line 234
    :cond_2
    const-string/jumbo v2, "handleUpgrade: Checking Upgrade..."

    .line 235
    .line 236
    .line 237
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 241
    .line 242
    :try_start_1
    iget-object p1, p1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :catch_1
    move-exception p1

    .line 253
    const-string v2, "EdmStorageProvider"

    .line 254
    .line 255
    const-string/jumbo v3, "handleUpgrade EX:"

    .line 256
    .line 257
    .line 258
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .line 260
    .line 261
    :goto_1
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_3

    .line 270
    .line 271
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    new-instance v3, Landroid/content/ContentValues;

    .line 277
    .line 278
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    new-instance v4, Landroid/content/ContentValues;

    .line 285
    .line 286
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v11, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 293
    .line 294
    .line 295
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 296
    .line 297
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 298
    .line 299
    const-string v3, "PlatformSdkApiLevel"

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    goto :goto_2

    .line 314
    :catch_2
    const-string v2, "No written value"

    .line 315
    .line 316
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    const/16 v2, 0x1e

    .line 320
    .line 321
    :goto_2
    if-ge v2, p1, :cond_4

    .line 322
    .line 323
    const-string v2, "Android API Level is just changed to "

    .line 324
    .line 325
    invoke-static {p1, v2, v8}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 329
    .line 330
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 331
    .line 332
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    new-instance v4, Landroid/content/ContentValues;

    .line 340
    .line 341
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    new-instance v3, Landroid/content/ContentValues;

    .line 348
    .line 349
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v11, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_4
    const-string v2, "Android API Level is "

    .line 360
    .line 361
    invoke-static {p1, v2, v8}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :goto_3
    new-instance p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 365
    .line 366
    iget-object v2, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 367
    .line 368
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-direct {p1, v2, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    .line 377
    .line 378
    .line 379
    const-string/jumbo v1, "enterprise_license_policy"

    .line 380
    .line 381
    .line 382
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    new-instance p1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 386
    .line 387
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 390
    .line 391
    .line 392
    const-string/jumbo v1, "application_policy"

    .line 393
    .line 394
    .line 395
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    new-instance p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    .line 399
    .line 400
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 401
    .line 402
    invoke-direct {p1}, Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;-><init>()V

    .line 403
    .line 404
    .line 405
    iput-object v5, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 406
    .line 407
    iput-object v5, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 408
    .line 409
    iput-object v1, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 410
    .line 411
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 412
    .line 413
    invoke-direct {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 414
    .line 415
    .line 416
    iput-object v2, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 417
    .line 418
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 423
    .line 424
    iput-object v1, p1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 425
    .line 426
    const-string/jumbo v1, "profilepolicy"

    .line 427
    .line 428
    .line 429
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    new-instance p1, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 433
    .line 434
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 435
    .line 436
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V

    .line 437
    .line 438
    .line 439
    const-string/jumbo v1, "wifi_policy"

    .line 440
    .line 441
    .line 442
    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    new-instance p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 446
    .line 447
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 448
    .line 449
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 450
    .line 451
    .line 452
    const-string/jumbo v1, "phone_restriction_policy"

    .line 453
    .line 454
    .line 455
    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    new-instance p1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 459
    .line 460
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 461
    .line 462
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 463
    .line 464
    .line 465
    const-string/jumbo v1, "remoteinjection"

    .line 466
    .line 467
    .line 468
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance p1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 472
    .line 473
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 476
    .line 477
    .line 478
    const-string/jumbo v1, "restriction_policy"

    .line 479
    .line 480
    .line 481
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 485
    .line 486
    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 487
    .line 488
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 489
    .line 490
    .line 491
    const-string/jumbo v1, "password_policy"

    .line 492
    .line 493
    .line 494
    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    new-instance p1, Lcom/android/server/enterprise/EDMProxyService;

    .line 498
    .line 499
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 500
    .line 501
    invoke-direct {p1, v1}, Lcom/android/server/enterprise/EDMProxyService;-><init>(Landroid/content/Context;)V

    .line 502
    .line 503
    .line 504
    const-string/jumbo v1, "edm_proxy"

    .line 505
    .line 506
    .line 507
    invoke-static {v1, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 508
    .line 509
    .line 510
    new-instance p1, Lcom/android/server/enterprise/hdm/HdmService;

    .line 511
    .line 512
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 513
    .line 514
    invoke-direct {p1, v0}, Lcom/android/server/enterprise/hdm/HdmService;-><init>(Landroid/content/Context;)V

    .line 515
    .line 516
    .line 517
    const-string/jumbo v0, "hdm_service"

    .line 518
    .line 519
    .line 520
    invoke-static {p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 524
    .line 525
    sget v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->$r8$clinit:I

    .line 526
    .line 527
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;

    .line 528
    .line 529
    new-instance v1, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    .line 530
    .line 531
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;-><init>(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 538
    .line 539
    sget v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->$r8$clinit:I

    .line 540
    .line 541
    const-class v0, Lcom/samsung/android/knox/localservice/CloudConfigurationManagerInternal;

    .line 542
    .line 543
    new-instance v1, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 544
    .line 545
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;-><init>(Landroid/content/Context;)V

    .line 546
    .line 547
    .line 548
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 552
    .line 553
    .line 554
    return-void
.end method

.method public static checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string/jumbo v3, "enterprise_license_policy"

    .line 7
    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    move v5, v2

    .line 25
    :goto_0
    if-ge v5, v4, :cond_1

    .line 26
    .line 27
    aget-object v6, v3, v5

    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_4

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :goto_2
    :try_start_1
    const-string v3, "EnterpriseDeviceManagerService"

    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v5, "checkAdminExistsInELMDB Ex: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_3
    return v2

    .line 80
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static checkCallerIsKPECore(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string/jumbo v1, "com.samsung.android.knox.kpecore"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KPECORE_INTERNAL"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const-string p0, "EnterpriseDeviceManagerService"

    .line 24
    .line 25
    const-string/jumbo p1, "call from kpecore"

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    sput-object v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 13
    .line 14
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p0, "EnterprisePermissionChecker"

    .line 28
    .line 29
    const-string/jumbo p1, "no permission provided"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-eq v3, v4, :cond_3

    .line 57
    .line 58
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :catch_1
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    const-string v0, ","

    .line 78
    .line 79
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_3
    throw v2
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public static hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private registerAdaptors()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-class v1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 38
    .line 39
    const-string/jumbo v2, "storage"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 47
    .line 48
    sput-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    monitor-exit v1

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 65
    .line 66
    const-class v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto :goto_4

    .line 83
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    monitor-exit v0

    .line 86
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-class v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 93
    .line 94
    monitor-enter v1

    .line 95
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 96
    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    sput-object v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_2
    move-exception p0

    .line 112
    goto :goto_3

    .line 113
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    .line 115
    monitor-exit v1

    .line 116
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 117
    .line 118
    const-class v0, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 121
    .line 122
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-class v0, Lcom/android/server/enterprise/adapter/IPackageManagerAdapter;

    .line 128
    .line 129
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 130
    .line 131
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-class v0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 139
    .line 140
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-class v0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mWindowManagerAdapter:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 148
    .line 149
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 157
    .line 158
    sget-object v1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :goto_3
    monitor-exit v1

    .line 165
    throw p0

    .line 166
    :goto_4
    monitor-exit v0

    .line 167
    throw p0

    .line 168
    :goto_5
    monitor-exit v1

    .line 169
    throw p0
.end method

.method public static setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "mCallerUid"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private static native startRemoteDesktopService()V
.end method


# virtual methods
.method public final activateAdmin(Landroid/content/ComponentName;Z)V
    .locals 12

    .line 1
    const-string v0, "Removing admin "

    .line 2
    .line 3
    const-string v1, "Adding admin "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "EnterpriseDeviceManagerService"

    .line 15
    .line 16
    const-string v4, "Activating admin on user!!!!!! "

    .line 17
    .line 18
    invoke-static {v2, v4, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_d

    .line 26
    .line 27
    const-string/jumbo v4, "restriction_policy"

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p1, "Admin cannot be activated"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    :goto_0
    const-string/jumbo v4, "com.samsung.android.kgclient"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    const-string/jumbo v4, "com.samsung.android.kgclient"

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v6

    .line 98
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 99
    .line 100
    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const/4 v6, -0x1

    .line 104
    :goto_1
    if-ne v5, v6, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/16 v6, 0x3e8

    .line 112
    .line 113
    if-ne v5, v6, :cond_3

    .line 114
    .line 115
    :goto_2
    const-string/jumbo v5, "ro.csc.country_code"

    .line 116
    .line 117
    .line 118
    const-string v6, ""

    .line 119
    .line 120
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    const-string v6, "China"

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_3

    .line 133
    .line 134
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 135
    .line 136
    check-cast v5, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_3

    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v5, "adjustKnoxGuardAdmin kgclient is removed from EXCLUDED_ADMINS by "

    .line 150
    .line 151
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const-string v5, "EnterpriseDeviceManagerService"

    .line 166
    .line 167
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_4

    .line 175
    .line 176
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v4, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_4

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    .line 199
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    const-string v6, "EnterpriseDeviceManagerService"

    .line 206
    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v8, "Admin uid: "

    .line 210
    .line 211
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v8, ", Component name: "

    .line 218
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 233
    .line 234
    .line 235
    move-result-wide v6

    .line 236
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    monitor-enter v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    if-nez p2, :cond_6

    .line 242
    .line 243
    :try_start_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    invoke-virtual {p0, v9, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    if-nez v9, :cond_5

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    const-string p1, "Admin is already added"

    .line 257
    .line 258
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p0

    .line 262
    :catchall_0
    move-exception p0

    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :cond_6
    :goto_3
    const/4 v9, 0x1

    .line 266
    if-nez p2, :cond_7

    .line 267
    .line 268
    const-string v10, "EnterpriseDeviceManagerService"

    .line 269
    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, " to lists"

    .line 279
    .line 280
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 291
    .line 292
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    const-string/jumbo v1, "com.samsung.android.kgclient"

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    xor-int/2addr v1, v9

    .line 316
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 317
    .line 318
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {v10, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdmin(ILjava/lang/String;Z)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    goto :goto_4

    .line 327
    :cond_7
    move v1, v9

    .line 328
    :goto_4
    if-eqz v1, :cond_c

    .line 329
    .line 330
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Ljava/util/TreeMap;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_8

    .line 349
    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 361
    .line 362
    invoke-interface {v1, v4}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_8
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    move v0, v9

    .line 368
    :goto_6
    const/4 v1, 0x2

    .line 369
    const/4 v3, 0x0

    .line 370
    if-gt v0, v1, :cond_a

    .line 371
    .line 372
    :try_start_3
    const-string v1, "EnterpriseDeviceManagerService"

    .line 373
    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v8, "Attempt "

    .line 380
    .line 381
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v8, " to active admin in DPM"

    .line 388
    .line 389
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 400
    .line 401
    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 402
    .line 403
    .line 404
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 405
    .line 406
    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_9

    .line 411
    .line 412
    const-string p2, "EnterpriseDeviceManagerService"

    .line 413
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    const-string v1, "Admin sucessfully activated in DPM for user "

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move p2, v9

    .line 435
    goto :goto_7

    .line 436
    :catchall_1
    move-exception p0

    .line 437
    goto/16 :goto_c

    .line 438
    .line 439
    :catch_1
    move-exception p0

    .line 440
    goto/16 :goto_a

    .line 441
    .line 442
    :cond_9
    const-string v1, "EnterpriseDeviceManagerService"

    .line 443
    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v5, "Admin activation failed for user "

    .line 450
    .line 451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    add-int/lit8 v0, v0, 0x1

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_a
    move p2, v3

    .line 468
    :goto_7
    const-string v0, "EnterpriseDeviceManagerService"

    .line 469
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string v5, "EDM setActiveAdmin activationStatus -"

    .line 476
    .line 477
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v5, " for user - "

    .line 484
    .line 485
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    if-eqz p2, :cond_b

    .line 499
    .line 500
    const-string p0, "EnterpriseDeviceManagerService"

    .line 501
    .line 502
    const-string p1, "Admin added to DPM!"

    .line 503
    .line 504
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 505
    .line 506
    .line 507
    :goto_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    .line 509
    .line 510
    goto :goto_b

    .line 511
    :cond_b
    :try_start_4
    const-string p2, "EnterpriseDeviceManagerService"

    .line 512
    .line 513
    const-string v0, "Started removing admin information..."

    .line 514
    .line 515
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 519
    .line 520
    invoke-direct {p2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 521
    .line 522
    .line 523
    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0, p2, v9, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 528
    .line 529
    .line 530
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 531
    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    const-string p2, "EDM - Admin activation failed for user -"

    .line 538
    .line 539
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 553
    :cond_c
    :try_start_5
    const-string p1, "EnterpriseDeviceManagerService"

    .line 554
    .line 555
    new-instance p2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v0, " from lists"

    .line 564
    .line 565
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p2

    .line 572
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 581
    .line 582
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 590
    .line 591
    const-string p1, "Unable to activate admin"

    .line 592
    .line 593
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    throw p0

    .line 597
    :goto_9
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 598
    :try_start_6
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 599
    :goto_a
    :try_start_7
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 600
    .line 601
    .line 602
    goto :goto_8

    .line 603
    :goto_b
    return-void

    .line 604
    :goto_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    .line 606
    .line 607
    throw p0

    .line 608
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 609
    .line 610
    const-string p2, "Bad admin: "

    .line 611
    .line 612
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    throw p0
.end method

.method public final activateDevicePermissions(Ljava/util/List;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_7

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 47
    .line 48
    if-eqz p0, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    const-string v4, "EnterpriseDeviceManagerService"

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    const-string/jumbo p0, "failed due to abnormal admin information: "

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p0, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v3

    .line 66
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 71
    .line 72
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v5, v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo p1, "failed due to application is installed in device as user:"

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return v3

    .line 108
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/String;

    .line 123
    .line 124
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 125
    .line 126
    check-cast v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_2

    .line 133
    .line 134
    const-string p0, "This permission cannot be set on device level from the container: "

    .line 135
    .line 136
    invoke-static {p0, v1, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return v3

    .line 140
    :cond_3
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    const/4 v0, 0x7

    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    .line 156
    const-string/jumbo v1, "encrypted-storage"

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "add device permission: encrypted-storage, "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_4
    const/16 v0, 0x14

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_5

    .line 190
    .line 191
    const-string/jumbo v1, "require-storagecard-encryption"

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v1, "add device permission: require-storagecard-encryption, "

    .line 200
    .line 201
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_5
    const/4 p0, 0x1

    .line 219
    return p0

    .line 220
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 221
    .line 222
    const-string p1, "No active admin"

    .line 223
    .line 224
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 229
    .line 230
    const-string p1, "Admin already present and active"

    .line 231
    .line 232
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0
.end method

.method public final addAuthorizedUid(II)Z
    .locals 3

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const-string v1, "addAuthorizedUid"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "adminUid"

    .line 23
    .line 24
    const-string/jumbo v2, "authorizedUid"

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0, v1, p1, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    .line 32
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final addPseudoAdminForParent(I)I
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const-string v1, "addPseudoAdminForParent() success with Pseudo =  "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x3e8

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 18
    .line 19
    if-eq v3, v2, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v3, "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_6

    .line 30
    .line 31
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 32
    .line 33
    invoke-interface {v2}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eq v2, p1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 58
    .line 59
    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdminWithPseudo(ILjava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 79
    .line 80
    new-instance p1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iput v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    return v2

    .line 113
    :cond_4
    :goto_1
    const-string p0, "addPseudoAdminForParent() returning 0.."

    .line 114
    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    return v3

    .line 119
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :cond_5
    const-string p0, "addPseudoAdminForParent() failed returning -1.."

    .line 123
    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    const/4 p0, -0x1

    .line 128
    return p0

    .line 129
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 130
    .line 131
    const-string p1, "Caller must be a system process or have permission android.permission.MARK_DEVICE_ORGANIZATION_OWNED.."

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .locals 11

    .line 1
    const-string v0, "---------------------------------------------------------------\n"

    .line 2
    .line 3
    const-string v1, "EnterpriseDeviceManagerService"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    sget v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 37
    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v5, "activity"

    .line 48
    .line 49
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/app/ActivityManager;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 90
    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v8, " "

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 114
    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_3
    const-string p0, "-v"

    .line 140
    .line 141
    const-string/jumbo p3, "threadtime"

    .line 142
    .line 143
    .line 144
    const-string/jumbo v6, "logcat"

    .line 145
    .line 146
    .line 147
    const-string v7, "-d"

    .line 148
    .line 149
    filled-new-array {v6, v7, p0, p3}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-string/jumbo p3, "line.separator"

    .line 162
    .line 163
    .line 164
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 174
    .line 175
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    .line 179
    .line 180
    invoke-direct {v8, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .line 182
    .line 183
    new-instance v9, Ljava/util/zip/ZipEntry;

    .line 184
    .line 185
    const-string v10, "BELogs.txt"

    .line 186
    .line 187
    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 191
    .line 192
    .line 193
    new-instance v9, Ljava/io/BufferedReader;

    .line 194
    .line 195
    new-instance v10, Ljava/io/InputStreamReader;

    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-direct {v10, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {v8, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    .line 229
    .line 230
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    if-eqz p0, :cond_5

    .line 235
    .line 236
    const-string p2, " +"

    .line 237
    .line 238
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_4

    .line 247
    .line 248
    array-length v0, p2

    .line 249
    const/4 v10, 0x2

    .line 250
    if-le v0, v10, :cond_4

    .line 251
    .line 252
    aget-object p2, p2, v10

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_4

    .line 259
    .line 260
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v8, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_1

    .line 281
    :catch_1
    move-exception p0

    .line 282
    goto :goto_2

    .line 283
    :cond_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .line 298
    .line 299
    move-object v2, p0

    .line 300
    goto :goto_3

    .line 301
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .line 307
    .line 308
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    .line 310
    .line 311
    return-object v2
.end method

.method public final checkCallerIsUMC()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    :goto_0
    if-ne v0, p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 24
    .line 25
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 38
    .line 39
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 51
    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 59
    .line 60
    if-ne p0, v1, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 64
    .line 65
    const-string v1, "Admin doesn\'t own container id "

    .line 66
    .line 67
    const-string v2, " ContextInfo.uid "

    .line 68
    .line 69
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "permissions"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Landroid/content/ContentValues;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string/jumbo v4, "proxyUid"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    .line 27
    const-string v3, "PROXY_ADMIN_INFO"

    .line 28
    .line 29
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroid/content/ContentValues;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    const-string p1, ";"

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_0

    .line 97
    .line 98
    return v2

    .line 99
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 120
    .line 121
    invoke-interface {v0, p2, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    if-nez p2, :cond_2

    .line 126
    .line 127
    return v2

    .line 128
    :catch_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 129
    .line 130
    const-string/jumbo p1, "could not check calling permission"

    .line 131
    .line 132
    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_3
    return v3
.end method

.method public final createDeferredServices()V
    .locals 11

    .line 1
    const-string/jumbo v0, "knox_adapter_service"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "phone_restriction_policy"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "wifi_policy"

    .line 8
    .line 9
    .line 10
    iget-boolean v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 11
    .line 12
    const-string v4, "EnterpriseDeviceManagerService"

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "createDeferredServices() : Skip to create"

    .line 17
    .line 18
    .line 19
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string/jumbo v3, "createDeferredServices() : Adding services ... "

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v5, -0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    .line 33
    .line 34
    check-cast v7, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 45
    .line 46
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 60
    .line 61
    move-object v10, v9

    .line 62
    check-cast v10, Landroid/os/IBinder;

    .line 63
    .line 64
    invoke-interface {v9, v8, v10}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v8, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 97
    .line 98
    const-string/jumbo v2, "device_info"

    .line 99
    .line 100
    .line 101
    new-instance v7, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 102
    .line 103
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 115
    .line 116
    const-string/jumbo v2, "license_log_service"

    .line 117
    .line 118
    .line 119
    new-instance v7, Lcom/android/server/enterprise/license/LicenseLogService;

    .line 120
    .line 121
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 133
    .line 134
    const-string/jumbo v2, "auditlog"

    .line 135
    .line 136
    .line 137
    new-instance v7, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 138
    .line 139
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 151
    .line 152
    const-string/jumbo v2, "eas_account_policy"

    .line 153
    .line 154
    .line 155
    new-instance v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 156
    .line 157
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 169
    .line 170
    const-string/jumbo v2, "email_account_policy"

    .line 171
    .line 172
    .line 173
    new-instance v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 174
    .line 175
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-direct {v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v6, v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 181
    .line 182
    iput v5, v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 183
    .line 184
    iput-object v6, v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 185
    .line 186
    iput-object v8, v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    new-instance v9, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 189
    .line 190
    invoke-direct {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    iput-object v9, v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 202
    .line 203
    const-string/jumbo v2, "location_policy"

    .line 204
    .line 205
    .line 206
    new-instance v7, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 207
    .line 208
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 220
    .line 221
    const-string/jumbo v2, "misc_policy"

    .line 222
    .line 223
    .line 224
    new-instance v7, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 225
    .line 226
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 238
    .line 239
    const-string/jumbo v2, "vpn_policy"

    .line 240
    .line 241
    .line 242
    new-instance v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 243
    .line 244
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    invoke-direct {v7}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v6, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 250
    .line 251
    iput-object v6, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 252
    .line 253
    iput-object v6, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    .line 254
    .line 255
    iput-object v8, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    new-instance v9, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 258
    .line 259
    invoke-direct {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    iput-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 263
    .line 264
    invoke-static {}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 278
    .line 279
    const-string/jumbo v2, "security_policy"

    .line 280
    .line 281
    .line 282
    new-instance v7, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 283
    .line 284
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 296
    .line 297
    const-string/jumbo v2, "roaming_policy"

    .line 298
    .line 299
    .line 300
    new-instance v7, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 301
    .line 302
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 314
    .line 315
    const-string/jumbo v2, "bluetooth_policy"

    .line 316
    .line 317
    .line 318
    new-instance v7, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 319
    .line 320
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 332
    .line 333
    const-string/jumbo v2, "email_policy"

    .line 334
    .line 335
    .line 336
    new-instance v7, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 337
    .line 338
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 339
    .line 340
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 350
    .line 351
    const-string/jumbo v2, "firewall"

    .line 352
    .line 353
    .line 354
    new-instance v7, Lcom/android/server/enterprise/firewall/Firewall;

    .line 355
    .line 356
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 368
    .line 369
    const-string/jumbo v2, "certificate_policy"

    .line 370
    .line 371
    .line 372
    new-instance v7, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 373
    .line 374
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 386
    .line 387
    const-string/jumbo v2, "apn_settings_policy"

    .line 388
    .line 389
    .line 390
    new-instance v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    .line 391
    .line 392
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-direct {v7}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    .line 395
    .line 396
    .line 397
    iput-object v6, v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 398
    .line 399
    sget v9, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 400
    .line 401
    iput v9, v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 402
    .line 403
    new-instance v9, Ljava/util/HashMap;

    .line 404
    .line 405
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 406
    .line 407
    .line 408
    iput-object v9, v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 409
    .line 410
    iput-object v8, v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 419
    .line 420
    const-string/jumbo v2, "browser_policy"

    .line 421
    .line 422
    .line 423
    new-instance v7, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 424
    .line 425
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 426
    .line 427
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 437
    .line 438
    const-string/jumbo v2, "date_time_policy"

    .line 439
    .line 440
    .line 441
    new-instance v7, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 442
    .line 443
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 455
    .line 456
    const-string/jumbo v2, "kioskmode"

    .line 457
    .line 458
    .line 459
    new-instance v7, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 460
    .line 461
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 473
    .line 474
    const-string/jumbo v2, "ldap_account_policy"

    .line 475
    .line 476
    .line 477
    new-instance v7, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .line 478
    .line 479
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 480
    .line 481
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 491
    .line 492
    const-string/jumbo v2, "lockscreen_overlay"

    .line 493
    .line 494
    .line 495
    new-instance v7, Lcom/android/server/enterprise/lso/LSOService;

    .line 496
    .line 497
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 498
    .line 499
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 509
    .line 510
    const-string/jumbo v2, "geofencing"

    .line 511
    .line 512
    .line 513
    new-instance v7, Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 514
    .line 515
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 516
    .line 517
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 527
    .line 528
    const-string/jumbo v2, "device_account_policy"

    .line 529
    .line 530
    .line 531
    new-instance v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 532
    .line 533
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 534
    .line 535
    invoke-direct {v7}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;-><init>()V

    .line 536
    .line 537
    .line 538
    iput-object v6, v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 539
    .line 540
    iput-object v6, v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 541
    .line 542
    iput-object v8, v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 543
    .line 544
    new-instance v9, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 545
    .line 546
    invoke-direct {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 547
    .line 548
    .line 549
    iput-object v9, v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 558
    .line 559
    const-string/jumbo v2, "multi_user_manager_service"

    .line 560
    .line 561
    .line 562
    new-instance v7, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 563
    .line 564
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 565
    .line 566
    invoke-direct {v7}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;-><init>()V

    .line 567
    .line 568
    .line 569
    iput-object v6, v7, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 570
    .line 571
    iput-object v8, v7, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    .line 572
    .line 573
    new-instance v9, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 574
    .line 575
    invoke-direct {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 576
    .line 577
    .line 578
    iput-object v9, v7, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 579
    .line 580
    const-string/jumbo v9, "user"

    .line 581
    .line 582
    .line 583
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v8

    .line 587
    check-cast v8, Landroid/os/UserManager;

    .line 588
    .line 589
    iput-object v8, v7, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 598
    .line 599
    const-string/jumbo v2, "dex_policy"

    .line 600
    .line 601
    .line 602
    new-instance v7, Lcom/android/server/enterprise/dex/DexPolicy;

    .line 603
    .line 604
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 605
    .line 606
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/dex/DexPolicy;-><init>(Landroid/content/Context;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    invoke-static {v7, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    if-nez v1, :cond_2

    .line 620
    .line 621
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 622
    .line 623
    new-instance v2, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 624
    .line 625
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 626
    .line 627
    invoke-direct {v2, v7}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;-><init>(Landroid/content/Context;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    invoke-static {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 637
    .line 638
    const-string v1, "DualDARPolicy"

    .line 639
    .line 640
    new-instance v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    .line 641
    .line 642
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 643
    .line 644
    invoke-direct {v2, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;-><init>(Landroid/content/Context;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto :goto_1

    .line 654
    :catchall_0
    move-exception v0

    .line 655
    goto :goto_2

    .line 656
    :cond_2
    :goto_1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 657
    .line 658
    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 659
    .line 660
    .line 661
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 662
    .line 663
    .line 664
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    const/16 v2, 0x18

    .line 673
    .line 674
    if-lt v1, v2, :cond_3

    .line 675
    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    const-string v2, "ThreatDefenseService - knoxSdkVersion : "

    .line 682
    .line 683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 701
    .line 702
    const-string/jumbo v1, "threat_defense_service"

    .line 703
    .line 704
    .line 705
    new-instance v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 706
    .line 707
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 708
    .line 709
    invoke-direct {v2, v7}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;-><init>(Landroid/content/Context;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 719
    .line 720
    const-string/jumbo v1, "knoxnap"

    .line 721
    .line 722
    .line 723
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 724
    .line 725
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 726
    .line 727
    invoke-direct {v2, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    const-string/jumbo v0, "knox ztna service started"

    .line 737
    .line 738
    .line 739
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 743
    .line 744
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 745
    .line 746
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 747
    .line 748
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;-><init>(Landroid/content/Context;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    const-string/jumbo v0, "knox_nwFilterMgr_policy"

    .line 755
    .line 756
    .line 757
    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 761
    .line 762
    invoke-static {v0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    sget-object v1, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 767
    .line 768
    iget-object v0, v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 769
    .line 770
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    invoke-static {v0, v3, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    .line 779
    .line 780
    goto :goto_3

    .line 781
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    const-string v2, "addServices() : Failure creating Policy services"

    .line 784
    .line 785
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 799
    .line 800
    .line 801
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 802
    .line 803
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 804
    .line 805
    .line 806
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 807
    .line 808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 812
    .line 813
    .line 814
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 815
    .line 816
    if-nez v0, :cond_4

    .line 817
    .line 818
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 819
    .line 820
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 821
    .line 822
    .line 823
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 824
    .line 825
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 826
    .line 827
    new-instance v1, Landroid/os/UserHandle;

    .line 828
    .line 829
    invoke-direct {v1, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0, p0, v6, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 833
    .line 834
    .line 835
    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 836
    .line 837
    .line 838
    move-result-object p0

    .line 839
    check-cast p0, Ljava/util/TreeMap;

    .line 840
    .line 841
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 842
    .line 843
    .line 844
    move-result-object p0

    .line 845
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 846
    .line 847
    .line 848
    move-result-object p0

    .line 849
    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    if-eqz v0, :cond_6

    .line 854
    .line 855
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    check-cast v0, Ljava/util/Map$Entry;

    .line 860
    .line 861
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 866
    .line 867
    invoke-interface {v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->hasDeferredBroadcastReceiverToRegister()Z

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-eqz v1, :cond_5

    .line 872
    .line 873
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 878
    .line 879
    invoke-interface {v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->registerDeferredBoradcastReceiver()V

    .line 880
    .line 881
    .line 882
    goto :goto_4

    .line 883
    :cond_6
    return-void
.end method

.method public final disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->disableConstrainedState(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p3, "EnterpriseDeviceManagerService Knox Info:"

    .line 20
    .line 21
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "No Policy Version"

    .line 39
    .line 40
    const-string/jumbo p3, "ro.config.timaversion"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "true"

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const-string v4, "Knox "

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    if-lez v3, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception p1

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_1
    const/16 v3, 0x2e

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_3

    .line 140
    .line 141
    const-string v3, "Standard SDK "

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_4

    .line 171
    .line 172
    const-string v3, "Premium SDK "

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_4
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_5

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_5

    .line 206
    .line 207
    const-string v3, "Customization SDK "

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-eqz v2, :cond_6

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_6

    .line 242
    .line 243
    const-string v3, "Container  "

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    :cond_6
    const-string/jumbo v2, "net.knoxisl.version"

    .line 259
    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-eqz v2, :cond_7

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_7

    .line 273
    .line 274
    const-string v4, "IM "

    .line 275
    .line 276
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    :cond_7
    const-string/jumbo v2, "net.knoxscep.version"

    .line 290
    .line 291
    .line 292
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    if-eqz v2, :cond_8

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-nez v4, :cond_8

    .line 303
    .line 304
    const-string v4, "CEP "

    .line 305
    .line 306
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    :cond_8
    const-string/jumbo v2, "sys.enterprise.billing.version"

    .line 320
    .line 321
    .line 322
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-eqz v2, :cond_9

    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-nez v4, :cond_9

    .line 333
    .line 334
    const-string v4, "Enterprise Billing "

    .line 335
    .line 336
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    :cond_9
    const-string v2, ""

    .line 350
    .line 351
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-nez v2, :cond_10

    .line 360
    .line 361
    const-string v2, "3.0"

    .line 362
    .line 363
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_f

    .line 372
    .line 373
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    const/16 p1, 0x10e

    .line 379
    .line 380
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_a

    .line 385
    .line 386
    const-string p1, "3.3"

    .line 387
    .line 388
    goto :goto_1

    .line 389
    :cond_a
    const-string p1, "3.2"

    .line 390
    .line 391
    :goto_1
    const-string/jumbo p3, "ro.config.dmverity"

    .line 392
    .line 393
    .line 394
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p3

    .line 398
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p3

    .line 402
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p3

    .line 406
    const-string/jumbo v2, "ro.config.rkp"

    .line 407
    .line 408
    .line 409
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_b

    .line 418
    .line 419
    add-int/lit8 p3, p3, 0x2

    .line 420
    .line 421
    :cond_b
    const-string/jumbo v2, "ro.config.kap"

    .line 422
    .line 423
    .line 424
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_c

    .line 433
    .line 434
    add-int/lit8 p3, p3, 0x4

    .line 435
    .line 436
    :cond_c
    const-string/jumbo v2, "ro.config.kap_default_on"

    .line 437
    .line 438
    .line 439
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_d

    .line 448
    .line 449
    add-int/lit8 p3, p3, 0x8

    .line 450
    .line 451
    :cond_d
    const/16 v0, 0xa

    .line 452
    .line 453
    if-ge p3, v0, :cond_e

    .line 454
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string p1, ".00"

    .line 464
    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    goto :goto_2

    .line 480
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string p1, ".0"

    .line 489
    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    goto :goto_2

    .line 505
    :cond_f
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    :goto_2
    const-string p3, "TIMA "

    .line 510
    .line 511
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    :cond_10
    const-string/jumbo p1, "net.knoxvpn.version"

    .line 525
    .line 526
    .line 527
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    if-eqz p1, :cond_11

    .line 532
    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 534
    .line 535
    .line 536
    move-result p3

    .line 537
    if-nez p3, :cond_11

    .line 538
    .line 539
    const-string p3, "VPN "

    .line 540
    .line 541
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .line 553
    .line 554
    goto :goto_4

    .line 555
    :goto_3
    const-string p3, "EnterpriseDeviceManagerService"

    .line 556
    .line 557
    const-string v0, "Failed to get Knox Version "

    .line 558
    .line 559
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    .line 564
    .line 565
    :cond_11
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string p3, "EnterpriseDeviceManagerService SystemUIAdapter Info:"

    .line 575
    .line 576
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p3

    .line 583
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 594
    .line 595
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 596
    .line 597
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 598
    .line 599
    .line 600
    move-result-object p3

    .line 601
    iget p3, p3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    .line 602
    .line 603
    if-eq p1, p3, :cond_12

    .line 604
    .line 605
    new-instance p1, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    const-string/jumbo p3, "mCurrentUserId : "

    .line 608
    .line 609
    .line 610
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 614
    .line 615
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p3

    .line 622
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string p3, "SystemUIAdapter adapterId : "

    .line 635
    .line 636
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 640
    .line 641
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 642
    .line 643
    .line 644
    move-result-object p3

    .line 645
    iget p3, p3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    .line 646
    .line 647
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p3

    .line 654
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string p3, "SystemUIAdapter registered count : "

    .line 667
    .line 668
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 672
    .line 673
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 674
    .line 675
    .line 676
    move-result-object p3

    .line 677
    iget p3, p3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 678
    .line 679
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object p3

    .line 686
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 697
    .line 698
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    iget-boolean p3, p1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 703
    .line 704
    if-nez p3, :cond_13

    .line 705
    .line 706
    iget-object p1, p1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 707
    .line 708
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 709
    .line 710
    .line 711
    move-result p1

    .line 712
    if-lez p1, :cond_13

    .line 713
    .line 714
    goto :goto_5

    .line 715
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    const-string p3, "SystemUIAdapter is not registed. "

    .line 718
    .line 719
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p3

    .line 726
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    const-string p3, "ConstrainedMode : "

    .line 739
    .line 740
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 744
    .line 745
    invoke-virtual {p3}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->checkConstrainedState()Z

    .line 746
    .line 747
    .line 748
    move-result p3

    .line 749
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object p3

    .line 756
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 767
    .line 768
    invoke-virtual {p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->checkConstrainedState()Z

    .line 769
    .line 770
    .line 771
    move-result p1

    .line 772
    if-eqz p1, :cond_14

    .line 773
    .line 774
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 775
    .line 776
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->dump(Ljava/io/PrintWriter;)V

    .line 777
    .line 778
    .line 779
    :cond_14
    return-void
.end method

.method public final enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 22
    .line 23
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    .line 25
    move-object v2, p2

    .line 26
    move-object v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move-object v5, p5

    .line 29
    move v6, p6

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final enableWipe(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    :try_start_0
    const-class p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const-string v1, "EnterpriseDeviceManagerService.enableWipe"

    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 50
    .line 51
    .line 52
    monitor-exit p1

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    throw p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p0, "EnterpriseDeviceManagerService"

    .line 61
    .line 62
    const-string p1, "Failed to get PersistentDataBlockManagerInternal"

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return v0
.end method

.method public final enforceActiveAdminPermission(Ljava/util/List;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    move-object v0, p0

    .line 15
    move-object v2, p1

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final enforceCaller(Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final enforceCallerPermission(ILjava/util/List;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :catch_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 29
    .line 30
    const-string p1, "Could not check calling permission"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Component name violation "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    const/4 v5, 0x1

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final enforceKCS(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallerPermission(ILjava/util/List;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, v0, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const-string/jumbo v1, "device_policy"

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 63
    .line 64
    const-string p1, "This API is works only with managedProfile(WPC)"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->semGetDeviceOwner()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eq p0, v0, :cond_4

    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    const-string p0, "Application doesn\'t have this permission:"

    .line 106
    .line 107
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/SecurityException;

    .line 112
    .line 113
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 118
    .line 119
    const-string p1, "This API is works only with managed device(DO)"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final enforceKnoxV2VerifyCaller(I)Z
    .locals 7

    .line 1
    const-string v0, "This API can be called by platform signed app only, callerUid:"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 13
    .line 14
    .line 15
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/16 v5, 0x3e8

    .line 17
    .line 18
    const-string v6, "android"

    .line 19
    .line 20
    if-eq v4, v5, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-interface {v2, v6, v4, v5}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ",packageName:"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance p1, Ljava/lang/SecurityException;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :try_start_2
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v4, p0, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    const-string v0, "EnterpriseDeviceManagerService"

    .line 111
    .line 112
    const-string v1, "Caller does not have KPU permission"

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-interface {v2, v6, p0, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    if-nez p0, :cond_3

    .line 143
    .line 144
    :cond_2
    const/4 v3, 0x1

    .line 145
    :cond_3
    return v3

    .line 146
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    return v3
.end method

.method public final enforceOwnerOnly(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "EnterpriseDeviceManagerService"

    .line 30
    .line 31
    const-string v1, "Need to check if this is an abnormal case."

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    .line 38
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 47
    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p1, "Operation supported only on owner space"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_0
    return-object p1
.end method

.method public final enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnly(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p2

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;
    .locals 9

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_1

    .line 7
    sget v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-eq v1, v5, :cond_2

    :cond_1
    if-eqz v3, :cond_4

    const-string/jumbo v5, "android.uid.system:1000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_3
    return-object p1

    .line 11
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 12
    iget-object v5, v5, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v5, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 16
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.appseparation"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 17
    const-string v6, "EnterpriseDeviceManagerService"

    if-eqz v5, :cond_7

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 18
    :cond_6
    const-string p0, "Called from Separated Apps agent. return Context."

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_7
    if-eqz v3, :cond_8

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 21
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const p2, 0x186a0

    mul-int/2addr p1, p2

    add-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_8
    if-eqz p4, :cond_a

    .line 22
    iget-object p4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz p4, :cond_9

    goto :goto_0

    .line 23
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No active admin owned by uid "

    .line 24
    invoke-static {v2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result p4

    const/4 v3, 0x1

    if-eqz p4, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    if-eqz p3, :cond_b

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_b
    if-eqz p2, :cond_d

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_d

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p4

    if-ne p4, v3, :cond_d

    if-eqz p3, :cond_c

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 33
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_c
    return-object p1

    :cond_d
    const/4 p4, -0x1

    if-nez v1, :cond_11

    .line 34
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v4, v0, :cond_11

    .line 35
    const-string/jumbo v4, "getAuthorizedAdminUid"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v7, "authorizedUid"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v8, "adminUid"

    invoke-virtual {v5, v4, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 39
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 40
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_e
    move v4, p4

    .line 41
    :goto_1
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v5, v4, :cond_11

    if-eqz p3, :cond_f

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_f
    if-eqz p2, :cond_11

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v4

    if-ne v4, v3, :cond_11

    if-eqz p3, :cond_10

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 47
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_10
    return-object p1

    :cond_11
    if-nez v1, :cond_13

    .line 48
    iget-boolean v4, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez v4, :cond_13

    .line 49
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v4, v0, :cond_13

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v4

    if-ne v0, v4, :cond_12

    goto :goto_2

    .line 50
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ContextInfo UID violation info is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but caller is "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_2
    if-eqz p5, :cond_15

    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 52
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p5

    .line 53
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 54
    invoke-virtual {v4, p5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_15

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p5

    if-nez p5, :cond_15

    if-nez v1, :cond_15

    iget-boolean p5, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p5, :cond_14

    iget p5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne p5, v4, :cond_14

    goto :goto_3

    .line 56
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "caller is not DO or PO or KPU: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_3
    const/4 p5, 0x0

    if-eqz p6, :cond_19

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p6

    .line 58
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    invoke-virtual {p0, v4, p6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    move-result p6

    .line 60
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_API_ACCESS_GRANT"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_16

    move v4, v3

    goto :goto_4

    :cond_16
    move v4, p5

    :goto_4
    if-nez p6, :cond_19

    if-eqz v4, :cond_17

    goto :goto_5

    .line 61
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p6

    .line 62
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p6

    .line 63
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-virtual {v4, p6}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_19

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p6

    if-nez p6, :cond_19

    iget-boolean p6, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p6, :cond_18

    iget p6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne p6, v4, :cond_18

    goto :goto_5

    .line 66
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Caller is not DO or PO or KPU: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_5
    if-eqz p3, :cond_1e

    .line 67
    iget-boolean p6, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p6, :cond_1a

    goto :goto_6

    .line 68
    :cond_1a
    iget p6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    .line 69
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {p6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p6

    if-nez p6, :cond_1b

    .line 71
    iget-object p6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p6

    if-nez p6, :cond_1b

    goto :goto_6

    :cond_1b
    if-eqz v1, :cond_1c

    goto :goto_6

    .line 73
    :cond_1c
    iget-object p6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p6

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne p6, v4, :cond_1d

    goto :goto_6

    .line 75
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Admin doesn\'t own container "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ContextInfo.uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_6
    if-eqz p2, :cond_20

    .line 76
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    if-lez p6, :cond_20

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_1f
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1f

    move p6, v3

    goto :goto_7

    :catch_0
    move p6, p5

    goto :goto_8

    :cond_20
    move p6, p5

    .line 79
    :goto_7
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is permission granted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 80
    :catch_1
    :goto_8
    const-string/jumbo v4, "could not check calling permission"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p6, :cond_22

    if-eqz p2, :cond_21

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_21

    .line 83
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_21

    .line 85
    const-string p0, " OR "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 86
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Admin  does not have "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_22
    iget-boolean p2, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz p2, :cond_23

    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-eq p2, p4, :cond_23

    .line 89
    invoke-virtual {p0, v0, p5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceWpcod(IZ)V

    .line 90
    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "enforceActiveAdminPermissionByContext() - return contextInfo with PseudoUid = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    return-object p1

    :cond_23
    if-eqz p3, :cond_25

    .line 93
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_25

    if-eqz v1, :cond_24

    .line 95
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 96
    invoke-static {p1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 97
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p1

    .line 98
    :cond_24
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p0

    :cond_25
    if-eqz v1, :cond_27

    .line 99
    const-string/jumbo p2, "restriction_policy"

    invoke-static {p2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz p2, :cond_26

    .line 100
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p5

    :cond_26
    if-eqz p5, :cond_27

    .line 101
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceOwnerUid()I

    move-result p0

    .line 102
    invoke-static {p1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 103
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object p1

    .line 104
    :cond_27
    const-string/jumbo p0, "enforceActiveAdminDualPermission >>>"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final enforceUMCSignature()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 6
    .line 7
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 35
    .line 36
    const-string v0, "Caller is not real UMC. Signature Verification failed."

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 43
    .line 44
    const-string/jumbo v0, "package not found"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final enforceWpcod(IZ)V
    .locals 3

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_5

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne p1, v2, :cond_3

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    const-string/jumbo p0, "enforceWpcod(), caller is a valid KPU.."

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 39
    .line 40
    invoke-direct {p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-static {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string p1, "Caller is not either organization owned PO or KSP inside org owned profile.."

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    :goto_0
    const-string/jumbo p0, "enforceWpcod(), caller is a either WPCOD PO or valid KPU.."

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 94
    .line 95
    const-string p1, "Organization owned managed profile userId and caller userId does not match.."

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 102
    .line 103
    const-string p1, "Device is not organization owned managed profile.."

    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    const-string/jumbo p1, "enforceWpcod(), failed to talk to DPMS.."

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 120
    .line 121
    const-string p2, "ContextInfo UID voilation info is "

    .line 122
    .line 123
    const-string v0, " but caller is "

    .line 124
    .line 125
    invoke-static {p1, v1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final enforceZtFwCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKnoxZtFwCaller()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "Caller is not authorized - uid: "

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 7
    .line 8
    const-wide/32 v4, 0xc8080

    .line 9
    .line 10
    .line 11
    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    move-object p2, v2

    .line 28
    :goto_0
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :try_start_1
    new-instance p1, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 40
    .line 41
    new-instance p2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :catch_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :catch_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p2, "Unknown admin: "

    .line 68
    .line 69
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 36
    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, p1, :cond_0

    .line 42
    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "Admin found on user "

    .line 46
    .line 47
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ": "

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "EnterpriseDeviceManagerService"

    .line 66
    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    return-object p0
.end method

.method public final getActiveAdmins(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    .line 6
    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 60
    .line 61
    const/16 v3, -0x2710

    .line 62
    .line 63
    if-eq v3, p1, :cond_2

    .line 64
    .line 65
    const/4 v3, -0x1

    .line 66
    if-eq v3, p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 75
    .line 76
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ne v3, p1, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    monitor-exit v0

    .line 94
    return-object v1

    .line 95
    :cond_4
    :goto_2
    monitor-exit v0

    .line 96
    return-object v1

    .line 97
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final getActiveAdminsInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;IIZ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v6, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdmins(I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_a

    .line 37
    .line 38
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v8, v0

    .line 43
    check-cast v8, Landroid/content/ComponentName;

    .line 44
    .line 45
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-string v10, ", admin pkg name: "

    .line 54
    .line 55
    const-string v11, "Admin component: "

    .line 56
    .line 57
    const-string v12, "EDM_KnoxAnalytics"

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v8, ", type: KnoxLicensedAdmin, in userId: "

    .line 83
    .line 84
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/utils/KpuHelper;->isCallerValidKpu(ILjava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/4 v13, 0x1

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iput v13, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v3, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    invoke-static {v3, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    const v15, -0x718bbf9

    .line 145
    .line 146
    .line 147
    if-eq v14, v15, :cond_5

    .line 148
    .line 149
    const v15, 0x63daef2

    .line 150
    .line 151
    .line 152
    if-eq v14, v15, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string/jumbo v14, "com.sec.knox.kccagent"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_6

    .line 163
    .line 164
    move v14, v13

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    const-string/jumbo v14, "com.samsung.android.kgclient"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_6

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    :goto_2
    const/4 v14, -0x1

    .line 178
    :goto_3
    if-eqz v14, :cond_8

    .line 179
    .line 180
    if-eq v14, v13, :cond_7

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_7
    iput v13, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    const-string/jumbo v0, "knox.kg.state"

    .line 187
    .line 188
    .line 189
    iget-object v13, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 196
    .line 197
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v8, ", type: KnoxInternalAdmin, in userId: "

    .line 219
    .line 220
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v9, ";"

    .line 242
    .line 243
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    .line 260
    .line 261
    :cond_9
    if-eqz p4, :cond_0

    .line 262
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v8, ", type: NonLicensedAdmin, in userId: "

    .line 285
    .line 286
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_b

    .line 309
    .line 310
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v1, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 315
    .line 316
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_c

    .line 324
    .line 325
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-object v1, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 330
    .line 331
    invoke-virtual {v1, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_d

    .line 339
    .line 340
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iget-object v1, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 345
    .line 346
    invoke-virtual {v1, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    .line 352
    .line 353
    :cond_d
    :goto_7
    return-void
.end method

.method public final getActiveAdminsInfo(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    .line 6
    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    const/16 v1, -0x2710

    .line 28
    .line 29
    if-ne p1, v1, :cond_0

    .line 30
    .line 31
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 70
    .line 71
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 72
    .line 73
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ne v3, p1, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-object v1

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "EnterpriseDeviceManagerService"

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v5, "android"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "adminUid"

    .line 23
    .line 24
    const-string/jumbo v7, "packageName"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v8, "signature"

    .line 28
    .line 29
    .line 30
    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    new-instance v10, Landroid/content/ContentValues;

    .line 35
    .line 36
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v11, "#SelectClause#"

    .line 44
    .line 45
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    .line 50
    const-string v3, "CertificateWhiteListTable"

    .line 51
    .line 52
    invoke-virtual {v0, v3, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/content/ContentValues;

    .line 73
    .line 74
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    if-eqz v13, :cond_5

    .line 93
    .line 94
    invoke-virtual {v13, v9, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-ne v9, v2, :cond_5

    .line 99
    .line 100
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_2

    .line 105
    .line 106
    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-eqz v9, :cond_1

    .line 111
    .line 112
    array-length v13, v9

    .line 113
    move v14, v6

    .line 114
    move v15, v14

    .line 115
    :goto_1
    if-ge v14, v13, :cond_3

    .line 116
    .line 117
    aget-object v15, v9, v14

    .line 118
    .line 119
    invoke-static {v6, v4, v15, v10}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    if-eqz v15, :cond_0

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_4

    .line 131
    :cond_1
    move v15, v6

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const/4 v15, 0x1

    .line 134
    :cond_3
    :goto_2
    if-eqz v15, :cond_5

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_5

    .line 149
    .line 150
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_5

    .line 159
    .line 160
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    invoke-interface {v13, v10, v14}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    if-nez v13, :cond_4

    .line 179
    .line 180
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    invoke-direct {v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    return-object v13

    .line 193
    :catch_0
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v14, "Could not check permission "

    .line 199
    .line 200
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v10, " of the admin that has added caller to cert white list"

    .line 207
    .line 208
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catch_1
    :try_start_3
    const-string v3, "Package added to certificate whitelisted not installed"

    .line 220
    .line 221
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    .line 223
    .line 224
    :cond_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :goto_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_6
    const/4 v0, 0x0

    .line 234
    return-object v0
.end method

.method public final getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(IILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final getAdminUidForAuthorizedUid(I)I
    .locals 2

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "getAdminUidForAuthorizedUid"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/ContentValues;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string/jumbo v1, "authorizedUid"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    .line 35
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 36
    .line 37
    const-string v1, "adminUid"

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_0
    const/4 p0, -0x1

    .line 57
    return p0
.end method

.method public final getAuthorizedUidForAdminUid(I)I
    .locals 2

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "getAuthorizedUidForAdminUid"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/ContentValues;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "adminUid"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    .line 34
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 35
    .line 36
    const-string/jumbo v1, "authorizedUid"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_0
    const/4 p0, -0x1

    .line 57
    return p0
.end method

.method public final getConstrainedState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->getConstrainedState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "mum_container_policy"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final getDelegatedPackagesInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;II)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedPackages(I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput p3, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Ljava/util/List;

    .line 48
    .line 49
    const-string v1, "EDM_KnoxAnalytics"

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "Admin pkg name: "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, ", type: DelegatedAdmin, in userId: "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void
.end method

.method public final getDeviceManagementRoleHolderInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;Landroid/os/UserHandle;I)V
    .locals 4

    .line 1
    const-string v0, "Admin : "

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Landroid/app/role/RoleManager;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/role/RoleManager;

    .line 12
    .line 13
    const-string v1, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 14
    .line 15
    invoke-virtual {p0, v1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, "EDM_KnoxAnalytics"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, ", type: DPMRHolder, in userId: "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    return-void
.end method

.method public final getDeviceOwnerUid()I
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_4

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    const-string p0, "Failed to retrieve DO component on device"

    .line 58
    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    const-string p0, "Failed to get application info for DO component."

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_3
    const/4 p0, -0x1

    .line 73
    return p0

    .line 74
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final getKPUPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getLockObject()Ljava/lang/Object;
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LockGuard;->guard(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getMamPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMamState:Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/MobileApplicationManagementInternal;->getPermission(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getOrganizationOwnedProfileUserId()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 43
    .line 44
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 45
    .line 46
    invoke-interface {v4, v5}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_2
    const/16 p0, -0x2710

    .line 71
    .line 72
    return p0

    .line 73
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-interface {v0, p1, p2, p0}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final getUserStatus(I)I
    .locals 9

    .line 1
    const-string v0, "Valid Admin for User "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "getUserStatus is called for userid "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "EnterpriseDeviceManagerService"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-string v5, "Failed to getUserStatus"

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdmins(I)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_0

    .line 81
    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v8, "Valid Admin "

    .line 88
    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, " in User 0"

    .line 96
    .line 97
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-interface {v1, v7}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    .line 119
    .line 120
    .line 121
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception v1

    .line 126
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_1
    move-exception p0

    .line 146
    goto :goto_2

    .line 147
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 148
    .line 149
    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-ne v1, v7, :cond_2

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    .line 181
    .line 182
    .line 183
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_2
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :goto_3
    const-string/jumbo p0, "status "

    .line 196
    .line 197
    .line 198
    invoke-static {v6, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return v6

    .line 202
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    .line 204
    .line 205
    throw p0
.end method

.method public final hasAnyActiveAdmin()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-gtz p0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(ILjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 31
    .line 32
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return v1

    .line 48
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_0
    return v1
.end method

.method public final hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "No active admin "

    .line 11
    .line 12
    const/16 v2, 0x16

    .line 13
    .line 14
    if-ge p2, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 17
    .line 18
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    monitor-exit v2

    .line 39
    :goto_0
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " on user "

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final isAdminActive(Landroid/content/ComponentName;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "isAdminRemovableInternal: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", userHandle = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "EnterpriseDeviceManagerService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const-string/jumbo p1, "isAdminRemovableInternal : "

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    return p0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p2, "Bad admin: "

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isUidValidKpu(IIZ)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final isCameraEnabledNative(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const-string/jumbo p0, "isCameraEnabledNative"

    .line 2
    .line 3
    .line 4
    const-string v0, "EnterpriseDeviceManagerService"

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "restriction_policy"

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    :try_start_0
    const-string/jumbo v2, "checking for camera in restriction policy"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return v1
.end method

.method public final isDeviceOwnedByOrganization()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 27
    .line 28
    const-string/jumbo v0, "isDeviceOwnedByOrganization"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final isEmailAdminPkg(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.email.provider"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isKPUPlatformSigned(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isKnoxZtFwCaller()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 8
    .line 9
    const-string v1, "activity"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/ActivityManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 44
    .line 45
    if-eq v3, v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 49
    .line 50
    :cond_3
    :goto_1
    const-string/jumbo p0, "com.samsung.android.knox.zt.framework"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne p0, v0, :cond_4

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 p0, 0x0

    .line 72
    :goto_2
    return p0
.end method

.method public final isMdmAdminPresent()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isMdmAdminPresentAsUser(I)Z
    .locals 8

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string/jumbo p1, "isMdmAdminPresentAsUser() : MDM Admin Found - "

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v2, "enterprise_license_policy"

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 127
    .line 128
    .line 129
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    :try_start_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v2, v7}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_2

    .line 143
    :catch_1
    move-exception v2

    .line 144
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :goto_3
    if-eqz v4, :cond_0

    .line 156
    .line 157
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-lez v2, :cond_0

    .line 162
    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string/jumbo p1, "isMdmAdminPresentAsUser() : MDM Admin Found(2) - "

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    return v1

    .line 189
    :cond_4
    const-string/jumbo p0, "isMdmAdminPresentAsUser() : MDM Admin is not present."

    .line 190
    .line 191
    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 193
    .line 194
    .line 195
    const/4 p0, 0x0

    .line 196
    return p0

    .line 197
    :goto_4
    const-string/jumbo p1, "isMdmAdminPresentAsUser() : failed. "

    .line 198
    .line 199
    .line 200
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    return v1
.end method

.method public final isMdmAdminPresentInternal()Z
    .locals 7

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v2, "isMdmAdminPresentInternal() : MDM Admin Found - "

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v3, "enterprise_license_policy"

    .line 111
    .line 112
    .line 113
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    :try_start_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-interface {v3, v6}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception v3

    .line 138
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-lez v3, :cond_0

    .line 148
    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v2, "isMdmAdminPresentInternal() : MDM Admin Found(2) - "

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .line 173
    .line 174
    return v1

    .line 175
    :cond_4
    const/4 p0, 0x0

    .line 176
    return p0

    .line 177
    :goto_2
    const-string/jumbo v2, "isMdmAdminPresentInternal() : failed. "

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    return v1
.end method

.method public final isPermissionIncludedOnManifest(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v4, 0x1000

    .line 30
    .line 31
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/PackageManager;->semGetPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    array-length v3, p0

    .line 44
    move v4, v0

    .line 45
    :goto_0
    if-ge v4, v3, :cond_2

    .line 46
    .line 47
    aget-object v5, p0, v4

    .line 48
    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :catch_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 74
    .line 75
    const-string p1, "Caller does not have all required permissions declared on Manifest"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final isPossibleTransferOwenerShip(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2
    .line 3
    iget-boolean v1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_0
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 52
    .line 53
    if-ne p0, p1, :cond_1

    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final isRestrictedByConstrainedState(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->isRestrictedByConstrainedState(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUidDeviceOrProfileOwner(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
.end method

.method public final isUserSelectable(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "CCMUserSelectableTable"

    .line 2
    .line 3
    const-string v1, "alias"

    .line 4
    .line 5
    const-string/jumbo v2, "isUserSelectable - allow :"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "isUserSelectable called for alias: "

    .line 9
    .line 10
    .line 11
    const-string v4, "EnterpriseDeviceManagerService"

    .line 12
    .line 13
    invoke-static {v3, p1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    .line 36
    invoke-virtual {v6, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    new-instance v5, Landroid/content/ContentValues;

    .line 43
    .line 44
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    .line 52
    const-string/jumbo p1, "isSelectable"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-object p1, p0

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-lez v0, :cond_2

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x2

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo p0, "isUserSelectable - uidCount = 0"

    .line 111
    .line 112
    .line 113
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string/jumbo v0, "isUserSelectable - Exception"

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_1
    return v3
.end method

.method public final keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "in keychainMarkedReset"

    .line 2
    .line 3
    .line 4
    const-string v1, "EnterpriseDeviceManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x3e8

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    const-string/jumbo p0, "keychainMarkedReset - Cannot clear credentials, not a system app"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-string/jumbo p0, "keychainMarkedReset - Invalid Arguments"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    const-string/jumbo p1, "csr"

    .line 39
    .line 40
    .line 41
    filled-new-array {p1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    .line 55
    const-string v3, "CCMCertTable"

    .line 56
    .line 57
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    .line 63
    const-string v2, "CCMCertGrantTable"

    .line 64
    .line 65
    invoke-virtual {v0, v2, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v3, "removeAllGrants - Exception"

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 82
    .line 83
    const-string v0, "CCMUserSelectableTable"

    .line 84
    .line 85
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_1
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v0, "removeAllUserSelectable - Exception"

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, p1, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    const/4 p0, 0x1

    .line 102
    return p0
.end method

.method public final migrateKnoxPoliciesForWpcod(I)Z
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "migrateKnoxPoliciesForWpcod() containerId received = "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x3e8

    .line 15
    .line 16
    if-ne v2, v4, :cond_1

    .line 17
    .line 18
    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 19
    .line 20
    if-ne v3, v2, :cond_1

    .line 21
    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->addPseudoAdminForParent(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v1, -0x1

    .line 42
    if-eq p1, v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetAPILevelPrivacyPolicies()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetClassLevelPrivacyPolicies()V

    .line 48
    .line 49
    .line 50
    const-string/jumbo p0, "migrateKnoxPoliciesForWpcod() complete.."

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    const-string/jumbo p0, "migrateKnoxPoliciesForWpcod() returning false.."

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 71
    .line 72
    const-string p1, "Caller is not a system process.."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x3e8

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "EnterpriseDeviceManagerService"

    .line 38
    .line 39
    const-string/jumbo p1, "packageHasActiveAdminsAsUser caller need INTERACT_ACROSS_USERS_FULL permission"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    move v3, v2

    .line 58
    :goto_1
    if-ge v3, v1, :cond_3

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 95
    .line 96
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 97
    .line 98
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-ne v4, p2, :cond_2

    .line 103
    .line 104
    const-string p1, "EnterpriseDeviceManagerService"

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, " packageHasActiveAdminsAsUser "

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, " userID"

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    monitor-exit v0

    .line 151
    const/4 p0, 0x1

    .line 152
    return p0

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_2

    .line 155
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    monitor-exit v0

    .line 159
    return v2

    .line 160
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0
.end method

.method public final readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 p1, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    .line 24
    .line 25
    const-string v0, "/efs/umc"

    .line 26
    .line 27
    const-string v1, "BulkEnrollmentProfile"

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    cmp-long v0, v0, v2

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    long-to-int v0, v0

    .line 54
    new-array v1, v0, [B

    .line 55
    .line 56
    new-instance v2, Ljava/io/FileInputStream;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    .line 68
    if-lez p0, :cond_3

    .line 69
    .line 70
    :try_start_2
    new-instance p0, Ljava/lang/String;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :catch_0
    move-exception p0

    .line 80
    move-object v2, p1

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    move-object p1, v2

    .line 84
    goto :goto_3

    .line 85
    :catch_1
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    return-object p1

    .line 88
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_2
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_2
    return-object p1

    .line 102
    :goto_3
    if-eqz p1, :cond_4

    .line 103
    .line 104
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catch_3
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_4
    throw p0
.end method

.method public final reconcileAdmin(Landroid/content/ComponentName;I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_3

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    const-string/jumbo v3, "com.samsung.android.kgclient"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    xor-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addorUpdateAdmin(ILjava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_0

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    monitor-exit v2

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Ljava/util/TreeMap;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 128
    .line 129
    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    monitor-exit v2

    .line 134
    goto :goto_2

    .line 135
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :catch_0
    move-exception p0

    .line 138
    const-string v0, "EnterpriseDeviceManagerService"

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "Failed reconcileAdmin for "

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string/jumbo p1, "for user id "

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :cond_2
    :goto_2
    return-void

    .line 174
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 175
    .line 176
    const-string p1, "Need to be System Process"

    .line 177
    .line 178
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public final registerBroadcastReceiver()V
    .locals 3

    .line 1
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 2
    .line 3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDeviceOwnedByOrganization()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string/jumbo v1, "failed to remove action admin "

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v4, "removeActiveAdmin() : Removing admin "

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " from user "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", caller : "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, "EnterpriseDeviceManagerService"

    .line 42
    .line 43
    invoke-static {v3, v2, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 47
    .line 48
    invoke-interface {p0, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_2
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_3
    const-string p0, "Admin removed from DPM!"

    .line 118
    .line 119
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V
    .locals 9

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "removeActiveAdminDelayed - adminReceiver: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ", userId: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-string v3, "EnterpriseDeviceManagerService"

    .line 49
    .line 50
    const-string v4, "Admin uid: "

    .line 51
    .line 52
    const-string v5, ", calling uid: "

    .line 53
    .line 54
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eq v1, v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    .line 62
    .line 63
    const-string v4, "Only system or itself can remove an EDM admin"

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->canRemoveAdmin(I)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    const-string p0, "EnterpriseDeviceManagerService"

    .line 77
    .line 78
    const-string p1, "Admin "

    .line 79
    .line 80
    const-string p2, " cannot be removed!"

    .line 81
    .line 82
    invoke-static {v1, p1, p2, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->cleanUpConstrainedState(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 96
    .line 97
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    .line 103
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 104
    .line 105
    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onPreAdminRemoval(I)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/util/TreeMap;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 139
    .line 140
    invoke-interface {v6, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto/16 :goto_a

    .line 146
    .line 147
    :catch_0
    move-exception v6

    .line 148
    :try_start_2
    const-string v7, "EnterpriseDeviceManagerService"

    .line 149
    .line 150
    const-string/jumbo v8, "removeActiveAdminDelayed Ex1:"

    .line 151
    .line 152
    .line 153
    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_1
    move-exception p2

    .line 158
    goto/16 :goto_7

    .line 159
    .line 160
    :catch_2
    move-exception p0

    .line 161
    goto/16 :goto_9

    .line 162
    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :try_start_3
    const-string v6, "EnterpriseDeviceManagerService"

    .line 169
    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v8, "Removing Admin with uid"

    .line 176
    .line 177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    if-nez v4, :cond_4

    .line 196
    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeAdminFromDatabase(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catchall_1
    move-exception p2

    .line 213
    goto/16 :goto_6

    .line 214
    .line 215
    :catch_3
    move-exception v0

    .line 216
    :try_start_4
    const-string v6, "EnterpriseDeviceManagerService"

    .line 217
    .line 218
    const-string v7, "FATAL: Admin failed to remove lets try during next boot up"

    .line 219
    .line 220
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    if-nez v4, :cond_6

    .line 225
    .line 226
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Ljava/util/TreeMap;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_5

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Ljava/util/Map$Entry;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    .line 252
    :try_start_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 257
    .line 258
    invoke-interface {v4, v1, p3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :catch_4
    move-exception v4

    .line 263
    :try_start_7
    const-string v5, "EnterpriseDeviceManagerService"

    .line 264
    .line 265
    const-string/jumbo v6, "removeActiveAdminDelayed Ex2:"

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_5
    iget-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 273
    .line 274
    invoke-virtual {p3, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onAdminRemoved(I)V

    .line 275
    .line 276
    .line 277
    :cond_6
    if-eqz p2, :cond_a

    .line 278
    .line 279
    const/16 p3, 0x3e8

    .line 280
    .line 281
    if-ne v1, p3, :cond_a

    .line 282
    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 284
    .line 285
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-interface {v0, v4}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_a

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_a

    .line 304
    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    check-cast v4, Landroid/content/ComponentName;

    .line 310
    .line 311
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(ILandroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    if-eqz v5, :cond_8

    .line 316
    .line 317
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 322
    .line 323
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 324
    .line 325
    if-eq v5, p3, :cond_8

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_8
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-nez v5, :cond_7

    .line 341
    .line 342
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 347
    .line 348
    .line 349
    const-string p2, "adminUid"

    .line 350
    .line 351
    const-string/jumbo p3, "proxyUid"

    .line 352
    .line 353
    .line 354
    filled-new-array {p2, p3}, [Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    new-instance p3, Landroid/content/ContentValues;

    .line 359
    .line 360
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v0, "adminUid"

    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 373
    .line 374
    const-string v4, "PROXY_ADMIN_INFO"

    .line 375
    .line 376
    invoke-virtual {v0, v4, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    check-cast p2, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    :cond_9
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result p3

    .line 390
    if-eqz p3, :cond_a

    .line 391
    .line 392
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p3

    .line 396
    check-cast p3, Landroid/content/ContentValues;

    .line 397
    .line 398
    const-string v0, "adminUid"

    .line 399
    .line 400
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string/jumbo v4, "proxyUid"

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object p3

    .line 411
    if-eqz v0, :cond_9

    .line 412
    .line 413
    if-eqz p3, :cond_9

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-ne v4, v1, :cond_9

    .line 420
    .line 421
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 422
    .line 423
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v6

    .line 435
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 436
    .line 437
    .line 438
    const-string v4, "EnterpriseDeviceManagerService"

    .line 439
    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v6, "MUMContainer relation rebuilt : "

    .line 446
    .line 447
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 451
    .line 452
    .line 453
    move-result p3

    .line 454
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 455
    .line 456
    .line 457
    move-result p3

    .line 458
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string p3, " - "

    .line 462
    .line 463
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p3

    .line 473
    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 474
    .line 475
    .line 476
    goto :goto_4

    .line 477
    :cond_a
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    .line 479
    .line 480
    goto :goto_8

    .line 481
    :goto_6
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 482
    :try_start_9
    throw p2
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 483
    :goto_7
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 484
    .line 485
    .line 486
    goto :goto_5

    .line 487
    :goto_8
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 488
    .line 489
    const-string p2, "ADMIN_REMOVED"

    .line 490
    .line 491
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 492
    .line 493
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :goto_9
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 498
    :goto_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    .line 500
    .line 501
    throw p0
.end method

.method public final removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Removing admin "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " from user "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " from DPM"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "EnterpriseDeviceManagerService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final removeAuthorizedUid(II)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "removeAuthorizedUid"

    .line 2
    .line 3
    .line 4
    const-string v1, "EnterpriseDeviceManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/ContentValues;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "adminUid"

    .line 24
    .line 25
    const-string/jumbo v3, "authorizedUid"

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0, v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    .line 33
    const-string p1, "ADMIN_UID_AUTHORIZATION_INFO"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const-string/jumbo p1, "removeAuthorizedUid : "

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    if-le p0, p1, :cond_0

    .line 47
    .line 48
    return p1

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final resetAPILevelPrivacyPolicies()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "EnterpriseDeviceManagerService"

    .line 4
    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->resetControlStateBits(I)V

    .line 10
    .line 11
    .line 12
    const-string v3, "EnterpriseDeviceManagerService"

    .line 13
    .line 14
    const-string/jumbo v0, "updateApplicationCacheForWpcod() called"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    const-string/jumbo v0, "application_policy"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 32
    .line 33
    int-to-long v4, v0

    .line 34
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateApplicationCacheForWpcod(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v5, "updateApplicationCacheForWpcod error: "

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v4, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Application Group): Exception - "

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    :try_start_3
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    .line 68
    iget v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 69
    .line 70
    const-string v9, "APPLICATION_MISC"

    .line 71
    .line 72
    const-string/jumbo v10, "appNotificationMode"

    .line 73
    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x2

    .line 77
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_2
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies : Failed to reset App Notification Mode: "

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    :try_start_4
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    .line 98
    iget v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 99
    .line 100
    const-string v6, "RESTRICTION"

    .line 101
    .line 102
    const-string/jumbo v10, "backupEnabled"

    .line 103
    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v8, 0x1

    .line 107
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    .line 112
    iget v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 113
    .line 114
    const-string v12, "RESTRICTION"

    .line 115
    .line 116
    const-string/jumbo v16, "clipboardEnabled"

    .line 117
    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    const/4 v14, 0x1

    .line 121
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    .line 126
    iget v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 127
    .line 128
    const-string v4, "RESTRICTION"

    .line 129
    .line 130
    const-string/jumbo v8, "factoryresetallowed"

    .line 131
    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v6, 0x1

    .line 135
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 139
    .line 140
    iget v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 141
    .line 142
    const-string v10, "RESTRICTION"

    .line 143
    .line 144
    const-string v14, "allowClipboardShare"

    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    const/4 v12, 0x1

    .line 148
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 152
    .line 153
    iget v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 154
    .line 155
    const-string v4, "RESTRICTION"

    .line 156
    .line 157
    const-string v8, "allowGoogleAccountsAutoSync"

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v6, 0x1

    .line 161
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    const-string v3, "EnterpriseDeviceManagerService"

    .line 165
    .line 166
    const-string/jumbo v0, "updateRestrictionCacheForWpcod() called.."

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 170
    .line 171
    .line 172
    :try_start_5
    const-string/jumbo v0, "restriction_policy"

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 180
    .line 181
    if-eqz v0, :cond_1

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCacheForWpcod()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :catch_3
    move-exception v0

    .line 188
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string/jumbo v5, "updateRestrictionCacheForWpcod error: "

    .line 194
    .line 195
    .line 196
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v4, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catch_4
    move-exception v0

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Restriction Group): Exception - "

    .line 207
    .line 208
    .line 209
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_1
    :goto_2
    :try_start_7
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 216
    .line 217
    iget v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 218
    .line 219
    const-string v6, "RESTRICTION"

    .line 220
    .line 221
    const-string/jumbo v10, "globalProxy"

    .line 222
    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v8, 0x0

    .line 226
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :catch_5
    move-exception v0

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Global Proxy): Exception - "

    .line 234
    .line 235
    .line 236
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :goto_3
    :try_start_8
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 243
    .line 244
    iget v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 245
    .line 246
    const-string v6, "MULTI_USER_MGMT"

    .line 247
    .line 248
    const-string/jumbo v10, "multiUserCreationAllowed"

    .line 249
    .line 250
    .line 251
    const/4 v9, 0x0

    .line 252
    const/4 v8, 0x1

    .line 253
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 257
    .line 258
    iget v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 259
    .line 260
    const-string v12, "MULTI_USER_MGMT"

    .line 261
    .line 262
    const-string/jumbo v16, "multiUserRemovalAllowed"

    .line 263
    .line 264
    .line 265
    const/4 v15, 0x0

    .line 266
    const/4 v14, 0x1

    .line 267
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :catch_6
    move-exception v0

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (MultiUser policy Group): Exception - "

    .line 275
    .line 276
    .line 277
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_4
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    .line 284
    .line 285
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string/jumbo v3, "bluetoothLogEnabled"

    .line 289
    .line 290
    .line 291
    const-string/jumbo v4, "false"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 298
    .line 299
    iget v4, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 300
    .line 301
    const-string v5, "BLUETOOTH"

    .line 302
    .line 303
    const/4 v6, 0x0

    .line 304
    invoke-virtual {v3, v4, v6, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :catch_7
    move-exception v0

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string/jumbo v4, "resetAPILevelPrivacyPolicies (Bluetooth policy Group): Exception - "

    .line 312
    .line 313
    .line 314
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    :try_start_a
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 325
    .line 326
    iget v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 327
    .line 328
    const-string v4, "ADMIN_INFO"

    .line 329
    .line 330
    const-string/jumbo v8, "canRemove"

    .line 331
    .line 332
    .line 333
    const/4 v7, 0x0

    .line 334
    const/4 v6, 0x1

    .line 335
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 339
    .line 340
    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getKPUPackageName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    :cond_2
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_4

    .line 357
    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    check-cast v5, Ljava/lang/Integer;

    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-nez v5, :cond_2

    .line 373
    .line 374
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 375
    .line 376
    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    if-eqz v5, :cond_2

    .line 381
    .line 382
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-nez v6, :cond_3

    .line 387
    .line 388
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 389
    .line 390
    .line 391
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    invoke-interface {v0, v6, v5, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-nez v5, :cond_2

    .line 400
    .line 401
    goto :goto_7

    .line 402
    :catch_8
    move-exception v0

    .line 403
    goto :goto_8

    .line 404
    :cond_3
    :goto_7
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 405
    .line 406
    const-string v7, "ADMIN_INFO"

    .line 407
    .line 408
    const-string/jumbo v11, "canRemove"

    .line 409
    .line 410
    .line 411
    const/4 v10, 0x0

    .line 412
    const/4 v9, 0x1

    .line 413
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 414
    .line 415
    .line 416
    goto :goto_6

    .line 417
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string/jumbo v3, "resetAPILevelPrivacyPolicies (EDMPolicy.setAdminRemovable): Exception - "

    .line 420
    .line 421
    .line 422
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :cond_4
    return-void
.end method

.method public final resetClassLevelPrivacyPolicies()V
    .locals 7

    .line 1
    const-string v0, "GEOFENCINGSETTINGS"

    .line 2
    .line 3
    const-string v1, "DomainFilterReportStatus"

    .line 4
    .line 5
    const-string v2, "GEOFENCING"

    .line 6
    .line 7
    const-string v3, "BROWSER"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/content/ContentValues;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "adminUid"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    const/4 v3, 0x4

    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    aget-object v3, v0, v2

    .line 34
    .line 35
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    invoke-virtual {v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v6, "resetClassLevelPrivacyPolicies : Failed to reset table "

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " : "

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "EnterpriseDeviceManagerService"

    .line 62
    .line 63
    invoke-static {v4, v5, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public final sendIntent(I)V
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_2

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const p0, 0x1040249

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const p0, 0x1040856

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const p0, 0x1040276

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final sendKnoxAnalyticsDeviceStatus()Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "DeviceOwner component: "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v3, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "KADeviceStatus caller: "

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "EDM_KnoxAnalytics"

    .line 34
    .line 35
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "com.samsung.android.mdm"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v1, v3, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/16 v6, 0x3e8

    .line 54
    .line 55
    if-eq v0, v6, :cond_1

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 63
    .line 64
    const-string v1, "Caller is not DO or PO or KPU"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_1
    :goto_0
    const-string v0, "Device Status"

    .line 71
    .line 72
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v4, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v6, Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 97
    .line 98
    const/4 v9, -0x1

    .line 99
    iput v9, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    .line 103
    .line 104
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 105
    .line 106
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 107
    .line 108
    const-string v0, "Not_assigned"

    .line 109
    .line 110
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 111
    .line 112
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 113
    .line 114
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 115
    .line 116
    const/4 v11, 0x0

    .line 117
    iput-object v11, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 118
    .line 119
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 120
    .line 121
    iput v10, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 122
    .line 123
    iput-object v11, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 124
    .line 125
    iput v9, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 126
    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 133
    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 140
    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 147
    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 154
    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 161
    .line 162
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    .line 170
    const-string/jumbo v12, "com.google.android.feature.AER_OPTIMIZED"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    .line 179
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    .line 180
    .line 181
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 182
    .line 183
    .line 184
    move-result-wide v12

    .line 185
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isDeviceOrProfileOwnerEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 192
    .line 193
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 200
    .line 201
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    const-class v14, Lcom/samsung/android/knox/SemPersonaManager;

    .line 204
    .line 205
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 210
    .line 211
    if-eqz v0, :cond_3

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationPresent()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_3

    .line 218
    .line 219
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto/16 :goto_11

    .line 224
    .line 225
    :catch_0
    move-exception v0

    .line 226
    goto :goto_3

    .line 227
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 228
    .line 229
    invoke-interface {v0, v10}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 230
    .line 231
    .line 232
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_4
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 242
    .line 243
    .line 244
    move-result-wide v12

    .line 245
    if-eqz v11, :cond_5

    .line 246
    .line 247
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 248
    .line 249
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    new-instance v14, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :goto_5
    move v2, v0

    .line 273
    goto :goto_6

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    goto/16 :goto_10

    .line 276
    .line 277
    :catch_1
    move-exception v0

    .line 278
    goto/16 :goto_f

    .line 279
    .line 280
    :cond_5
    const/16 v0, -0x2710

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :goto_6
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    const-string/jumbo v14, "user"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/os/UserManager;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    move v0, v10

    .line 303
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    const-string v9, ";"

    .line 308
    .line 309
    if-eqz v15, :cond_11

    .line 310
    .line 311
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v15

    .line 315
    check-cast v15, Landroid/content/pm/UserInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    .line 317
    add-int/lit8 v16, v0, 0x1

    .line 318
    .line 319
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v10, "Counting userId : "

    .line 325
    .line 326
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget v10, v15, Landroid/content/pm/UserInfo;->id:I

    .line 330
    .line 331
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v10, " , of type: "

    .line 335
    .line 336
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v10, v15, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    iget-object v0, v15, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_10

    .line 364
    .line 365
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_10

    .line 370
    .line 371
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_10

    .line 376
    .line 377
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 378
    .line 379
    const/16 v9, 0x4d

    .line 380
    .line 381
    if-ne v0, v9, :cond_6

    .line 382
    .line 383
    goto/16 :goto_d

    .line 384
    .line 385
    :cond_6
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_7

    .line 390
    .line 391
    const-string v0, "AppSeparation present"

    .line 392
    .line 393
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    goto/16 :goto_d

    .line 397
    .line 398
    :catch_2
    move-exception v0

    .line 399
    goto/16 :goto_e

    .line 400
    .line 401
    :cond_7
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_8

    .line 406
    .line 407
    const-string v0, "SecureFolder present"

    .line 408
    .line 409
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    iput v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 413
    .line 414
    goto/16 :goto_d

    .line 415
    .line 416
    :cond_8
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 417
    .line 418
    const/4 v9, 0x4

    .line 419
    if-ne v2, v0, :cond_9

    .line 420
    .line 421
    move v0, v9

    .line 422
    goto :goto_8

    .line 423
    :cond_9
    const/4 v0, -0x1

    .line 424
    :goto_8
    if-ne v0, v9, :cond_a

    .line 425
    .line 426
    move v9, v8

    .line 427
    goto :goto_9

    .line 428
    :cond_a
    const/4 v9, 0x0

    .line 429
    :goto_9
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    if-eqz v10, :cond_d

    .line 434
    .line 435
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 436
    .line 437
    iget v9, v15, Landroid/content/pm/UserInfo;->id:I

    .line 438
    .line 439
    invoke-interface {v0, v9}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    const/16 v9, 0x8

    .line 444
    .line 445
    if-eqz v0, :cond_b

    .line 446
    .line 447
    const/4 v0, 0x3

    .line 448
    iput v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 449
    .line 450
    move v0, v9

    .line 451
    goto :goto_a

    .line 452
    :cond_b
    const/4 v0, 0x2

    .line 453
    iput v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 454
    .line 455
    const/4 v0, 0x0

    .line 456
    :goto_a
    iget-object v10, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 457
    .line 458
    iget v8, v15, Landroid/content/pm/UserInfo;->id:I

    .line 459
    .line 460
    invoke-interface {v10, v8}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    if-ne v0, v9, :cond_c

    .line 465
    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v9, "WPCOD Owner component: "

    .line 472
    .line 473
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    const-string v9, "WP Owner component: "

    .line 497
    .line 498
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    :goto_b
    const/4 v9, 0x1

    .line 516
    goto :goto_c

    .line 517
    :cond_d
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 518
    .line 519
    .line 520
    :goto_c
    iget v8, v15, Landroid/content/pm/UserInfo;->id:I

    .line 521
    .line 522
    invoke-virtual {v1, v7, v8, v0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminsInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;IIZ)V

    .line 523
    .line 524
    .line 525
    if-eqz v9, :cond_e

    .line 526
    .line 527
    iget v8, v15, Landroid/content/pm/UserInfo;->id:I

    .line 528
    .line 529
    invoke-virtual {v1, v7, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDelegatedPackagesInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;II)V

    .line 530
    .line 531
    .line 532
    :cond_e
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    invoke-virtual {v1, v7, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceManagementRoleHolderInUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;Landroid/os/UserHandle;I)V

    .line 537
    .line 538
    .line 539
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 540
    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    if-eqz v8, :cond_f

    .line 550
    .line 551
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 552
    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    check-cast v8, Ljava/util/Collection;

    .line 562
    .line 563
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 564
    .line 565
    .line 566
    :cond_f
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 567
    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    if-eqz v8, :cond_10

    .line 577
    .line 578
    iget-object v8, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 579
    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    check-cast v0, Ljava/util/Collection;

    .line 589
    .line 590
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 591
    .line 592
    .line 593
    :cond_10
    :goto_d
    move/from16 v0, v16

    .line 594
    .line 595
    const/4 v8, 0x1

    .line 596
    const/4 v9, -0x1

    .line 597
    const/4 v10, 0x0

    .line 598
    goto/16 :goto_7

    .line 599
    .line 600
    :goto_e
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    .line 602
    .line 603
    goto :goto_d

    .line 604
    :cond_11
    iput v0, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 605
    .line 606
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    iput v1, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 611
    .line 612
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    iput v1, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 617
    .line 618
    if-eqz v11, :cond_12

    .line 619
    .line 620
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    iput-object v1, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 625
    .line 626
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string/jumbo v2, "userCount and their types: "

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-static {v5, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->writeToBundle()V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logData()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 665
    .line 666
    .line 667
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    .line 669
    .line 670
    const/4 v1, 0x1

    .line 671
    return v1

    .line 672
    :goto_f
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 673
    .line 674
    .line 675
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    .line 677
    .line 678
    const/4 v1, 0x0

    .line 679
    return v1

    .line 680
    :goto_10
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    .line 682
    .line 683
    throw v0

    .line 684
    :goto_11
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    .line 686
    .line 687
    throw v0
.end method

.method public final setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setActiveAdminSilent(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

    .line 6
    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 12

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v1, "SET_ADMIN_REMOVABLE_TRUE"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "SET_ADMIN_REMOVABLE_FALSE"

    .line 7
    .line 8
    :goto_0
    invoke-static {p1, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v7

    .line 12
    invoke-static {v7}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    const-string v1, "EnterpriseDeviceManagerService"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    iget v3, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v8, p3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(IILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    const-string v0, "Can\'t found packageName"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 42
    .line 43
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    const-string v0, "Admin is not active"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_3
    iget v4, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 62
    .line 63
    if-eq v3, v4, :cond_4

    .line 64
    .line 65
    invoke-static {v8, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    const-string v0, "Samsung internal services cannot be controlled by other admin"

    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_4
    const-string/jumbo v2, "setAdminRemovable : callingUid = "

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v2, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 90
    .line 91
    const-string v1, "ADMIN_INFO"

    .line 92
    .line 93
    const-string/jumbo v5, "canRemove"

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    move v2, v3

    .line 98
    move v3, p2

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_8

    .line 104
    .line 105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 106
    .line 107
    .line 108
    move-result-wide v10

    .line 109
    if-nez p3, :cond_6

    .line 110
    .line 111
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const-string v4, "EnterpriseDeviceManagerService"

    .line 116
    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    const-string v0, "Admin %d has set itself as removable"

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    const-string v0, "Admin %d has set itself as not removable"

    .line 125
    .line 126
    :goto_2
    iget v1, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const/4 v1, 0x1

    .line 141
    const/4 v2, 0x1

    .line 142
    const/4 v0, 0x5

    .line 143
    move v6, v8

    .line 144
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    const-string v4, "EnterpriseDeviceManagerService"

    .line 153
    .line 154
    if-eqz p2, :cond_7

    .line 155
    .line 156
    const-string v0, "Admin %d has set %s as removable"

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    const-string v0, "Admin %d has set %s as not removable"

    .line 160
    .line 161
    :goto_3
    iget v1, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const/4 v1, 0x1

    .line 176
    const/4 v2, 0x1

    .line 177
    const/4 v0, 0x5

    .line 178
    move v6, v8

    .line 179
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .line 181
    .line 182
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :cond_8
    :goto_6
    return v9
.end method

.method public final setAndroidLogProperty(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKnoxZtFwCaller()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "persist.sys.knox.zt.androidlog"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "Caller is not authorized to set property - uid: "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final setB2BMode(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setMediators()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/TreeMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 26
    .line 27
    instance-of v2, v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->setMediator(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final setUserSelectable(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "alias"

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-string v1, "In setGrant - uid"

    .line 12
    .line 13
    const-string v2, ",alias:"

    .line 14
    .line 15
    const-string v3, ",value:"

    .line 16
    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "EnterpriseDeviceManagerService"

    .line 22
    .line 23
    invoke-static {v1, p1, p3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p3, p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    :cond_0
    :try_start_0
    new-instance p3, Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v2, "isSelectable"

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/content/ContentValues;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    .line 58
    const-string p2, "CCMUserSelectableTable"

    .line 59
    .line 60
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    const-string/jumbo p0, "setUserSelectable() failed"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public final startDeferredServicesIfNeeded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final startDualDARServices()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1482

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const-string v0, "EnterpriseDeviceManagerService"

    .line 14
    .line 15
    const-string v1, "Start DualDAR Services"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "Add DualDAR services and request to be ready"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "Deferred services have already created. set initial state DualDAR"

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->setInitialState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string v1, "DualDAR stateMachine initiate failed!"

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string v0, "Only KnoxCore app can start DualDAR services"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final transferOwnerShip(Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 4

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "targetUID : "

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p3, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    new-instance p2, Landroid/content/ContentValues;

    .line 28
    .line 29
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "adminUid"

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    .line 43
    const-string v3, "ADMIN"

    .line 44
    .line 45
    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-lez p2, :cond_0

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    .line 53
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " not present in db"

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_0
    const-string/jumbo p1, "transfer Ownership failed"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method

.method public final updateNotificationExemption(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(ILjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const-string v1, "EnterpriseDeviceManagerService"

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p0, "Only Knox Internal package can grant notification exemption"

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    if-eqz p2, :cond_3

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    const-string p0, "Target package is not installed : "

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    const-string/jumbo p1, "updateNotificationExemptionInner PackageName : "

    .line 64
    .line 65
    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 77
    .line 78
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, " Notification Exemption"

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string/jumbo v0, "updateNotificationExemption : Failed to provide notification exemption  for "

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p2, " : "

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p1, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    return-void
.end method

.method public final writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "/efs/umc"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 p1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const/4 p0, 0x0

    .line 30
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_4

    .line 47
    :catch_0
    move-exception p2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 50
    .line 51
    const-string v4, "BulkEnrollmentProfile"

    .line 52
    .line 53
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    :cond_2
    if-eqz p2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    new-instance v0, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    move-object p0, v0

    .line 94
    goto :goto_4

    .line 95
    :catch_1
    move-exception p2

    .line 96
    move-object p0, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x1

    .line 102
    return p0

    .line 103
    :goto_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_2
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    return p1

    .line 120
    :goto_4
    if-eqz p0, :cond_5

    .line 121
    .line 122
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :catch_3
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/100751143 724fab5cfdb24f52972d4206b37f737f71c5a979f65210ab3eff7d4c49cb0a59"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/SystemServer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/SystemServer;

    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;->f$1:Z

    .line 5
    .line 6
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "SystemServer"

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17

    .line 35
    .line 36
    .line 37

    .line 65
    .line 66
    .line 67
    const-string v3, "SemAuthnrService"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :try_start_2
    new-instance v4, Lcom/android/server/SystemServer$4;

    .line 73
    .line 74
    const/4 v5, 0x5

    .line 75
    invoke-direct {v4, v5}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_2
    const-string v3, "Failed to add SemAuthnrService."

    .line 83
    .line 84
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 88
    .line 89
    .line 90
    const-string v3, "VideoTranscodingService"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :try_start_3
    const-string v3, "SemVideoTranscodingService"

    .line 96
    .line 97
    const-class v4, Lcom/samsung/android/media/codec/VideoTranscodingService;

    .line 98
    .line 99
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catchall_3
    move-exception v3

    .line 104
    const-string v4, "Failed to start VideoTranscodingService "

    .line 105
    .line 106
    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-static {v3, v2, v0}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    .line 114
    .line 115
    .line 116
    if-nez p0, :cond_0

    .line 117
    .line 118
    const-string p0, "DsmsService"

    .line 119
    .line 120
    invoke-virtual {v2, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :try_start_4
    const-string/jumbo v3, "dsms"

    .line 124
    .line 125
    .line 126
    const-class v4, Lcom/samsung/android/jdsms/DsmsService;

    .line 127
    .line 128
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :catchall_4
    move-exception v3

    .line 133
    invoke-static {p0, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :goto_4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 137
    .line 138
    .line 139
    :cond_0
   
    .line 167
    .line 168
    .line 169
    const-string p0, "Email Keystore Service"

    .line 170
    .line 171
    invoke-virtual {v2, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :try_start_6
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    const-string/jumbo p0, "emailksproxy"

    .line 178
    .line 179
    .line 180
    new-instance v3, Lcom/android/server/SystemServer$4;

    .line 181
    .line 182
    invoke-direct {v3, v0}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :catchall_5
    move-exception p0

    .line 190
    const-string v0, "Failure starting Email Keystore Service"

    .line 191
    .line 192
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    :goto_6
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 196
    .line 197
    .line 198
    const-string p0, "SemSsdidManagerService"

    .line 199
    .line 200
    invoke-virtual {v2, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :try_start_7
    const-string/jumbo p0, "sem_ssdid"

    .line 204
    .line 205
    .line 206
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda11;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_6
    move-exception p0

    .line 216
    const-string v0, "Failure starting SemSsdidManagerService"

    .line 217
    .line 218
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    :goto_7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 222
    .line 223
    .line 224
    return-void
.end method

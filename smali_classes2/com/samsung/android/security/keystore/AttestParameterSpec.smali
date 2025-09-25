.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec;
.super Ljava/lang/Object;
.source "qb/100751143 724fab5cfdb24f52972d4206b37f737f71c5a979f65210ab3eff7d4c49cb0a59"


# instance fields
.field public final mAlgorithm:Ljava/lang/String;

.field public final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field public final mChallenge:[B

.field public final mDeviceAttestation:Z

.field public final mDevicePropertiesAttestationIncluded:Z

.field public final mExtendedKeyUsage:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mSAKUidRequired:Z

.field public final mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field public final mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>([BZZZLandroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "EC"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, [B

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object p1, v0

    .line 28
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mChallenge:[B

    .line 29
    .line 30
    iput-boolean p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mDeviceAttestation:Z

    .line 31
    .line 32
    iput-boolean p3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mVerifiableIntegrity:Z

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    .line 36
    .line 37
    iput-boolean p4, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSAKUidRequired:Z

    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mExtendedKeyUsage:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mPackageName:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p5, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 46
    .line 47
    return-void
.end method

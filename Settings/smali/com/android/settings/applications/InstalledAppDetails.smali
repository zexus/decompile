.class public Lcom/android/settings_ext/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings_ext/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settings_ext/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settings_ext/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 97
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 122
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCanClearData:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 152
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 153
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 154
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastDataSize:J

    .line 155
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 156
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 157
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 158
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 194
    new-instance v0, Lcom/android/settings_ext/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1280
    new-instance v0, Lcom/android/settings_ext/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1315
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ext/applications/InstalledAppDetails;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ext/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ext/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ext/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ext/applications/InstalledAppDetails;)Lcom/android/settings_ext/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ext/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ext/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ext/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ext/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ext/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ext/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1297
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    invoke-direct {p0, v6}, Lcom/android/settings_ext/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1313
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 1303
    invoke-direct {p0, v5}, Lcom/android/settings_ext/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1305
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1307
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1310
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1271
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1272
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1273
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1274
    .local v1, "newEnt":Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1275
    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 1277
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->checkForceStop()V

    .line 1278
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 275
    packed-switch p1, :pswitch_data_0

    .line 289
    const-string v0, ""

    :goto_0
    return-object v0

    .line 277
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090500

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090501

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090503

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090504

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1349
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1355
    :goto_0
    return v0

    .line 1352
    :catch_0
    move-exception v0

    .line 1355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 242
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0904c3

    .line 320
    const/4 v0, 0x0

    .line 324
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/settings_ext/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 336
    :goto_0
    return v0

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 330
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :cond_2
    const v1, 0x7f0904c4

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 333
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0904c5

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCanClearData:Z

    .line 269
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    :cond_1
    return-void

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0904d7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 266
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 298
    .local v0, "dataOnly":Z
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_2

    move v0, v2

    .line 299
    :goto_1
    const/4 v1, 0x1

    .line 300
    .local v1, "moveDisable":Z
    if-eqz v0, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0904fc

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 311
    :goto_2
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_6

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "moveDisable":Z
    :cond_2
    move v0, v3

    .line 298
    goto :goto_1

    .line 302
    .restart local v1    # "moveDisable":Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 303
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0904fd

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 305
    const/4 v1, 0x0

    goto :goto_2

    .line 307
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0904fe

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 308
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;->init()V

    .line 309
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 314
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 411
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 413
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 415
    .local v0, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 420
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 421
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/settings_ext/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 430
    :goto_1
    return-void

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 428
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 417
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0904c0

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 340
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 341
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v3, v6

    .line 342
    .local v3, "isBundled":Z
    :goto_1
    const/4 v1, 0x1

    .line 343
    .local v1, "enabled":Z
    iget-boolean v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_9

    .line 344
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v9, 0x7f0904c6

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 345
    const/4 v4, 0x0

    .line 346
    .local v4, "showSpecialDisable":Z
    if-eqz v3, :cond_0

    .line 347
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/settings_ext/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v4

    .line 348
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_1

    .line 351
    const/4 v4, 0x0

    .line 353
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v4, :cond_8

    move v5, v7

    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .end local v4    # "showSpecialDisable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 372
    const/4 v1, 0x0

    .line 381
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    if-eqz v3, :cond_c

    .line 383
    const/4 v1, 0x0

    .line 399
    :cond_3
    :goto_4
    iget-boolean v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_4

    .line 400
    const/4 v1, 0x0

    .line 403
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    if-eqz v1, :cond_5

    .line 406
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    :cond_5
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_6
    move v5, v7

    .line 340
    goto :goto_0

    :cond_7
    move v3, v7

    .line 341
    goto :goto_1

    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    .restart local v4    # "showSpecialDisable":Z
    :cond_8
    move v5, v8

    .line 353
    goto :goto_2

    .line 355
    .end local v4    # "showSpecialDisable":Z
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 356
    if-eqz v3, :cond_a

    .line 357
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/settings_ext/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    goto :goto_3

    .line 358
    :cond_a
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v5, v8

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_b

    .line 363
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 364
    const/4 v1, 0x0

    goto :goto_3

    .line 366
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 385
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 387
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_e

    .line 390
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-le v5, v6, :cond_d

    move v1, v6

    :goto_5
    goto :goto_4

    :cond_d
    move v1, v7

    goto :goto_5

    .line 394
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    move v1, v6

    :goto_6
    goto :goto_4

    :cond_f
    move v1, v7

    goto :goto_6
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1088
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1090
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1091
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1093
    new-instance v3, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1097
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1098
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 1100
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1105
    :goto_0
    return-void

    .line 1103
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0904e4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1042
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1043
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1044
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0904c5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1045
    if-ne v1, v4, :cond_0

    .line 1046
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1051
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->checkForceStop()V

    .line 1052
    return-void

    .line 1049
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1069
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1070
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1072
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1073
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1074
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1080
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshUi()Z

    .line 1081
    return-void

    .line 1078
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1055
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1056
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1057
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->initDataButtons()V

    .line 1058
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->initMoveButton()V

    .line 1059
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1066
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0904ff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1062
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1063
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1064
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 971
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 973
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 974
    iget-boolean v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 975
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 981
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1031
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v6, :cond_2

    .line 1032
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1033
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1035
    :cond_2
    return-void

    .line 984
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 985
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 986
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 987
    .local v4, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 988
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 989
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 1000
    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 1001
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1002
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_5
    iget-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 1005
    iput-wide v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1006
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1009
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 1010
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1011
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    :cond_7
    iget-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 1014
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1015
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_c

    .line 1019
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1024
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_d

    .line 1025
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 991
    .end local v0    # "cacheSize":J
    :cond_a
    iget-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    .line 992
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 993
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    :cond_b
    iget-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 996
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 997
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1021
    .restart local v0    # "cacheSize":J
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1022
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1027
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1028
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 49

    .prologue
    .line 692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 693
    const/16 v44, 0x1

    .line 916
    :goto_0
    return v44

    .line 695
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v28

    .line 697
    .local v28, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    if-nez v44, :cond_1

    .line 698
    const/16 v44, 0x0

    goto :goto_0

    .line 701
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    if-nez v44, :cond_2

    .line 702
    const/16 v44, 0x0

    goto :goto_0

    .line 706
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v23, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->clear()V

    .line 709
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_4

    .line 710
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/ResolveInfo;

    .line 711
    .local v36, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 712
    .local v6, "activityPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 715
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    .line 716
    .local v27, "metadata":Landroid/os/Bundle;
    if-eqz v27, :cond_3

    .line 717
    const-string v44, "android.app.home.alternate"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 718
    .local v26, "metaPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ext/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v26    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 725
    .end local v6    # "activityPkg":Ljava/lang/String;
    .end local v27    # "metadata":Landroid/os/Bundle;
    .end local v36    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v33, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v25, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 732
    const/16 v22, 0x0

    .line 734
    .local v22, "hasUsbDefaults":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 740
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v21

    .line 743
    .local v21, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0f00c5

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 744
    .local v15, "autoLaunchTitleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0f00c6

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 745
    .local v16, "autoLaunchView":Landroid/widget/TextView;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v44

    if-gtz v44, :cond_6

    if-eqz v22, :cond_8

    :cond_6
    const/4 v14, 0x1

    .line 746
    .local v14, "autoLaunchEnabled":Z
    :goto_3
    if-nez v14, :cond_9

    if-nez v21, :cond_9

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 786
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const-string v45, "activity"

    invoke-virtual/range {v44 .. v45}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 788
    .local v10, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v18

    .line 799
    .local v18, "compatMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->setVisibility(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0f00cb

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 804
    .local v30, "permsView":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 805
    .local v12, "asp":Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v34

    .line 809
    .local v34, "premiumSmsPermission":I
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-gtz v44, :cond_7

    if-eqz v34, :cond_12

    .line 811
    :cond_7
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 816
    :goto_5
    const v44, 0x7f0f00cc

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 818
    .local v38, "securityBillingDesc":Landroid/widget/TextView;
    const v44, 0x7f0f00cd

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    .line 820
    .local v39, "securityBillingList":Landroid/widget/LinearLayout;
    if-eqz v34, :cond_13

    .line 822
    const/16 v44, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 824
    const v44, 0x7f0f00ce

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Spinner;

    .line 826
    .local v41, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const v45, 0x7f0b005f

    const v46, 0x1090008

    invoke-static/range {v44 .. v46}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 829
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v44, 0x1090009

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 830
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 832
    add-int/lit8 v44, v34, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 833
    new-instance v44, Lcom/android/settings_ext/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 841
    .end local v7    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v41    # "spinner":Landroid/widget/Spinner;
    :goto_6
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-lez v44, :cond_16

    .line 843
    const v44, 0x7f0f00d0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    .line 845
    .local v40, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 846
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v29

    .line 850
    .local v29, "packages":[Ljava/lang/String;
    if-eqz v29, :cond_16

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_16

    .line 851
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v32, "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v24, 0x0

    :goto_7
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_15

    .line 853
    aget-object v31, v29, v24

    .line 854
    .local v31, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_14

    .line 852
    :goto_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 737
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .end local v14    # "autoLaunchEnabled":Z
    .end local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v16    # "autoLaunchView":Landroid/widget/TextView;
    .end local v18    # "compatMode":I
    .end local v21    # "hasBindAppWidgetPermission":Z
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v30    # "permsView":Landroid/widget/LinearLayout;
    .end local v31    # "pkg":Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "premiumSmsPermission":I
    .end local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .end local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v20

    .line 738
    .local v20, "e":Landroid/os/RemoteException;
    const-string v44, "InstalledAppDetails"

    const-string v45, "mUsbManager.hasDefaults"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 745
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .restart local v16    # "autoLaunchView":Landroid/widget/TextView;
    .restart local v21    # "hasBindAppWidgetPermission":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 749
    .restart local v14    # "autoLaunchEnabled":Z
    :cond_9
    if-eqz v21, :cond_e

    if-eqz v14, :cond_e

    const/16 v43, 0x1

    .line 751
    .local v43, "useBullets":Z
    :goto_9
    if-eqz v21, :cond_f

    .line 752
    const v44, 0x7f0904b3

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 757
    :goto_a
    const/16 v42, 0x0

    .line 758
    .local v42, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0e000b

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 760
    .local v17, "bulletIndent":I
    if-eqz v14, :cond_b

    .line 761
    const v44, 0x7f0904c7

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 762
    .local v13, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 763
    .local v37, "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_a

    .line 764
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 766
    :cond_a
    if-nez v42, :cond_10

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 769
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_b
    :goto_b
    if-eqz v21, :cond_d

    .line 770
    const v44, 0x7f0904c8

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 772
    .local v9, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 773
    .restart local v37    # "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_c

    .line 774
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 777
    :cond_c
    if-nez v42, :cond_11

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 780
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_d
    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 749
    .end local v17    # "bulletIndent":I
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    :cond_e
    const/16 v43, 0x0

    goto/16 :goto_9

    .line 754
    .restart local v43    # "useBullets":Z
    :cond_f
    const v44, 0x7f0904b2

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    .line 766
    .restart local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v17    # "bulletIndent":I
    .restart local v37    # "s":Landroid/text/SpannableString;
    .restart local v42    # "text":Ljava/lang/CharSequence;
    :cond_10
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto/16 :goto_b

    .line 777
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_11
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto :goto_c

    .line 813
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "bulletIndent":I
    .end local v37    # "s":Landroid/text/SpannableString;
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .restart local v18    # "compatMode":I
    .restart local v30    # "permsView":Landroid/widget/LinearLayout;
    .restart local v34    # "premiumSmsPermission":I
    :cond_12
    const/16 v44, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 837
    .restart local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .restart local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    :cond_13
    const/16 v44, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    const/16 v44, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 858
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v31    # "pkg":Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 859
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v44

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 860
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v44

    goto/16 :goto_8

    .line 863
    .end local v31    # "pkg":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 864
    .local v5, "N":I
    if-lez v5, :cond_16

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 867
    .local v35, "res":Landroid/content/res/Resources;
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v5, v0, :cond_18

    .line 868
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 881
    .local v11, "appListStr":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0f00cf

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 883
    .local v19, "descr":Landroid/widget/TextView;
    const v44, 0x7f0904f1

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v19    # "descr":Landroid/widget/TextView;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->checkForceStop()V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshButtons()V

    .line 892
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 894
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v44, v0

    if-nez v44, :cond_1d

    .line 896
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ext/applications/InstalledAppDetails;->mInitialized:Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-nez v44, :cond_1c

    const/16 v44, 0x1

    :goto_e
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ext/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 916
    :cond_17
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 869
    .restart local v5    # "N":I
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v35    # "res":Landroid/content/res/Resources;
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_18
    const/16 v44, 0x2

    move/from16 v0, v44

    if-ne v5, v0, :cond_19

    .line 870
    const v44, 0x7f0904f2

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "appListStr":Ljava/lang/String;
    goto/16 :goto_d

    .line 873
    .end local v11    # "appListStr":Ljava/lang/String;
    :cond_19
    add-int/lit8 v44, v5, -0x2

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 874
    .restart local v11    # "appListStr":Ljava/lang/String;
    add-int/lit8 v24, v5, -0x3

    :goto_f
    if-ltz v24, :cond_1b

    .line 875
    if-nez v24, :cond_1a

    const v44, 0x7f0904f4

    :goto_10
    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 874
    add-int/lit8 v24, v24, -0x1

    goto :goto_f

    .line 875
    :cond_1a
    const v44, 0x7f0904f5

    goto :goto_10

    .line 878
    :cond_1b
    const v44, 0x7f0904f3

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v11, v45, v46

    const/16 v46, 0x1

    add-int/lit8 v47, v5, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    .line 897
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_1c
    const/16 v44, 0x0

    goto/16 :goto_e

    .line 902
    :cond_1d
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x2200

    invoke-virtual/range {v44 .. v46}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 905
    .restart local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v44, v0

    if-nez v44, :cond_17

    .line 909
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-eqz v44, :cond_1e

    const/16 v44, 0x1

    goto/16 :goto_0

    :cond_1e
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 911
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v20

    .line 912
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v44, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 956
    const v0, 0x7f0904b2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 957
    const v0, 0x7f0904c9

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 959
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 960
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 649
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 651
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 653
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 654
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 657
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settings_ext/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 658
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 661
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_2
    return-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 649
    goto :goto_0

    .line 651
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 669
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iput-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, 0x0

    .line 575
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0f0011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 578
    const v3, 0x7f0f000c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 579
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings_ext/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;)V

    .line 580
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    const v3, 0x7f0f000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 583
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    const v3, 0x7f0f00df

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 587
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0904fb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 964
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 965
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/SettingsActivity;

    .line 967
    .local v1, "sa":Lcom/android/settings_ext/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings_ext/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 968
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1336
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1337
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1340
    .local v2, "nm":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1341
    .local v0, "enable":Z
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v0    # "enable":Z
    :goto_0
    return-void

    .line 1342
    :catch_0
    move-exception v1

    .line 1343
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 1108
    invoke-static {p1, p2}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1109
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 677
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 680
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 681
    const/4 v1, 0x1

    .line 688
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 683
    :catch_0
    move-exception v1

    .line 688
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1262
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1263
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1264
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1265
    iput-boolean p3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1266
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1294
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1292
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 551
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    if-ne p1, v5, :cond_1

    .line 553
    iget-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 554
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 559
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 560
    new-instance v2, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    invoke-direct {p0, v5, v5}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 571
    :cond_1
    return-void

    .line 564
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1432
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1433
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1435
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1436
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1438
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1440
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1441
    if-nez p2, :cond_4

    .line 1442
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1444
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1363
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1364
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    .line 1365
    iget-boolean v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_1

    .line 1366
    invoke-direct {p0, v4, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 1369
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_2

    .line 1370
    const/4 v6, 0x7

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1372
    :cond_2
    new-instance v7, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1376
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 1377
    invoke-direct {p0, v5, v6, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1379
    :cond_4
    invoke-direct {p0, v5, v9, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1382
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    .line 1383
    const/16 v6, 0x9

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1384
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    .line 1385
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v6, :cond_0

    .line 1386
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1388
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v9}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1393
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0f00c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1395
    .local v0, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0f00c6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1396
    .local v1, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1389
    .end local v0    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v1    # "autoLaunchView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 1390
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1398
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    .line 1399
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1400
    invoke-static {}, Lcom/android/settings_ext/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1401
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ext/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1407
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1409
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_b

    .line 1411
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_a

    .line 1412
    new-instance v6, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1414
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1415
    :cond_b
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    .line 1416
    const/4 v6, 0x5

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ext/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1418
    :cond_c
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_0

    .line 1419
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_d

    .line 1420
    new-instance v7, Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1422
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move v4, v6

    .line 1424
    .local v4, "moveFlags":I
    :cond_e
    iput-boolean v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1425
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshButtons()V

    .line 1426
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ext/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_ext/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 438
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mState:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ext/applications/ApplicationsState;->newSession(Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ext/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 441
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 442
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 443
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 445
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 447
    new-instance v1, Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

    .line 450
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->resume()V

    .line 452
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 454
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 455
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 516
    const v0, 0x7f0904c1

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 518
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0f01c6

    const v7, 0x7f0f01c5

    const/16 v6, 0x8

    .line 460
    const v4, 0x7f040050

    invoke-virtual {p1, v4, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 462
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f0010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 463
    .local v0, "allDetails":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/settings_ext/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 465
    iput-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 466
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0904f8

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 469
    const v4, 0x7f0f00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 470
    const v4, 0x7f0f00b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 471
    const v4, 0x7f0f00bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 472
    const v4, 0x7f0f00b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 473
    const v4, 0x7f0f00be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 475
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :cond_0
    const v4, 0x7f0f00b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 482
    .local v1, "btnPanel":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 483
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f0904ba

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 484
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 485
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 488
    const v4, 0x7f0f00b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 489
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 491
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 494
    const v4, 0x7f0f00bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, "data_buttons_panel":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 496
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 499
    const v4, 0x7f0f00c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 500
    const v4, 0x7f0f00c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 502
    const v4, 0x7f0f00c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 505
    const v4, 0x7f0f00c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 506
    const v4, 0x7f0f00c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 507
    const v4, 0x7f0f00ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 509
    const v4, 0x7f0f00b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 511
    return-object v3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 615
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 616
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->release()V

    .line 617
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 541
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 542
    .local v0, "menuId":I
    if-ne v0, v1, :cond_0

    .line 543
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings_ext/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 546
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshUi()Z

    .line 630
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 641
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 610
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->pause()V

    .line 611
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 522
    const/4 v0, 0x1

    .line 523
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 524
    const/4 v0, 0x0

    .line 536
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 537
    return-void

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 526
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 528
    const/4 v0, 0x0

    goto :goto_0

    .line 529
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 530
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 532
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 534
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 598
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 600
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 601
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->resume()V

    .line 602
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0, v2, v2}, Lcom/android/settings_ext/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 605
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 645
    return-void
.end method

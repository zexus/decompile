.class public Lcom/android/settings_ext/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ext/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings_ext/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 106
    new-instance v0, Lcom/android/settings_ext/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/IccLockSettings$1;-><init>(Lcom/android/settings_ext/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/settings_ext/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/IccLockSettings$2;-><init>(Lcom/android/settings_ext/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ext/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ext/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ext/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ext/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ext/IccLockSettings;)Lcom/android/settings_ext/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ext/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/IccLockSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 498
    if-ltz p2, :cond_0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09035d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "displayMsg":Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 506
    .end local v0    # "displayMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;II)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "requestType"    # I
    .param p3, "attemptsRemaining"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const v3, 0x7f090351

    .line 390
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_8

    .line 391
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "exception":Ljava/lang/Throwable;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 393
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 395
    if-ne p2, v5, :cond_1

    .line 396
    const v1, 0x7f09035c

    .line 400
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 441
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v1    # "id":I
    :cond_0
    :goto_1
    return-void

    .line 398
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f09035b

    .restart local v1    # "id":I
    goto :goto_0

    .line 402
    .end local v1    # "id":I
    :cond_2
    if-ne p2, v5, :cond_6

    .line 403
    iget-boolean v2, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    .line 404
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 405
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ext/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ext/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 415
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 416
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ext/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 421
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090353

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ext/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 427
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_7

    .line 428
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ext/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 432
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090352

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ext/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 438
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_8
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private iccLockChanged(Ljava/lang/Throwable;I)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 445
    if-nez p1, :cond_1

    .line 446
    iget-boolean v0, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->resetDialogState()V

    .line 460
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 455
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ext/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    goto :goto_1
.end method

.method private iccPinChanged(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 463
    if-eqz p1, :cond_0

    .line 464
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ext/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    .line 471
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->resetDialogState()V

    .line 472
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090355

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 483
    :cond_0
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 491
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 492
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    .line 493
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->setDialogValues()V

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 495
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f09034d

    .line 286
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 287
    const-string v0, ""

    .line 288
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 313
    return-void

    .line 290
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090348

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090349

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 296
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09034a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09034c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->setDialogValues()V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 381
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 382
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 476
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 478
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-static {}, Lcom/android/settings_ext/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->finish()V

    .line 211
    :goto_0
    return-void

    .line 169
    :cond_0
    const v3, 0x7f06003b

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/IccLockSettings;->addPreferencesFromResource(I)V

    .line 171
    const-string v3, "sim_pin"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ext/EditPinPreference;

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    .line 172
    const-string v3, "sim_toggle"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 173
    if-eqz p1, :cond_1

    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 176
    const-string v3, "dialogPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    .line 177
    const-string v3, "dialogError"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 178
    const-string v3, "enableState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    .line 181
    iget v3, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 198
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings_ext/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ext/EditPinPreference$OnPinEnteredListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 207
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 208
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 210
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->updatePreferences()V

    goto :goto_0

    .line 183
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    :pswitch_0
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 187
    :pswitch_1
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 188
    const-string v3, "newPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ext/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ext/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 316
    if-nez p2, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->resetDialogState()V

    .line 357
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ext/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 328
    :cond_1
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 334
    iput v3, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 335
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 336
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    .line 337
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 340
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 341
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 342
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    .line 343
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 346
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09034f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 348
    iput v3, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 349
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPin:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 352
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 361
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    .line 365
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iput v1, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    .line 367
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 372
    :goto_0
    return v0

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 369
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget v1, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->showPinDialog()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mPinDialog:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings_ext/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ext/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 258
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

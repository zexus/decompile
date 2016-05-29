.class public Lcom/android/settings_ext/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ext/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings_ext/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/settings_ext/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 57
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings_ext/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ext/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/settings_ext/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/settings_ext/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ext/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ext/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method private displayPreferredDialog(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ext/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ext/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/android/settings_ext/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 90
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090362

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    const v4, 0x7f090363

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v4, 0x7f090008

    new-instance v5, Lcom/android/settings_ext/sim/SimDialogActivity$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/settings_ext/sim/SimDialogActivity$1;-><init>(Lcom/android/settings_ext/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    const v4, 0x7f090009

    new-instance v5, Lcom/android/settings_ext/sim/SimDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ext/sim/SimDialogActivity$2;-><init>(Lcom/android/settings_ext/sim/SimDialogActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 121
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 124
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 125
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 126
    const v1, 0x7f090919

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 130
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 131
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 132
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 135
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 136
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 137
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 140
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 141
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 144
    .local v3, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 146
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 147
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "phoneAccountId":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 156
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "phoneAccountId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 160
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v26

    .line 162
    .local v26, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v25

    .line 164
    .local v25, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v25, :cond_0

    const/16 v22, 0x0

    .line 166
    .local v22, "selectableSubInfoLength":I
    :goto_0
    new-instance v23, Lcom/android/settings_ext/sim/SimDialogActivity$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ext/sim/SimDialogActivity$3;-><init>(Lcom/android/settings_ext/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V

    .line 199
    .local v23, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v17, Lcom/android/settings_ext/sim/SimDialogActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ext/sim/SimDialogActivity$4;-><init>(Lcom/android/settings_ext/sim/SimDialogActivity;)V

    .line 210
    .local v17, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v13, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 212
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v27

    .line 213
    .local v27, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v21

    .line 216
    .local v21, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090934

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v19

    .line 221
    .local v19, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v19 .. v19}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const/4 v6, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    invoke-virtual/range {v19 .. v19}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v20

    .line 227
    .local v20, "phoneAccountId":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/settings_ext/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v24

    .line 229
    .local v24, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v13    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v17    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v20    # "phoneAccountId":Ljava/lang/String;
    .end local v21    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v22    # "selectableSubInfoLength":I
    .end local v23    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v24    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v22

    goto/16 :goto_0

    .line 231
    .restart local v13    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v17    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v21    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v22    # "selectableSubInfoLength":I
    .restart local v23    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    .end local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v21    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 236
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/SubscriptionInfo;

    .line 237
    .restart local v24    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v15

    .line 238
    .local v15, "displayName":Ljava/lang/CharSequence;
    if-nez v15, :cond_3

    .line 239
    const-string v15, ""

    .line 241
    :cond_3
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 245
    .end local v15    # "displayName":Ljava/lang/CharSequence;
    .end local v16    # "i":I
    .end local v24    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 247
    .local v10, "arr":[Ljava/lang/String;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/settings_ext/sim/SimDialogActivity$SelectAccountListAdapter;

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_5

    move-object v7, v13

    :goto_3
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0400ab

    move-object/from16 v6, p0

    move/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/settings_ext/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings_ext/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 255
    .local v5, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 266
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid dialog type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in SIM dialog."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    move-object/from16 v7, v25

    .line 249
    goto :goto_3

    .line 257
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_0
    const v6, 0x7f090918

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 270
    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v12, v5, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 271
    .local v14, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 273
    new-instance v6, Lcom/android/settings_ext/sim/SimDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings_ext/sim/SimDialogActivity$5;-><init>(Lcom/android/settings_ext/sim/SimDialogActivity;)V

    invoke-virtual {v14, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 280
    return-object v14

    .line 260
    .end local v14    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v6, 0x7f09091a

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 263
    :pswitch_2
    const v6, 0x7f090924

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ext/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/android/settings_ext/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "dialogType":I
    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings_ext/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 83
    :goto_0
    return-void

    .line 77
    :pswitch_1
    sget-object v2, Lcom/android/settings_ext/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

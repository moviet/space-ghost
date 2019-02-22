.class public Lfineclouds/com/mylibrary/feedback/FeedBackFragment;
.super Landroid/support/v4/app/Fragment;
.source "FeedBackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    return-void
.end method

.method private N()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lfineclouds/com/mylibrary/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static a()Lfineclouds/com/mylibrary/feedback/FeedBackFragment;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;

    invoke-direct {v0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;-><init>()V

    .line 45
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    sget v0, Lfineclouds/com/mylibrary/R$id;->toolbar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->a:Landroid/widget/TextView;

    .line 59
    sget v0, Lfineclouds/com/mylibrary/R$id;->top_bar_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->a:Landroid/widget/TextView;

    sget v1, Lfineclouds/com/mylibrary/R$string;->feedback_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b:Landroid/widget/TextView;

    sget v1, Lfineclouds/com/mylibrary/R$string;->feedback_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->k()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfineclouds/com/mylibrary/R$color;->item_default_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    sget v0, Lfineclouds/com/mylibrary/R$id;->top_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->e:Landroid/view/View;

    .line 70
    sget v0, Lfineclouds/com/mylibrary/R$id;->feedback_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->f:Landroid/widget/LinearLayout;

    .line 72
    sget v0, Lfineclouds/com/mylibrary/R$id;->feedback_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->c:Landroid/widget/EditText;

    .line 73
    sget v0, Lfineclouds/com/mylibrary/R$id;->feedback_contact:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->d:Landroid/widget/EditText;

    .line 74
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget v0, Lfineclouds/com/mylibrary/R$string;->setting_feedback_network_error:I

    invoke-virtual {p0, v0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b_(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->c:Landroid/widget/EditText;

    .line 100
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_1
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfineclouds/com/mylibrary/R$string;->setting_feedback_message_null:I

    .line 102
    invoke-virtual {p0, v1}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b_(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfineclouds/com/mylibrary/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfineclouds/com/mylibrary/R$string;->setting_feedback_contacts_null:I

    .line 107
    invoke-virtual {p0, v1}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b_(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 114
    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfineclouds/com/mylibrary/R$string;->setting_feedback_message_null:I

    .line 116
    invoke-virtual {p0, v1}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b_(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    iget-object v1, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 126
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfineclouds/com/mylibrary/R$string;->setting_feedback_dialog_thank:I

    .line 127
    invoke-virtual {p0, v1}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b_(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lfineclouds/com/mylibrary/feedback/FeedBackFragment$1;

    invoke-direct {v2, p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment$1;-><init>(Lfineclouds/com/mylibrary/feedback/FeedBackFragment;)V

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 146
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 51
    sget v0, Lfineclouds/com/mylibrary/R$layout;->fragment_feed_back:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->g:Landroid/content/Context;

    .line 53
    invoke-direct {p0, v0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->a(Landroid/view/View;)V

    .line 54
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 80
    sget v1, Lfineclouds/com/mylibrary/R$id;->toolbar_title:I

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget v1, Lfineclouds/com/mylibrary/R$id;->top_bar_action:I

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->g:Landroid/content/Context;

    invoke-static {v0}, Lfineclouds/com/mylibrary/c/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->g:Landroid/content/Context;

    invoke-static {v0}, Lfineclouds/com/mylibrary/c/b;->b(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0}, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->b()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lfineclouds/com/mylibrary/feedback/FeedBackFragment;->g:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfineclouds/com/mylibrary/c/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public r()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r()V

    .line 154
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    .line 159
    return-void
.end method

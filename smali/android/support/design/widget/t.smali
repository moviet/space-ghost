.class public Landroid/support/design/widget/t;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "TextInputEditText.java"


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/support/design/widget/t;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 53
    instance-of v2, v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v2, :cond_0

    .line 54
    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 57
    :cond_0
    return-object v1
.end method

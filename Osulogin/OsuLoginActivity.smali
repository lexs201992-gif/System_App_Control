.class public Lcom/android/hotspot2/osulogin/OsuLoginActivity;
.super Landroid/app/Activity;
.source "OsuLoginActivity.java"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mForceDisconnect:Z

.field private mHostName:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mRedirectResponseReceived:Z

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$pyPxXDpe9HBu6rHvw0SF-eilwMM(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeRefreshLayout(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmForceDisconnect(Lcom/android/hotspot2/osulogin/OsuLoginActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mForceDisconnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHeaderSubtitle(Lcom/android/hotspot2/osulogin/OsuLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->getHeaderSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowSignUpFailedToast(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->showSignUpFailedToast()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mForceDisconnect:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mRedirectResponseReceived:Z

    return-void
.end method

.method private getHeaderSubtitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid URL "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OsuLogin"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid URL "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OsuLogin"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object p0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method private showSignUpFailedToast()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/hotspot2/osulogin/R$string;->sign_up_failed:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate: Opening OSU Web View"

    const-string v0, "OsuLogin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const-string p1, "Cannot get wifi service"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Intent is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.net.wifi.extra.OSU_NETWORK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetwork:Landroid/net/Network;

    if-nez p1, :cond_2

    const-string p1, "Cannot get the network instance for OSU from intent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.net.wifi.extra.URL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mUrl:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "Cannot get OSU server url from intent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mHostName:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "Cannot get host from the url"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_5

    const-string p1, "Cannot get connectivity service"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Network is no longer valid"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v3, Lcom/android/hotspot2/osulogin/R$string;->action_bar_label:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    sget p1, Lcom/android/hotspot2/osulogin/R$layout;->osu_web_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lcom/android/hotspot2/osulogin/OsuLoginActivity$1;

    invoke-direct {p1, p0}, Lcom/android/hotspot2/osulogin/OsuLoginActivity$1;-><init>(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)V

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mCm:Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget p1, Lcom/android/hotspot2/osulogin/R$id;->webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    sget p1, Lcom/android/hotspot2/osulogin/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/hotspot2/osulogin/OsuLoginActivity$OsuWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hotspot2/osulogin/OsuLoginActivity$OsuWebViewClient;-><init>(Lcom/android/hotspot2/osulogin/OsuLoginActivity;Lcom/android/hotspot2/osulogin/OsuLoginActivity-IA;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/hotspot2/osulogin/OsuLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/android/hotspot2/osulogin/OsuLoginActivity$2;-><init>(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "OSU Web View to "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget p1, Lcom/android/hotspot2/osulogin/R$id;->swipe_refresh:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/android/hotspot2/osulogin/OsuLoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/hotspot2/osulogin/OsuLoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/hotspot2/osulogin/OsuLoginActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void

    :cond_8
    :goto_0
    const-string p1, "WiFi is not supported for the Network"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mForceDisconnect:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iput-object v1, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/hotspot2/osulogin/OsuLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

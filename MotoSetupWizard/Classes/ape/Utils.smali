.class public Lcom/ape/setupwizard/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final ALLOW_PRELOAD_SSID:Z

.field private static final AMX_BR:Z

.field private static final AMX_BR_SSID_TABLE:[Ljava/lang/String;

.field private static final BRAZIL_REGION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECKED_COUNTRY_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EMAIL_CHECKED_REGION:[Ljava/lang/String;

.field private static final GLANCE_APAC_REGION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JIO_APAC_REGION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENOVO_VERSION:Z

.field private static final OPEN_PE:Z

.field private static final OPEN_PE_SSID_TABLE:[Ljava/lang/String;

.field public static PATTERN_GENERIC:Ljava/util/regex/Pattern;

.field public static PATTERN_NUMBERS:Ljava/util/regex/Pattern;

.field private static final RETJIO_REGION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RET_AR:Z

.field private static final RET_AR_SSID_TABLE:[Ljava/lang/String;

.field private static final RET_LA:Z

.field private static final RET_LA_SSID_TABLE:[Ljava/lang/String;

.field private static final TABOOLA_REGION_EMEA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TABOOLA_REGION_LATAM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEF_BR:Z

.field private static final TEF_BR_SSID_TABLE:[Ljava/lang/String;

.field private static final TEF_CL:Z

.field private static final TEF_CL_SSID_TABLE:[Ljava/lang/String;

.field private static final TEF_CO:Z

.field private static final TEF_CO_SSID_TABLE:[Ljava/lang/String;

.field private static final TEF_MX:Z

.field private static final TEF_MX_SSID_TABLE:[Ljava/lang/String;

.field private static final TEF_PE:Z

.field private static final TEF_PE_SSID_TABLE:[Ljava/lang/String;

.field private static final TEF_TEST_SSID_TABLE:[Ljava/lang/String;

.field private static final TIM_BR:Z

.field private static final TIM_BR_SSID_TABLE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "[0-9]{3}\\.?[0-9]{3}\\.?[0-9]{3}\\-?[0-9]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->PATTERN_GENERIC:Ljava/util/regex/Pattern;

    const-string v0, "(?=^((?!((([0]{11})|([1]{11})|([2]{11})|([3]{11})|([4]{11})|([5]{11})|([6]{11})|([7]{11})|([8]{11})|([9]{11})))).)*$)([0-9]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->PATTERN_NUMBERS:Ljava/util/regex/Pattern;

    const-string v1, "retbr"

    const-string v2, "amxbr"

    const-string v3, "timbr"

    const-string v4, "tefbr"

    const-string v5, "niibr"

    const-string v6, "oibr"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->BRAZIL_REGION:Ljava/util/List;

    const-string v0, "retjio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ape/setupwizard/utils/Utils;->JIO_APAC_REGION:Ljava/util/List;

    const-string v2, "retbr"

    const-string v3, "amxbr"

    const-string v4, "tefbr"

    const-string v5, "timbr"

    const-string v6, "retapac"

    const-string v7, "telstra"

    const-string v8, "optus"

    const-string v9, "retjio"

    const-string v10, "retin"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ape/setupwizard/utils/Utils;->GLANCE_APAC_REGION:Ljava/util/List;

    const-string v2, "retgb"

    const-string v3, "3gb"

    const-string v4, "o2gb"

    const-string v5, "reteu"

    const-string v6, "oraeu"

    const-string v7, "pluspl"

    const-string v8, "timit"

    const-string v9, "teleu"

    const-string v10, "vfeu"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ape/setupwizard/utils/Utils;->TABOOLA_REGION_EMEA:Ljava/util/List;

    const-string v2, "openmx"

    const-string v3, "attmx"

    const-string v4, "altmx"

    const-string v5, "opencl"

    const-string v6, "openpe"

    const-string v7, "avaco"

    const-string v8, "retla"

    const-string v9, "tigca"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ape/setupwizard/utils/Utils;->TABOOLA_REGION_LATAM:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->RETJIO_REGION:Ljava/util/List;

    const-string v0, "ro.product.lenovo_version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "ro.pt.lenovo_version"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    const-string v3, "opencl"

    const-string v4, "amxcl"

    const-string v5, "amxco"

    const-string v6, "amxpe"

    const-string v7, "openpe"

    const-string v8, "amxla"

    const-string v9, "amxmx"

    const-string v10, "altmx"

    const-string v11, "attmx"

    const-string v12, "openmx"

    const-string v13, "tefmx"

    const-string v14, "retla"

    const-string v15, "tigca"

    const-string v16, "retapac"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->EMAIL_CHECKED_REGION:[Ljava/lang/String;

    new-instance v0, Lcom/ape/setupwizard/utils/Utils$1;

    invoke-direct {v0}, Lcom/ape/setupwizard/utils/Utils$1;-><init>()V

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->CHECKED_COUNTRY_CODE:Ljava/util/Map;

    const-string v0, "retar"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/ape/setupwizard/utils/Utils;->RET_AR:Z

    const-string v3, "amxbr"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/ape/setupwizard/utils/Utils;->AMX_BR:Z

    const-string v4, "timbr"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/ape/setupwizard/utils/Utils;->TIM_BR:Z

    const-string v5, "tefbr"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/ape/setupwizard/utils/Utils;->TEF_BR:Z

    const-string v6, "tefpe"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/ape/setupwizard/utils/Utils;->TEF_PE:Z

    const-string v7, "tefco"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/ape/setupwizard/utils/Utils;->TEF_CO:Z

    const-string v8, "tefcl"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sput-boolean v8, Lcom/ape/setupwizard/utils/Utils;->TEF_CL:Z

    const-string v9, "tefmx"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sput-boolean v9, Lcom/ape/setupwizard/utils/Utils;->TEF_MX:Z

    const-string v10, "retla"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/ape/setupwizard/utils/Utils;->RET_LA:Z

    const-string v11, "openpe"

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sput-boolean v11, Lcom/ape/setupwizard/utils/Utils;->OPEN_PE:Z

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    if-nez v10, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/ape/setupwizard/utils/Utils;->ALLOW_PRELOAD_SSID:Z

    const-string v0, "Personal EAP"

    const-string v1, "CLARO WIFI"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->RET_AR_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->AMX_BR_SSID_TABLE:[Ljava/lang/String;

    const-string v0, "TIM Wi-Fi SIM"

    const-string v1, "TIM Wi-Fi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TIM_BR_SSID_TABLE:[Ljava/lang/String;

    const-string v0, "VIVO-WIFI"

    const-string v1, "MOVISTAR WIFI"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_BR_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_PE_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_CO_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_CL_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_MX_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->RET_LA_SSID_TABLE:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->OPEN_PE_SSID_TABLE:[Ljava/lang/String;

    const-string v0, "youjia"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_TEST_SSID_TABLE:[Ljava/lang/String;

    return-void
.end method

.method private static create1Punctuation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static create2Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static create3Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static create4Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCpf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "."

    const-string v1, "-"

    filled-new-array {v0, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    const/16 v3, 0xc

    const/4 v4, 0x4

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    const-string v3, "\\."

    filled-new-array {v3, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ape/setupwizard/utils/Utils;->removeAllSigns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/ape/setupwizard/utils/Utils;->formatCpfDependingOnLentgh([Ljava/lang/String;[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatCpfDependingOnLentgh([Ljava/lang/String;[ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_1

    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->create1Punctuation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    aget v1, p1, v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->create2Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    aget v1, p1, v2

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_3

    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->create3Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-le v0, v1, :cond_4

    aget v1, p1, v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->create3Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    aget p1, p1, v2

    add-int/lit8 v1, p1, -0x2

    if-ne v0, v1, :cond_5

    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->create4Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v1, p1, -0x2

    if-le v0, v1, :cond_7

    if-lt v0, p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->create4Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    invoke-static {p2, p0}, Lcom/ape/setupwizard/utils/Utils;->trunk4Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static isBr(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->BRAZIL_REGION:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCPFValid(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    sget-object v1, Lcom/ape/setupwizard/utils/Utils;->PATTERN_GENERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "-|\\."

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v1, Lcom/ape/setupwizard/utils/Utils;->PATTERN_NUMBERS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    new-array v2, v1, [I

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    move v3, v0

    move v4, v3

    :goto_1
    const/16 v5, 0x9

    if-ge v3, v5, :cond_1

    aget v5, v2, v3

    mul-int/2addr v5, p0

    add-int/2addr v4, v5

    add-int/lit8 p0, p0, -0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    rem-int/2addr v4, v1

    const/16 p0, 0xa

    if-ne v4, p0, :cond_2

    move v4, v0

    :cond_2
    aget v3, v2, v5

    if-ne v4, v3, :cond_5

    const/16 v3, 0x6e

    move v4, v0

    move v5, v4

    :goto_2
    if-ge v4, p0, :cond_3

    aget v6, v2, v4

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    rem-int/2addr v5, v1

    if-ne v5, p0, :cond_4

    move v5, v0

    :cond_4
    aget p0, v2, p0

    if-ne v5, p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public static isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isCarrierAp()>>>ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isCheckedCountry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCountryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chuer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object v1, Lcom/ape/setupwizard/utils/Utils;->CHECKED_COUNTRY_CODE:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isGLANCE(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->GLANCE_APAC_REGION:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIDNumberValid(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x7

    if-lt p0, v0, :cond_1

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isJIO(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->JIO_APAC_REGION:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMotoProduct()Z
    .locals 2

    const-string v0, "ro.product.brand"

    const-string v1, "trunk"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPreProvisionedEapAccountsWithCarrier(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->RET_AR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->RET_AR_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->AMX_BR:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->AMX_BR_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->TIM_BR:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TIM_BR_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->TEF_BR:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_BR_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->TEF_PE:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_PE_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->TEF_CO:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_CO_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->TEF_CL:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_CL_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->TEF_MX:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_MX_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->RET_LA:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->RET_LA_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_8
    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->OPEN_PE:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->OPEN_PE_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_0
    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->TEF_TEST_SSID_TABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ape/setupwizard/utils/Utils;->isCarrierAp([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRetjio(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/ape/setupwizard/utils/Utils;->RETJIO_REGION:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportEmeaTaboola(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "retgb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "tesco"

    const-string v4, "o2gb"

    const-string v5, "3gb"

    const-string v6, "vfeu"

    const-string v7, "unknown"

    if-eqz v2, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "reteu"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "playpl"

    const-string v13, "pluspl"

    const-string v14, "oraeu"

    if-eqz v11, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "dteu"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, "timit"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "yoigo"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v8, "teleu"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    const-string v9, "retru"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    :goto_4
    const-string v9, "retmea"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-nez v2, :cond_9

    if-nez v5, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-nez v10, :cond_9

    if-nez v6, :cond_9

    if-nez v11, :cond_9

    if-nez v13, :cond_9

    if-nez v12, :cond_9

    if-nez v14, :cond_9

    if-nez v15, :cond_9

    if-nez v8, :cond_9

    if-nez v16, :cond_9

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    return v8
.end method

.method public static isSupportLatamTaboola(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "openmx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "unknown"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const-string v6, "attmx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "altmx"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "retar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    const-string v9, "opencl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "entcl"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "womcl"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    move v9, v5

    :goto_2
    const-string v10, "openpe"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "niipe"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    move v10, v5

    :goto_3
    const-string v11, "openla"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "womco"

    const-string v13, "tigco"

    if-eqz v11, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    move v11, v5

    :goto_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "avaco"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const/4 v12, 0x1

    goto :goto_5

    :cond_9
    move v12, v5

    :goto_5
    const-string v13, "openpub"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "tigca"

    if-eqz v13, :cond_b

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    move v13, v5

    :goto_6
    const-string v4, "retla"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v5

    :goto_7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v2, :cond_e

    if-nez v6, :cond_e

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v9, :cond_e

    if-nez v10, :cond_e

    if-nez v11, :cond_e

    if-nez v14, :cond_e

    if-nez v12, :cond_e

    if-nez v13, :cond_e

    if-nez v1, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v4, v5

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v4, 0x1

    :goto_9
    return v4
.end method

.method public static is_EMAIL_CHECKED_REGION()Z
    .locals 6

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ape/setupwizard/utils/Utils;->EMAIL_CHECKED_REGION:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private static removeAllSigns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static setTosAccepted(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "privacy_motorola_terms_of_service"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.motorola.ccc.cce.SETUP_TOS_ACCEPTED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static setValueForCheckin(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_TBL"

    const-string v2, "DailyStats"

    const-string v3, "1.0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, p0, p1}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120002

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f1100cd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/ape/setupwizard/utils/Utils$2;

    invoke-direct {v1}, Lcom/ape/setupwizard/utils/Utils$2;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lcom/ape/setupwizard/utils/Utils$3;

    invoke-direct {p0}, Lcom/ape/setupwizard/utils/Utils$3;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static trunk4Punctuations(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xb

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;->f$0:Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    check-cast p1, Landroid/system/virtualmachine/VirtualMachineCallback;

    invoke-static {v0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->$r8$lambda$h56VoddL7WUL4oJX5QEE1eGt6ms(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

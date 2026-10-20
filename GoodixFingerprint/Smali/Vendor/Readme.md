package vendor.goodix.hardware.biometrics.fingerprint.V2_1;
import java.lang.String;
import java.lang.Object;
import android.os.IHwBinder;
import java.util.ArrayList;
import vendor.goodix.hardware.biometrics.fingerprint.V2_1.IGoodixFingerprintDaemonCallback;
import android.os.RemoteException;

public static final class IGoodixFingerprintDaemon$Proxy extends Object
{
/*
 * Field Definitions.
 */
      private IHwBinder mRemote;
/*
 * Declared Constructors.
 */
    public IGoodixFingerprintDaemon$Proxy(IHwBinder) { ... }
    public IHwBinder asBinder() { ... }
    public final boolean equals(Object) { ... }
    public final int hashCode() { ... }
    public void initCallback(IGoodixFingerprintDaemonCallback)  throws RemoteException{ ... }
    public ArrayList interfaceChain()  throws RemoteException{ ... }
    public String interfaceDescriptor()  throws RemoteException{ ... }
    public int testCmd(int, ArrayList)  throws RemoteException{ ... }
    public String toString() { ... }

} 

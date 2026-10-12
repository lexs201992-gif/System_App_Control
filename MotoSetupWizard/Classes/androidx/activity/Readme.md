package androidx.activity.result;
import java.lang.String;
import android.os.Parcelable$Creator;
import android.os.Parcel;
import android.content.Intent;

public final class ActivityResult extends Object
{
/*
 * Field Definitions.
 */
      public static final Parcelable$Creator CREATOR;
      private final Intent mData;
      private final int mResultCode;
/*
 * Declared Constructors.
 */
    public ActivityResult(int, Intent) { ... }
     ActivityResult(Parcel) { ... }
    public int describeContents() { ... }
    public Intent getData() { ... }
    public int getResultCode() { ... }
    public static String resultCodeToString(int) { ... }
    public String toString() { ... }
    public void writeToParcel(Parcel, int) { ... }

} 

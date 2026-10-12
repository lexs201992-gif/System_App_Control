package androidx.collection;
import java.lang.Object;
import androidx.collection.SimpleArrayMap;
import androidx.collection.ArrayMap$EntrySet;
import java.util.Map;
import java.util.Collection;
import java.util.Set;
import androidx.collection.ArrayMap$ValueCollection;
import androidx.collection.ArrayMap$KeySet;

public class ArrayMap extends SimpleArrayMap
{
/*
 * Field Definitions.
 */
       ArrayMap$EntrySet mEntrySet;
       ArrayMap$KeySet mKeySet;
       ArrayMap$ValueCollection mValues;
/*
 * Declared Constructors.
 */
    public ArrayMap() { ... }
    public ArrayMap(SimpleArrayMap) { ... }
    public boolean containsAll(Collection) { ... }
    public boolean containsKey(Object) { ... }
    public boolean containsValue(Object) { ... }
    public Set entrySet() { ... }
    static boolean equalsSetHelper(Set, Object) { ... }
    public Object get(Object) { ... }
    public Set keySet() { ... }
    public void putAll(Map) { ... }
    public Object remove(Object) { ... }
    public boolean removeAll(Collection) { ... }
    public boolean retainAll(Collection) { ... }
    public Collection values() { ... }

} 

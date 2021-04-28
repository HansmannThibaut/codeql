import org.apache.commons.lang3.mutable.Mutable;
import org.apache.commons.lang3.mutable.MutableObject;

class MutableTest {
    String taint() { return "tainted"; }

    void sink(Object o) {}

    void test() throws Exception {

      MutableObject<String> tainted = new MutableObject<>(taint());
      MutableObject<String> taintSet = new MutableObject<>("clean");
      MutableObject<String> taintCleared = new MutableObject<>(taint());
      taintSet.setValue(taint());
      taintCleared.setValue("clean");
      Mutable<String> taintedAlias = tainted;
      Mutable<String> taintSetAlias = taintSet;
      Mutable<String> taintClearedAlias = taintCleared;

      sink(tainted.getValue()); // $hasValueFlow
      sink(taintedAlias.getValue()); // $hasValueFlow
      sink(taintSet.getValue()); // $hasValueFlow
      sink(taintSetAlias.getValue()); // $hasValueFlow
      sink(taintCleared.getValue());
      sink(taintClearedAlias.getValue());

    }
}
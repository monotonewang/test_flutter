abstract class Cache<T> {
  T getByKey(String key);

  void setByKey(String key, T value);

  T first<T>(List<T> ts) {
    // Do some initial work or error checking, then...
    T tmp = ts[0];
    // Do some additional checking or processing...
    return tmp;
  }

  void confirmType() {
    var names = List<String>();
    names.addAll(['Seth', 'Kathy', 'Lars']);
    print(names is List<String>); // true
  }
}

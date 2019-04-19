class Person {
  // 变量名以"_"开头意味着对它的 lib 是私有的。
  final _name;

  Person(this._name);

  String greet(String who) => 'who  i  am $_name';
}

/**
 * is   // Type check
 */
main(List<String> args) {
  var emp = Person("awang");
  if (emp is Person) {
    print("is person");
  }
}

// Assignment operators
void testOperators() {
  var a = 1;
  var b = null;
  b ??= a; //如果b=null才会赋值
  print(b);
}

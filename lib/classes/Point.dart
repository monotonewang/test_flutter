import 'dart:math';
import 'annoation_test.dart';

// // Import only foo.
// import 'package:lib1/lib1.dart' show foo;

// // Import all names EXCEPT foo.
// import 'package:lib2/lib2.dart' hide foo;

// Lazily loading a library
// import 'package:greetings/hello.dart' deferred as hello;

// 使用包里面的东西需要如下写法
// Future greet() async {
//   await hello.loadLibrary();
//   hello.printGreeting();
// }

class Point {
  num x, y;

  //Constructors
  Point(var x, var y) {
    this.x = x;
    this.y = y;
  }

  // Constant constructors
  static Point pointx = Point(1, 2);

  // 也可以使用 不过 这里 的 x和 y都需要声明成 final
  //  static final Point pointx= const Point(1,2);

  //  Point(this.x,this.y);

  // 构造方法重定向
// Redirecting constructors
  Point.alongXAxis(num x) : this(x, 0);

  /**
   * Named constructors
   * 命名构造函数：特征不可继承
   */
// 第一种写法
  // Point.fromJson(Map map){
  //   this.x=map['x'];
  //   this.y=map['y'];
  // }

// Initializer list
//第二种写法
// you can also initialize instance variables before the constructor body runs
  Point.fromJson(Map map)
      : this.x = map['x'],
        this.y = map['y'];

  // Factory constructors
  // 可以保证只有一个实例对象 使用 factory关键字
  // Factory constructors have no access to this.
//  factory Point(var x){

//    return Point(x);
//  }

  /**
   * Get Object's type
   */
  static Type getPointType() {
    Map<String, int> map = {'x': 2, 'y': 1};
    return Point.fromJson(map).runtimeType;
    return new Point(1, 2).runtimeType;
  }

  /**
   * 定义一个 方法
   */
  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }

  /**
   * Metadata
   */
  @TODO("xiaowang", "errorCode")
  @deprecated
  static num getPoint() {
    var point = Point.alongXAxis(9);
    point.setX = 20;
    return point.getX;
  }

  // 方法属性化
  num get getX => x;

  set setX(num value) => this.x = value;
}

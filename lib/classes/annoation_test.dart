library annoation_test;

// 自定义注解
class TODO{
  final String who;
  final String what;

//  必须使用cost关键字
  const TODO(this.who, this.what);
}
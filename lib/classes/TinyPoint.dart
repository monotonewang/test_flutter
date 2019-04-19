import 'package:test_flutter/classes/Point.dart';

class TinyPoint extends Point{

  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  TinyPoint(x, y) : super(x, y);

}
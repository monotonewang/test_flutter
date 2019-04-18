// int

// Integer values no larger than 64 bits, 
// depending on the platform. On the Dart VM, 
// values can be from -263 to 263 - 1. 
// Dart that’s compiled to JavaScript uses JavaScript numbers, 
// allowing values from -253 to 253 - 1.


var x = 1;
var hex = 0xDEADBEEF;

var y = 1.1;
var exponents = 1.42e5;

double z = 1; // Equivalent to double z = 1.0.

// string ->int int本质是一个类
var one =int.parse('1');
//string-> double
var onePointOne=double.parse('1.1');
// int->string
String oneString=one.toString();
// double->string
double onePointDouble=onePointOne.toDouble();

// 保留两位小数
double pi=3.1415926;
  String piAsString=pi.toStringAsFixed(2);
  String piAsStringE=pi.toStringAsExponential(2); //科学计数法
  String piAsStringP=pi.toStringAsPrecision(2);


void print_one(){
  print(one);
}

// Strings A Dart string is a sequence of UTF-16 code units.
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

//多行strings
var s1_m = '''
You can create
multi-line strings like this one.
''';

var s2_m = """This is also a
multi-line string.""";
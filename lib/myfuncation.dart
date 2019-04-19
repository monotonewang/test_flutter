
/**
 * 定义方法 返回 bool值
 */
bool isNoble(int atomicNumber) {
  return 1 == 2;
}

bool isBig() => 1 > 2;

/**
 * 在[]中包装一组函数参数，将它们标记为可选位置参数:
 */
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

/**
 * Optional parameters 可选参数
 */
String enableFlags({bool bold=false,bool hidden=false}){
  return '${bold} setValue=${hidden}';
}

// const Scrollbar({Key key, @required Widget child})

void forTest(){
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}

doStuff({List<String> list=const ['1','2','3'],Map<String,String> map=const{'first':'paper','second':'cotton'}}){
  print("list,$list");
  print("map,$map");
}


// Variables store references. The variable called name contains a reference to a String object with a value of “Bob”.
var name='Bob';

dynamic name1='Bob';

Object nameo='Bob';

String name2='Bob';

void assert_test(){
    int lineCount;
    print(lineCount); //null
    assert(lineCount == null);
}


// Anonymous functions
var list = ['apples', 'bananas', 'oranges'];
printFunc(var list){

list.forEach((item) {
  print('${list.indexOf(item)}: $item');
});

// list.forEach((item) => print('${list.indexOf(item)}: $item'));
}

// Notice how nestedFunction() can use variables from every level, all the way up to the top level.
 var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      // assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }

  // 闭包
  // Functions can close over variables defined in surrounding scopes.
  Function makeAdder(num addBy){
    return (num i)=>addBy+i;
  }

// 可以将函数赋值给变量
  var add2=makeAdder(2);
  // print(add2(2));

// If the boolean expression tests for null, consider using ??.
  String playerName(String name) => name ?? 'Guest';

  // Slightly longer version uses ?: operator.
String playerName2(String name) => name != null ? name : 'Guest';

num a=1;

// Cascades (..) allow you to make a sequence of operations on the same object.

// querySelector('#confirm') // Get an object.
//   ..text = 'Confirm' // Use its members.
//   ..classes.add('important')
//   ..onClick.listen((e) => window.alert('Confirmed!'));

// The previous example is equivalent to:

// var button = querySelector('#confirm');
// button.text = 'Confirm';
// button.classes.add('important');
// button.onClick.listen((e) => window.alert('Confirmed!'));



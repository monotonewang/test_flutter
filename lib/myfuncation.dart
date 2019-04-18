
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




var list=[1,2,3];

var const_list=const[1,2,3];

// Sets
// A set in Dart is an unordered collection of unique items
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

var elements = <String>{};
Set<String> names={};

void addSets(var elements,var halogens){
  elements.add('fluorine');
  elements.addAll(halogens);
}

void printSets(var elements){
      print(elements);
}

void removeSets(var elements){
  elements.remove(1);
}

//Maps
// Dart infers that gifts has the type Map<String, String> and nobleGases has the type Map<int, String>
// 自动推断功能
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

Map<int,String> constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};


var linkedMap=Map.from(gifts);

void addMap(var gifts){
  gifts['fourth'] = 'calling birds'; // Add a key-value pair
}

/**
 * 打印Maps
 */
void printMap(var gifts){
  print(gifts);
}

/**
 * 删除map元素
 */
void removeMap(Map maps){
  maps.remove("first");
}

//Runes
// In Dart, runes are the UTF-32 code points of a string.

void testRunes(){
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}
// Symbols


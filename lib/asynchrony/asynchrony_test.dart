Future checkVersion() async {
  var version = await lookUpVersion();
  // Do something with version
}

// int lookUpVersion(){
//   return 1;
// }

Future<String> lookUpVersion() async => '1.0.0';
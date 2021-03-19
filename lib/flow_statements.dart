// 增强 for循环
printFor() {
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }
}

// If you really want fall-through, you can use a continue statement and a label:
printSwitch() {
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      // executeClosed();
      continue nowClosed;
    // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      // executeNowClosed();
      break;
  }
}

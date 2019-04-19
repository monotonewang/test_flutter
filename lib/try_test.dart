
// try {
//   breedMoreLlamas();
// } on OutOfLlamasException {
//   buyMoreLlamas();
// }

// try {
//   breedMoreLlamas();
// } on OutOfLlamasException {
//   // A specific exception
//   buyMoreLlamas();
// } on Exception catch (e) {
//   // Anything else that is an exception
//   print('Unknown exception: $e');
// } catch (e) {
//   // No specified type, handles all
//   print('Something really unknown: $e');
// }

// To partially handle an exception, while allowing it to propagate, use the rethrow keyword.
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}
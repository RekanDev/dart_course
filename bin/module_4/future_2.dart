Future<void> main() async {
  // ---- Delayed Future ----
  Future.delayed(
    Duration(seconds: 1),
    () => print('Delayed Future executed after 1 second'),
  );

  // ---- Microtask ----
  Future.microtask(
    () => print('Microtask executed before next event'),
  );

  // ---- Future.wait example ----
  final f1 = Future.delayed(
    Duration(milliseconds: 500),
    () => 'First',
  );
  final f2 = Future.delayed(
    Duration(milliseconds: 700),
    () => 'Second',
  );

  final results = await Future.wait([f1, f2]);
  print('All done: $results');

  // ---- Future with error, catchError, whenComplete ----
  Future<String>.delayed(
        Duration(milliseconds: 500),
        () => throw Exception('Something went wrong'),
      )
      .then((value) => print('then'))
      .whenComplete(() => print('whenComplete'))
      .catchError((error) {
        print('Caught error: $error');

        return error;
      });

  // ---- Future.value with then and whenComplete ----
  Future.value('Done')
      .then((value) => print('Then: $value'))
      .whenComplete(() => print('Always runs at the end'));

  // ---- Future with timeout ----
  final result =
      await Future<String>.delayed(
        Duration(seconds: 2),
        () => 'Too slow',
      ).timeout(
        Duration(seconds: 1),
        onTimeout: () => 'Timed out!',
      );

  print(result);
}

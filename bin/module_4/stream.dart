import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() async {
  // ---------------- Stream.fromIterable ----------------
  final iterableStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  final sub1 = iterableStream.listen(
    (data) => print('fromIterable data: $data'),
    onDone: () => print('fromIterable done'),
  );

  // Pause and resume example
  sub1.pause(Future.delayed(Duration(seconds: 1), () {
    print('Resuming fromIterable stream after 1s');
    sub1.resume();
  }));

  // ---------------- StreamController ----------------
  final controller = StreamController<int>(
    onListen: () => print('Controller: Listener attached'),
    onCancel: () => print('Controller: Listener canceled'),
  );

  // Add values to controller
  controller.add(10);
  controller.add(20);

  // Listen to controller
  final sub2 = controller.stream.listen(
    (data) => print('Controller stream data: $data'),
    onDone: () => print('Controller stream done'),
  );

  // Pause, resume, cancel example
  sub2.pause(Future.delayed(Duration(seconds: 1), () {
    print('Resuming controller stream after 1s');
    sub2.resume();
  }));

  // Add more data
  controller.add(30);
  controller.add(40);

  // Close controller
  controller.close();

  // ---------------- Broadcast Stream ----------------
  final broadcastController = StreamController<int>.broadcast();
  broadcastController.stream.listen((data) => print('Broadcast listener 1: $data'));
  broadcastController.stream.listen((data) => print('Broadcast listener 2: $data'));

  broadcastController.add(100);
  broadcastController.add(200);
  broadcastController.close();

  // ---------------- Stream Transform ----------------
  final transformedStream = Stream.fromIterable([1, 2, 3, 4, 5])
      .where((x) => x.isEven)
      .map((x) => x * 10);

  transformedStream.listen((data) => print('Transformed stream: $data'));

  // ---------------- StreamTransformer ----------------
  final transformer = StreamTransformer<int, String>.fromHandlers(
    handleData: (int data, EventSink<String> sink) {
      sink.add('Number: $data');
    },
    handleError: (error, stack, sink) {
      sink.add('Error: $error');
    },
    handleDone: (sink) => sink.close(),
  );

  final intStream = Stream.fromIterable([7, 8, 9]);
  final transformedWithHandler = intStream.transform(transformer);

  transformedWithHandler.listen(
    (data) => print('StreamTransformer output: $data'),
    onDone: () => print('StreamTransformer done'),
  );

  // ---------------- Reading from stdin ----------------
  print('Type something (press enter to send):');
  stdin
      .transform(utf8.decoder)
      .listen(
        (event) => print('stdin input: $event'),
        onDone: () => print('stdin done'),
      );
}

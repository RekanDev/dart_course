import 'dart:isolate';

void main(List<String> args, SendPort sendPort) {
  for (var element in args) {
    print('Worker.dart received arg: $element');
  }

  sendPort.send('done');
}

import 'dart:isolate';

Future<void> main() async {
  print('=== MAIN ISOLATE START ===');
  print('Main isolate: ${Isolate.current.debugName}\n');

  // --------------------------------------------------
  // 1️⃣ Isolate.spawn – one-way communication
  // --------------------------------------------------
  print('--- Isolate.spawn (one-way) ---');

  final receivePort1 = ReceivePort();

  await Isolate.spawn(
    oneWayIsolate,
    receivePort1.sendPort,
    debugName: 'one-way-isolate',
  );

  receivePort1.listen((message) {
    print('Main received (one-way): $message\n');
  });

  // --------------------------------------------------
  // 2️⃣ Isolate.spawn – two-way communication
  // --------------------------------------------------
  print('--- Isolate.spawn (two-way) ---');

  final mainReceivePort = ReceivePort();
  SendPort? workerSendPort;

  await Isolate.spawn(
    twoWayIsolate,
    mainReceivePort.sendPort,
    debugName: 'two-way-isolate',
  );

  mainReceivePort.listen((message) {
    if (message is SendPort) {
      workerSendPort = message;

      // Send message to worker
      workerSendPort!.send('Hello from MAIN isolate');
    } else {
      print('Main received (two-way): $message\n');
    }
  });

  // --------------------------------------------------
  // 3️⃣ Isolate.spawnUri – separate file isolate
  // --------------------------------------------------
  print('--- Isolate.spawnUri ---');

  final uriReceivePort = ReceivePort();

  await Isolate.spawnUri(
    Uri.parse('worker.dart'),
    ['1', '2', '3'],
    uriReceivePort.sendPort,
  );

  uriReceivePort.listen((message) {
    print('Main received (spawnUri): $message\n');
  });
}

// --------------------------------------------------
// 1️⃣ One-way isolate
// --------------------------------------------------
void oneWayIsolate(SendPort sendPort) {
  int sum = 0;

  for (int i = 0; i < 100000000; i++) {
    sum += i;
  }

  sendPort.send(sum);
}

// --------------------------------------------------
// 2️⃣ Two-way isolate
// --------------------------------------------------
void twoWayIsolate(SendPort mainSendPort) {
  final workerReceivePort = ReceivePort();

  // Send worker SendPort to main isolate
  mainSendPort.send(workerReceivePort.sendPort);

  workerReceivePort.listen((message) {
    print('Worker received: $message');

    // Send response back to main
    mainSendPort.send('Hello from WORKER isolate');
  });
}

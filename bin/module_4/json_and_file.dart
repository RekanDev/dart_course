import 'dart:convert';
import 'dart:io';
import 'package:equatable/equatable.dart';

Future<void> main() async {
  // ---------------- JSON ----------------
  print('--- JSON Example ---');

  final student = Student(name: 'Azad', age: 33);

  // Encode to JSON
  final studentJson = jsonEncode(student.toMap());
  print('Encoded JSON: $studentJson');

  // Decode from JSON
  final studentFromMap = Student.fromMap(jsonDecode(studentJson));
  print('Decoded Student: ${studentFromMap.name}, ${studentFromMap.age}');

  // Using built-in toJson/fromJson helpers
  final studentJson2 = student.toJson();
  final studentFromJson2 = Student.fromJson(studentJson2);
  print('From toJson/fromJson: ${studentFromJson2.name}, ${studentFromJson2.age}');

  // Pretty print
  final encoder = JsonEncoder.withIndent('  ');
  print('Pretty JSON:\n${encoder.convert(student.toMap())}');

  // ---------------- File ----------------
  print('\n--- File Example ---');

  final file = File('example.txt');

  // 1. create()
  await file.create(recursive: true);
  print('File created: ${file.path}');

  // 2. writeAsString()
  await file.writeAsString('Hello World\nLine 2\nLine 3');
  print('Written to file.');

  // 3. readAsString()
  final content = await file.readAsString();
  print('Read as String:\n$content');

  // 4. readAsLines()
  final lines = await file.readAsLines();
  print('Read as Lines:');
  for (var line in lines) {
    print('- $line');
  }

  // 5. copy()
  final copiedFile = await file.copy('example_copy.txt');
  print('File copied to: ${copiedFile.path}');

  // 6. rename()
  final renamedFile = await copiedFile.rename('example_renamed.txt');
  print('File renamed to: ${renamedFile.path}');

  // 7. isFileSync()
  final isFile = FileSystemEntity.isFileSync(renamedFile.path);
  print('Is file: $isFile');

  // 8. isDirectory()
  final isDir = await FileSystemEntity.isDirectory(renamedFile.path);
  print('Is directory: $isDir');

  // 9. watch()
  print('Start watching file changes...');
  final subscription = file.watch(events: FileSystemEvent.all).listen((event) {
    print('Event: ${event.type}, Path: ${event.path}');
  });

  // Add a small delay to show watching in action
  await Future.delayed(Duration(seconds: 1));
  await file.writeAsString('Update 1', mode: FileMode.append);
  await Future.delayed(Duration(seconds: 1));

  // Cancel watching
  await subscription.cancel();

  // 10. delete()
  await renamedFile.delete();
  await file.delete();
  print('Files deleted.');
}

// ---------------- Student class ----------------
class Student extends Equatable {
  final String name;
  final int age;

  const Student({required this.name, required this.age});

  Student copyWith({String? name, int? age}) {
    return Student(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'age': age};

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(name: map['name'] as String, age: map['age'] as int);
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) =>
      Student.fromMap(Map<String, dynamic>.from(json.decode(source)));

  @override
  List<Object> get props => [name, age];

  @override
  bool? get stringify => true;
}

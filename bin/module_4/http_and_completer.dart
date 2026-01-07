import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  const baseUrl = 'https://jsonplaceholder.typicode.com';

  // ---------------- GET /posts ----------------
  final getPostsResponse = await http.get(
    Uri.parse('$baseUrl/posts'),
  );
  print('GET /posts');
  print('Status: ${getPostsResponse.statusCode}');
  print('Body length: ${getPostsResponse.body.length}\n');

  // ---------------- GET /posts/1 ----------------
  final getPostResponse = await http.get(
    Uri.parse('$baseUrl/posts/1'),
  );
  print('GET /posts/1');
  print('Status: ${getPostResponse.statusCode}');
  print('Body: ${getPostResponse.body}\n');

  // ---------------- POST /posts ----------------
  final postResponse = await http.post(
    Uri.parse('$baseUrl/posts'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'title': 'Hello',
      'body': 'This is a new post',
      'userId': 1,
    }),
  );
  print('POST /posts');
  print('Status: ${postResponse.statusCode}');
  print('Body: ${postResponse.body}\n');

  // ---------------- PUT /posts/1 ----------------
  final putResponse = await http.put(
    Uri.parse('$baseUrl/posts/1'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'id': 1,
      'title': 'Updated title',
      'body': 'Updated body',
      'userId': 1,
    }),
  );
  print('PUT /posts/1');
  print('Status: ${putResponse.statusCode}');
  print('Body: ${putResponse.body}\n');

  // ---------------- PATCH /posts/1 ----------------
  final patchResponse = await http.patch(
    Uri.parse('$baseUrl/posts/1'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'title': 'Patched title',
    }),
  );
  print('PATCH /posts/1');
  print('Status: ${patchResponse.statusCode}');
  print('Body: ${patchResponse.body}\n');

  // ---------------- DELETE /posts/1 ----------------
  final deleteResponse = await http.delete(
    Uri.parse('$baseUrl/posts/1'),
  );
  print('DELETE /posts/1');
  print('Status: ${deleteResponse.statusCode}');
  print('Body: ${deleteResponse.body}\n');

  // ---------------- COMPLETER ----------------
  print('--- Completer Example ---');

  final completer = Completer<String>();

  completer.future.then(
    (value) => print('Completer completed with: $value'),
  );

  Future.delayed(
    Duration(seconds: 1),
    () {
      if (!completer.isCompleted) {
        completer.complete('Success');
      }
    },
  );
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthRemoteRepository {
  Future<void> signup(
      {required String name,
      required String email,
      required String password}) async {
    final response = await http.post(
        Uri.parse(
          'http://127.0.0.1:8000/auth/signup', // Update this line
        ),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
              'name': name,
              'email': email,
              'password': password
              }
              )
              );

    // Error handling
    if (response.statusCode != 200) {
      throw Exception('Failed to sign up: ${response.body}');
    }

    print(response.body);
    print(response.statusCode);
  } //async - asynchronous is used bcz of http plugin here

  Future<void> login() async {}
}

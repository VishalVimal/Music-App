import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthRemoteRepository {
  Future<void> signup(
      {required String name,
      required String email,
      required String password}) async {
    final response = await http.post(
        Uri.parse(
          'http://10.0.2.2:8000/auth/signup', // Update this line
        ),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
              'name': name, //simple map
              'email': email,
              'password': password
              }
              )
              );

    // Error handling
    if (response.statusCode != 201) {
      throw Exception('Failed to sign up: ${response.body}');
    }

    print(response.body);
    print(response.statusCode);
  } //async - asynchronous is used bcz of http plugin here

  Future<void> login() async {}
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthRemoteRepository {
  Future<void> signup(
      {required String name,
      required String email,
      required String password}) async {
    // Validation to check for blank spaces
    if (name.trim().isEmpty ||
        email.trim().isEmpty ||
        password.trim().isEmpty) {
      throw ('Name, email, and password cannot be empty or contain only spaces.');
    }

    try {
      final response = await http.post(
        Uri.parse(
          'http://10.0.2.2:8000/auth/signup', // Update this line
        ),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            'name': name, //simple map
            'email': email,
            'password': password
          },
        ),
      );

      // Error handling
      if (response.statusCode != 201) {
        throw Exception('Failed to sign up: ${response.body}');
      }

      print(response.body);
      print(response.statusCode);
    } //async - asynchronous is used bcz of http plugin here
    catch (e) {
      print(e);
    }
    }
    

    Future<void> login(
        {required String email, required String password}) async {
      // Validation to check for blank spaces
      if (email.trim().isEmpty || password.trim().isEmpty) {
        throw ('Email and password cannot be empty or contain only spaces.');
      }
      try {
        final response = await http.post(
          Uri.parse(
            'http://10.0.2.2:8000/auth/login',
          ),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(
            {
              'email': email,
              'password': password,
            },
          ),
        );
        print(response.body);
        print(response.statusCode);

        if (response.statusCode != 200) {
          throw Exception('Failed to sign in: ${response.body}');
        }
      } catch (e) {
        print(e);
      }
    }
  }

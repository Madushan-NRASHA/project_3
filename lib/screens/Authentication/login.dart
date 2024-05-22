import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_3/screens/services/U_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final UAuth _auth = UAuth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Sign In Anonymously"),
          onPressed: () async {
            User? result = await _auth.signInAnonymously();
            if (result == null) {
              print("Error in sign in anonymously");
            } else {
              print("Sign in anonymous: ${result.uid}");
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_3/screens/Authentication/login.dart';
import 'package:project_3/screens/Authentication/register.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}

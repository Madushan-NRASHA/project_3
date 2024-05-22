import 'package:flutter/material.dart';
import 'package:project_3/screens/Authentication/auth.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth(),
    );
  }
}

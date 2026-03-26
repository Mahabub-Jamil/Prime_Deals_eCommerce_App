import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Sign Up"),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter First name'),
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter last name'),
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter email address'),
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter mobile number'),
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter your name'),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}

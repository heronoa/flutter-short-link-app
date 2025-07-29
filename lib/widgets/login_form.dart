import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  final void Function(String username, String password) onLogin;

  const LoginForm({super.key, required this.onLogin});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  void handleLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text;
      final password = _passwordController.text;

      widget.onLogin(email, password);
      log("Email: $email, Password: $password");
    }
    // Implement your login logic here
    log("Login button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email or username';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email/Username",
              hintText: "Enter your email or username",
            ),
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@._-]')),
            ],
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            obscureText: !_showPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              suffixIcon: IconButton(
                icon: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
              ),
            ),
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed: handleLogin, child: const Text("Login")),
        ],
      ),
    );
  }
}

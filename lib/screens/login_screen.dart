import 'package:flutter/material.dart';
import '../widgets/login_form.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onLoginSuccess(BuildContext context, String user, String pass) {
    if (user.isNotEmpty && pass.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const DashboardScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: LoginForm(
              onLogin: (user, pass) => _onLoginSuccess(context, user, pass),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/login_form.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Welcome to the Dashboard!',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}

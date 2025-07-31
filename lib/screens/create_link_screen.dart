import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/create_link_form.dart';

class CreateLinkScreen extends StatelessWidget {
  const CreateLinkScreen({super.key});

  void onCreateLink(String title, String description) {
    // Handle the link creation logic here
    // For example, you could send this data to a server or save it locally
    log('Link created with title: $title and description: $description');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Link'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Create a new link here'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement your link creation logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Link created!')),
                  );
                },
                child: CreateLinkForm(onCreateLink: onCreateLink),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate back to the dashboard or another screen
          Navigator.pop(context);
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

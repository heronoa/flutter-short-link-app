import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/link.dart';
import 'package:flutter_application_1/screens/create_link_screen.dart';
import 'package:flutter_application_1/widgets/link_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void onAddButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const CreateLinkScreen()),
    );
  }

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
          child: LinkList(
            links: [
              Link(
                url: 'url',
                shortenedUrl: 'shortenedUrl',
                title: 'title',
                description: 'description',
              ),
            ],
            onLinkTap: (link) {
              final linkMap = link as Map<String, String>;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on ${linkMap['title']}')),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onAddButtonPressed(context),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}

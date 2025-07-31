import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateLinkForm extends StatefulWidget {
  final void Function(String title, String description) onCreateLink;

  const CreateLinkForm({super.key, required this.onCreateLink});

  @override
  State<CreateLinkForm> createState() => _CreateLinkFormState();
}

class _CreateLinkFormState extends State<CreateLinkForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  void handleCreateLink() {
    if (_formKey.currentState?.validate() ?? false) {
      final title = _titleController.text;
      final description = _descriptionController.text;

      widget.onCreateLink(title, description);
      log("title: $title, description: $description");
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
            controller: _titleController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your link's name";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Link's Name",
              hintText: "Enter your link's name",
            ),
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@._-]')),
            ],
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(
              labelText: 'Description',
              hintText: 'Enter an description for your link (optional)',
              alignLabelWithHint: true,
            ),
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
            keyboardType: TextInputType.multiline,
            minLines: 3,
            maxLines: 5,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed: handleCreateLink, child: const Text("Login")),
        ],
      ),
    );
  }
}

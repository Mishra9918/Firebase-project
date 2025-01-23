import 'package:flutter/material.dart';

class SaveProjectView extends StatelessWidget {
  final Function(List<String>) onSave;

  const SaveProjectView({super.key, required this.onSave});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Save Project')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Project Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final fileNames = controller.text.split(',');
                onSave(fileNames);
              },
              child: const Text('Save Project'),
            ),
          ],
        ),
      ),
    );
  }
}

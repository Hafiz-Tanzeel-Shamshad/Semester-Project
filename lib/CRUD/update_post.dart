import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpdatePost {
  static void showUpdateDialog(
      BuildContext context, CollectionReference firebase, QueryDocumentSnapshot post) {
    final TextEditingController _updateTitleController =
    TextEditingController(text: post['title']);
    final TextEditingController _updateDescriptionController =
    TextEditingController(text: post['description']);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Update Post"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _updateTitleController,
              decoration: const InputDecoration(
                labelText: "New Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _updateDescriptionController,
              decoration: const InputDecoration(
                labelText: "New Description",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
            },
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                await firebase.doc(post.id).update({
                  "title": _updateTitleController.text,
                  "description": _updateDescriptionController.text,
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Post updated successfully!"),
                    backgroundColor: Colors.green,
                  ),
                );
              } catch (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Failed to update post."),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: const Text("Update"),
          ),
        ],
      ),
    );
  }
}

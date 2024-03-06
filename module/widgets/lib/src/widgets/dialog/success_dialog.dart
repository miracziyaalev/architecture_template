import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key, required this.title});

  final String title;

  static Future<bool?> show({required String title, required BuildContext context}) async {
    await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) => SuccessDialog(title: title),
    );

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: const Icon(Icons.check)),
        IconButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            icon: const Icon(Icons.close)),
      ],
    );
  }
}

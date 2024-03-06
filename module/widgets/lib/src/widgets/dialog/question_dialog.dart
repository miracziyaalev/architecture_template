import 'package:flutter/material.dart';

final class QuestionAnswer {
  final String response;

  QuestionAnswer({required this.response});
}

class QuestionDialog extends StatefulWidget {
  const QuestionDialog({super.key, required this.title});

  final String title;

  static Future<QuestionAnswer?> show({required String title, required BuildContext context}) async {
    return showDialog<QuestionAnswer>(
      context: context,
      barrierDismissible: false,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(onChanged: (value) => _response = value),
      actions: [
        IconButton(
            onPressed: () {
              if (_response.isEmpty) Navigator.of(context).pop(null);
              Navigator.of(context).pop(QuestionAnswer(response: _response));
            },
            icon: const Icon(Icons.check))
      ],
    );
  }
}

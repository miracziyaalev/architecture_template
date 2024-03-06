import 'package:architecture_template/product/widget/button/normal_button.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class DialogNormalButton extends StatelessWidget {
  const DialogNormalButton({super.key, required this.onCompleted});
  final ValueChanged<bool> onCompleted;

  @override
  Widget build(BuildContext context) {
    return NormalButton(
        title: "dialog normal button",
        onPressed: () async {
          final response = await SuccessDialog.show(title: "title", context: context);
          onCompleted.call(response!);
        });
  }
}

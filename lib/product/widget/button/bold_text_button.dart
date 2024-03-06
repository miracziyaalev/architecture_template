import 'package:flutter/material.dart';

class BoldTextButton extends TextButton {
  BoldTextButton({
    super.key,
    required super.onPressed,
    required super.child,
  }) : super(
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w900,
            ),
            elevation: 20,
          ),
        );
}

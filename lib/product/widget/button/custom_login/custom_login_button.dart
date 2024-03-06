import 'package:architecture_template/product/widget/button/normal_button.dart';
import 'package:flutter/material.dart';

part "custom_login_button_mixin.dart";

class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({super.key});

  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> with _CustomLoginButtonMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _isLoadingNotifier,
        builder: (context, value, child) {
          if (value) return const Text("logged in");
          return NormalButton(
              title: "Login",
              onPressed: () {
                _onPressed();
              });
        });
  }
}

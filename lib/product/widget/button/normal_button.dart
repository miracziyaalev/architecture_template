import 'package:architecture_template/product/utility/constans/enums/project_radius.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      radius: ProjectRadius.large.value,
      child: Text(title),
    );
  }
}

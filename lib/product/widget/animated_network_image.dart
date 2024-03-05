import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class AnimatedNetworkImage extends StatelessWidget {
  const AnimatedNetworkImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
        imageUrl: imageUrl,
        loadingWidget: Assets.lottie.animZombie.lottie(
          package: 'gen',
          width: 200,
          height: 200,
        ));
  }
}

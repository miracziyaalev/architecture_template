import 'package:architecture_template/product/widget/animated_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

@RoutePage()
class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const Center(
              child: Text('ExploreView'),
            ),
            Assets.lottie.animZombie.lottie(
              package: 'gen',
              width: 200,
              height: 200,
            ),
            const AnimatedNetworkImage(imageUrl: 'https://picsum.photos/250?image=9'),
          ],
        ));
  }
}

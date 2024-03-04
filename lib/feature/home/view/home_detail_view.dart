import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class HomeDetailView extends StatelessWidget {
  const HomeDetailView({required this.id, required this.number, super.key});
  final int number;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HomeDetailView: $id'),
            Text('data: $number'),
          ],
        ),
      ),
    );
  }
}

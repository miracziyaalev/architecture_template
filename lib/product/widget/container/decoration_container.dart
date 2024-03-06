import 'package:flutter/material.dart';

class CircularBoxDecoration extends BoxDecoration {
  CircularBoxDecoration({required Color color, required double radius})
      : super(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: color,
        );
}

class CircularContainer extends Container {
  CircularContainer(
      {super.key, required double height, required double width, required Color color, required double radius})
      : super(
          height: height,
          width: width,
          decoration: CircularBoxDecoration(color: color, radius: radius),
        );
}

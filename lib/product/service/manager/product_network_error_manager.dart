import 'dart:io';

import 'package:flutter/widgets.dart';

/// manage your network error with script
final class ProductNetworkErrorManager {
  ProductNetworkErrorManager(this.context);

  final BuildContext context;

  void handleError(int value){
    if (value == HttpStatus.unauthorized) {
      // do something
    }
  }
}

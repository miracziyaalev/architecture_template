import 'dart:io';

import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

final class  ProductNetworkManager extends NetworkManager<EmptyModel> {
  ProductNetworkManager.base() : super(options: BaseOptions(baseUrl: AppEnvironmentItems.baseUrl.value));

  //handle error

  void listenErrorState({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
        return handler.next(error);
      },
    ));
  }
}

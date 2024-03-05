import 'package:architecture_template/product/init/application_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/init/theme/custom_dark_theme.dart';
import 'package:architecture_template/product/init/theme/custom_light_theme.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import "package:device_preview/device_preview.dart";
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(DevicePreview(
    builder: (context) => ProductLocalization(child: const _MyApp()),
  ));
}

final class _MyApp extends StatelessWidget {
  const _MyApp({super.key});

  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // This is the generated AppRouter class
      // routerDelegate: AppRouter(),
      // routeInformationParser: AppRouter().defau ltRouteParser(),
      builder: CustomResponsive.build,
      routerConfig: _appRouter.config(),
      themeMode: ThemeMode.light,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
    );
  }
}

import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constans/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home View',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.icons.icLove.svg(
              package: 'gen',
              width: 100,
              height: 100,
            ),
            Assets.lottie.animZombie.lottie(
              package: 'gen',
              width: 200,
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppEnvironmentItems.baseUrl.value),
            ),
            Text(
              LocaleKeys.general_button_dialog_version_message.tr(),
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                if (context.locale == Locales.tr.locale) {
                  ProductLocalization.updateLanguage(
                    context: context,
                    value: Locales.en,
                  );
                } else if (context.locale == Locales.en.locale) {
                  ProductLocalization.updateLanguage(
                    context: context,
                    value: Locales.tr,
                  );
                } else {
                  ProductLocalization.updateLanguage(
                    context: context,
                    value: Locales.tr,
                  );
                }
              },
              child: Text(
                LocaleKeys.general_button_save.tr(
                  args: (context.locale == Locales.tr.locale) ? ['mirac'] : ['mayric'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

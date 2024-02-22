import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constans/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text(
          'Home View',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  LocaleKeys.general_button_dialog_version_message.tr(),
                ),
              ),
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

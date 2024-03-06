import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constans/enums/locales.dart';
import 'package:architecture_template/product/widget/button/bold_text_button.dart';
import 'package:architecture_template/product/widget/button/custom_login/custom_login_button.dart';
import 'package:architecture_template/product/widget/container/decoration_container.dart';
import 'package:architecture_template/product/widget/padding/project_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        SuccessDialog.show(title: "Arcitecture", context: context);
      }),
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
            const CustomLoginButton(),
            BoldTextButton(onPressed: () {}, child: const Text("Miraç Ziya Alev")),
            AdaptAllView(
                phone: Text("".ext.version),
                tablet: Text("".ext.version),
                desktop: Text(
                  "".ext.version,
                  style: context.general.textTheme.bodyLarge!.copyWith(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                )),
            Padding(
              padding: const ProjectPadding.horizontalNormal(),
              child: Container(
                height: 100,
                width: context.general.mediaQuery.size.width * 1,
                decoration: CircularBoxDecoration(color: Colors.red, radius: 20),
              ),
            ),
            Text(
              LocaleKeys.general_button_dialog_version_message.tr(),
              style: Theme.of(context).textTheme.titleSmall,
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

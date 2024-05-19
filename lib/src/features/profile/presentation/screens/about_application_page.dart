import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../widgets/button_widget.dart';

class AboutApplicationPage extends StatelessWidget {
  const AboutApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: S.current.aboutApp,
        backgroundColor: context.theme.primary,
        textStyle: TextStyle(color: context.theme.white, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: context.theme.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: context.theme.scaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackground,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.jpeg',
                    height: 150,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '''Система призвана создать площадку для развития конкурентной среды и оптимизации заключения сделок по купле-продаже, экспорту и импорту аграрной продукции. Среди преимуществ Приложения - улучшение ситуации с доступностью как физических лиц, так и юридических, в частности, малый и средний бизнес за счет снятия географических ограничений и оптимизации процедур. Продуктовый ассортимент будет включать размещение объявлений по продаже продукции, логистике, оформлении необходимых документов, а также дополнительных услуг необходимых для заключения сделок и выполнения договорных обязательств обеих сторон (покупатель-продавец).''',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BtnWidget(
                    color: context.theme.primary,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: context.theme.white,
                    ),
                    text: S.current.back,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

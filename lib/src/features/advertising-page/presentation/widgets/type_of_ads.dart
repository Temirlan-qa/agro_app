import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/advertising-page/presentation/notifier/advertising_notifier.dart';
import 'package:agro_app/src/features/advertising-page/presentation/widgets/ads_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TypeOfAds extends ConsumerWidget {
  const TypeOfAds({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAd = ref.watch(
        advertisingNotifierProvider.select((value) => value.advertisingEntity));
    final advertisingList = ref.watch(
        advertisingNotifierProvider.select((value) => value.advertising));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).advertiseAds,
          style: context.theme.textStyles.h1.copyWith(
            color: context.theme.black,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 20),
        ListView.separated(
          shrinkWrap: true,
          itemCount: advertisingList.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            return AdsWidget(
              onTap: () {
                ref
                    .read(advertisingNotifierProvider.notifier)
                    .selectAds(advertisingList[index]);
              },
              advertisingEntity: advertisingList[index],
              color: advertisingList[index] == selectedAd
                  ? context.theme.selectBlue
                  : context.theme.white,
              isSelectedAds: advertisingList[index] == selectedAd,
              onChanged: (bool? value) {},
            );
          },
        ),
      ],
    );
  }
}

import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/advertising-page/domain/entities/advertising_entity.dart';
import 'package:flutter/material.dart';

class AdsWidget extends StatelessWidget {
  final AdvertisingEntity advertisingEntity;
  final ValueSetter<bool?> onChanged;
  final bool isSelectedAds;
  final Color color;
  final VoidCallback onTap;
  const AdsWidget({
    super.key,
    required this.onTap,
    required this.isSelectedAds,
    required this.advertisingEntity,
    required this.color,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: context.theme.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '${advertisingEntity.title}. days /',
                        style: context.theme.textStyles.cardRegular
                            .copyWith(fontWeight: FontWeight.bold),
                        children: const [TextSpan(text: '7 lifts')],
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      '${advertisingEntity.description} times a day at the top of the search',
                      style: context.theme.textStyles.cardRegular.copyWith(
                          color: context.theme.grey,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '${advertisingEntity.price} ₸',
                  style: context.theme.textStyles.cardRegular.copyWith(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    side: BorderSide(color: context.theme.grey),
                    value: isSelectedAds,
                    onChanged: onChanged,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    activeColor: context.theme.white,
                    checkColor: context.theme.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

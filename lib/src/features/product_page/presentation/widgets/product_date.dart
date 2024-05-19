import 'package:flutter/material.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/date_time_helper.dart';

class ProductDate extends StatelessWidget {
  final DateTime date;
  const ProductDate({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.person,
          color: context.theme.primary,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Дата чего то там',
                style: context.theme.textStyles.regular.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                DateTimeHelper.productPublished(date) ?? '',
                style: context.theme.textStyles.tips.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:agro_app/src/core/theme/theme.dart';

class ProductDuties extends StatelessWidget {
  final String duties;
  const ProductDuties({super.key, required this.duties});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.task,
          color: context.theme.primary,
        ),
        const SizedBox(width: 8),
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Какие то обязанности',
                style: context.theme.textStyles.regular.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (duties.isNotEmpty)
                Text(
                  duties,
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

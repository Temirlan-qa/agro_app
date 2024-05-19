import 'package:flutter/material.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';

class ProductCriteria extends StatelessWidget {
  final List<String> criteria;

  const ProductCriteria({super.key, required this.criteria});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.format_list_bulleted_sharp,
          color: context.theme.primary,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).criteria,
                style: context.theme.textStyles.regular.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (criteria.isNotEmpty)
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: criteria.length,
                  itemBuilder: (context, index) {
                    return Text(
                      criteria[index],
                      style: context.theme.textStyles.tips.copyWith(
                        color: context.theme.grey,
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}

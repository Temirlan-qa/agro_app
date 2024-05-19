import 'package:flutter/material.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';

class CreateProductField extends StatelessWidget {
  final String title;
  final String? description;
  final VoidCallback onTap;
  const CreateProductField({
    super.key,
    required this.title,
    required this.onTap,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          border: Border.all(color: context.theme.semiLightGrey),
          borderRadius: BorderRadius.circular(10),
          color: context.theme.white,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.theme.textStyles.regular.copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description ?? S.of(context).notChosen,
                  style: context.theme.textStyles.regular.copyWith(
                    color: context.theme.grey,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.keyboard_arrow_right,
              color: context.theme.grey,
            ),
          ],
        ),
      ),
    );
  }
}

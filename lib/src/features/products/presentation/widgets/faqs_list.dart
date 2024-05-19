import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/products/domain/entities/faq_entity.dart';
import 'package:flutter/material.dart';

class FaqsList extends StatelessWidget {
  final List<FaqEntity> faqs;
  const FaqsList({super.key, required this.faqs});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.scaffoldBackground,
      child: Column(
        children: [
          if (faqs.isEmpty) ...[
            const SizedBox(height: 100),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  S.of(context).noFaqsFound,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ] else
            ListView.separated(
              itemCount: faqs.length,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final faq = faqs[index];
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: context.theme.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: context.theme.lightGrey,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        faq.question,
                        style: context.theme.textStyles.h5,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        faq.answer,
                        style: context.theme.textStyles.regular.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 13),
            ),
        ],
      ),
    );
  }
}

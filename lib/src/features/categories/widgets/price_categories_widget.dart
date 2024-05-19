import 'dart:math';

import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

List<String> _ageCategoriesList = [
  'от 100 000тг',
  'от 150 000тг',
  'от 200 000тг',
  'от 250 000тг',
];

class PriceCategoriesWidget extends StatelessWidget {
  const PriceCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _ageCategoriesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 6 / 2.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.white,
                border: Border.all(
                  color: context.theme.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    _ageCategoriesList[index],
                    style: TextStyles.subtitles,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Постов ${Random().nextInt(99)}',
                    style: TextStyle(color: context.theme.blue),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
          );
        });
  }
}

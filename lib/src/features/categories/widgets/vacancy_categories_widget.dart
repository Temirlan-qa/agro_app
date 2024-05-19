import 'dart:math';

import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

List<String> _vacancyCategories = [
  'Пост от студентов',
  'Пост от людей с ограниченными возможностями',
  'Пост от физического лица',
  'Пост от юридического лица'
];

class VacancyCategoriesWidget extends StatelessWidget {
  const VacancyCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _vacancyCategories.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            tileColor: context.theme.white,
            title: Text(
              _vacancyCategories[index],
              style: TextStyles.subtitles,
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              'Постов ${Random().nextInt(99)}',
              style: TextStyle(color: context.theme.blue),
              textAlign: TextAlign.start,
            ),
          ),
        );
      },
    );
  }
}

import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

List<String> _servicesList = [
  'Экскурсии и гиды',
  'Аренда аудио-гидов',
  'Музеи и выставки',
  'Мастер-классы',
  'Продажа сувениров',
  'Проведение мероприятий',
  'Искусство и ремесла',
  'Аренда помещений',
  'Онлайн-ресурсы'
];

class JobCategoriesWidget extends StatelessWidget {
  const JobCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _servicesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 7.0,
          crossAxisSpacing: 7.0,
          childAspectRatio: 7 / 3.9,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: context.theme.white,
                border: Border.all(
                  color: context.theme.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ac_unit_rounded,
                    color: context.theme.blue,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    _servicesList[index],
                    style: TextStyle(color: context.theme.blue),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        });
  }
}

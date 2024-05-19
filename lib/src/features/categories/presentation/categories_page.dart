import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../core/widgets/custom_search_app_bar.dart';
import '../widgets/job_categories_widget.dart';
import '../widgets/price_categories_widget.dart';
import '../widgets/vacancy_categories_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primary,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          children: [
            CustomSearchAppBar(
              controller: TextEditingController(),
              onChanged: (value) {},
            ),
            const SizedBox(height: 4),
            Text(
              S.current.postSelection,
              style: TextStyles.h1,
            ),
            const SizedBox(height: 16),
            const JobCategoriesWidget(),
            Text(
              S.current.priceCategories,
              style: TextStyles.h1,
            ),
            const SizedBox(height: 8),
            const PriceCategoriesWidget(),
            const SizedBox(height: 8),
            const VacancyCategoriesWidget()
          ],
        ),
      ),
    );
  }
}

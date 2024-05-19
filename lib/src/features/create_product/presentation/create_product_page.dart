import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/create_product/presentation/create_product_page_arguments.dart';
import 'package:agro_app/src/features/create_product/presentation/widgets/create_product_fields.dart';

import 'notifier/create_product_notifier.dart';
import 'widgets/create_product_app_bar.dart';

class CreateProductPage extends ConsumerStatefulWidget {
  final CreateProductPageArgument? arguments;
  const CreateProductPage({super.key, this.arguments});

  @override
  ConsumerState<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends ConsumerState<CreateProductPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(createProductNotifierProvider.notifier)
          .init(context, arguments: widget.arguments);
    });
  }

  @override
  Widget build(BuildContext context) {
    final initProduct = ref.watch(
      createProductNotifierProvider.select((value) => value.initProduct),
    );
    final isUpdatingProduct = initProduct.id.isNotEmpty;
    return Scaffold(
      backgroundColor: context.theme.primary,
      body: SafeArea(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Column(
            children: [
              CreateProductAppBar(
                isUpdatingProduct: isUpdatingProduct,
              ),
              const Expanded(
                child: CreateProductFields(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

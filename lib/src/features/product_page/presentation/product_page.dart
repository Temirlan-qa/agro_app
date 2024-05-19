import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/product_page/presentation/notifier/product_page_notifier.dart';
import 'package:agro_app/src/features/product_page/presentation/widgets/product_app_bar.dart';
import 'package:agro_app/src/features/product_page/presentation/widgets/product_details.dart';
import 'package:agro_app/src/features/product_page/product_page_arguments.dart';

class ProductPage extends ConsumerStatefulWidget {
  final ProductPageArgument productArguments;
  const ProductPage({super.key, required this.productArguments});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  late final ProductPageNotifier _notifier;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _notifier = ref.read(productPageNotifierProvider.notifier);
      _notifier.init(
        context: context,
        productArguments: widget.productArguments,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primary,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: context.theme.lightGrey,
          body: const Column(
            children: [
              ProductAppBar(),
              Expanded(child: ProductDetails()),
              // ProductBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

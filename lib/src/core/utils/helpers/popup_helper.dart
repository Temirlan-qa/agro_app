import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_button.dart';
import 'package:agro_app/src/features/create_product/presentation/create_product_page_arguments.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopupHelper {
  Future<void> showPopup(
    BuildContext context, {
    String? title,
    String? description,
    required String btnOkText,
    required VoidCallback onPressOk,
    Color? btnOkColor,
    Color? btnCancelColor,
    String? btnOkPrefixIcon,
    String? btnCancelText,
    VoidCallback? onPressCancel,
    bool barrierDismissible = true,
    bool isBtnCancel = true,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (title != null && title.isNotEmpty) ...[
                        Text(
                          title,
                          style: context.theme.textStyles.h3.copyWith(
                            color: isBtnCancel
                                ? context.theme.primary
                                : context.theme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10.0),
                      ],
                      if (description != null) ...[
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 22 / 16,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                      ],
                      SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                          buttonColor: btnOkColor ?? context.theme.red,
                          onTap: onPressOk,
                          title: btnOkText,
                          icon: btnOkPrefixIcon,
                        ),
                      ),
                      if (onPressCancel != null) ...[
                        const SizedBox(height: 10.0),
                        SizedBox(
                          width: double.infinity,
                          child: CustomButton(
                            buttonColor:
                                btnCancelColor ?? context.theme.secondary,
                            onTap: onPressCancel,
                            title: btnCancelText ?? S.of(context).cancel,
                            textColor: Colors.black,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> authRequiredPopup(BuildContext context) async {
    await showPopup(
      context,
      title: S.of(context).authRequiredPopupTitle,
      description: S.of(context).authRequiredPopupDescription,
      btnOkText: S.of(context).authRequiredPopupButtonTitle,
      onPressOk: () {
        Navigator.pop(context);
        context.pushNamed(RouteNames.signIn);
      },
      onPressCancel: () => Navigator.pop(context),
      btnOkColor: context.theme.primary,
    );
  }

  Future<void> productListEmptyPopup(BuildContext context) async {
    await showPopup(
      context,
      title: S.of(context).productListIsEmpty,
      description: S.of(context).pleaseTryAgainLater,
      btnOkText: S.of(context).ok,
      onPressOk: () {
        Navigator.pop(context);
      },
      onPressCancel: () => Navigator.pop(context),
      btnOkColor: context.theme.primary,
    );
  }

  Future<void> createProductPopup(BuildContext context) async {
    await showPopup(
      context,
      title: S.current.congratulations,
      description: S.current.productSuccessfullyCreated,
      btnOkText: S.of(context).ok,
      onPressOk: () {
        Navigator.pop(context);
      },
      btnOkColor: context.theme.primary,
    );
  }

  Future<void> editedProductPopup(BuildContext context) async {
    await showPopup(
      context,
      title: S.current.congratulations,
      description: S.current.productSuccessfullyEdited,
      btnOkText: S.of(context).ok,
      onPressOk: () {
        Navigator.pop(context);
      },
      btnOkColor: context.theme.primary,
    );
  }

  Future<void> fieldIsEmpty(BuildContext context) async {
    await showPopup(
      context,
      isBtnCancel: false,
      title: S.of(context).requiredFields,
      description: S.of(context).pleaseFillInRequiredFieldsOrCheckValidation,
      btnOkText: S.of(context).ok,
      onPressOk: () {
        Navigator.pop(context);
      },
      btnOkColor: context.theme.secondary,
    );
  }

  Future<void> loaderPopup(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
            ),
            padding: const EdgeInsets.all(35),
            child: CircularProgressIndicator(
              color: context.theme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> productActions(BuildContext context) async {
    await showPopup(
      context,
      btnOkText: S.of(context).complainToThisPost,
      btnOkColor: context.theme.primary,
      onPressOk: () {},
      btnCancelText: S.of(context).followThisSeller,
      btnCancelColor: context.theme.secondary,
      onPressCancel: () {},
    );
  }

  Future<void> userProductActions(
    BuildContext context, {
    required ProductEntity product,
    required ValueSetter<String> onDelete,
  }) async {
    await showPopup(
      context,
      btnOkText: S.of(context).editProduct,
      btnOkColor: context.theme.primary,
      onPressOk: () {
        Navigator.pop(context);
        context.pushNamed(
          RouteNames.createOrUpdateProduct,
          extra: CreateProductPageArgument(
            product: product,
          ),
        );
      },
      btnCancelText: S.of(context).deleteAd,
      btnCancelColor: context.theme.secondary,
      onPressCancel: () {
        onDelete(product.id);
      },
    );
  }
}

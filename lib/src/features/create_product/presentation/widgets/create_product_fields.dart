import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/formatter_helper.dart';
import 'package:agro_app/src/core/widgets/add_image_widget.dart';
import 'package:agro_app/src/core/widgets/custom_button.dart';
import 'package:agro_app/src/core/widgets/custom_intl_phone_field.dart';
import 'package:agro_app/src/core/widgets/custom_text_field.dart';
import 'package:agro_app/src/core/widgets/drop_down_widget.dart';
import 'package:agro_app/src/features/create_product/presentation/notifier/create_product_notifier.dart';
import 'package:agro_app/src/features/create_product/presentation/widgets/create_product_fields_enum.dart';

import '../../../../core/utils/formatters/year_of_harvest_formatter.dart';
import '../../../../core/widgets/custom_field_group.dart';
import '../../../countries/domain/entities/countries_entity.dart';
import '../../../countries/presentation/notifier/countries_notifier.dart';

class CreateProductFields extends ConsumerStatefulWidget {
  const CreateProductFields({super.key});

  @override
  ConsumerState<CreateProductFields> createState() =>
      _CreateProductFieldsState();
}

class _CreateProductFieldsState extends ConsumerState<CreateProductFields> {
  late final CreateProductNotifier _notifier;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _notifier = ref.read(createProductNotifierProvider.notifier);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<CountriesEntity> countriesList = ref.watch(
        countryNotifierProvider.select((value) => value.countriesList ?? []));
    final imageUrls = ref.watch(
      createProductNotifierProvider.select((value) => value.imageUrls),
    );
    final imageUploading = ref.watch(
      createProductNotifierProvider.select(
        (value) => value.fileUploading,
      ),
    );
    final product = ref.watch(
      createProductNotifierProvider.select((value) => value.product),
    );

    final errorFields = ref.watch(
      createProductNotifierProvider.select((value) => value.errorFields),
    );

    final productSubCategories = ref.watch(createProductNotifierProvider
        .select((value) => value.productSubCategories));

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: context.theme.scaffoldBackground,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: AddImageWidget(
                  imageUrls: imageUrls,
                  isUploading: imageUploading,
                  onTap: () => _notifier.takePicture(context),
                  onChangeImageTap: (index) =>
                      _notifier.takePicture(context, index: index),
                  onDeleteImageTap: _notifier.deletePicture,
                  addImage: () => _notifier.takePicture(context),
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.of(context).productTitle,
                requiredField: true,
                child: CustomTextField(
                  errorText: S.current.pleaseFillInTheField,
                  hasError: errorFields.contains(
                    CreateProductErrorFields.name,
                  ),
                  controller: _notifier.nameController,
                  hintText: S.of(context).productTitle,
                  onChanged: _notifier.setName,
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.of(context).productDescription,
                requiredField: true,
                child: CustomTextField(
                  errorText: S.current.pleaseFillInTheField,
                  hasError: errorFields
                      .contains(CreateProductErrorFields.description),
                  controller: _notifier.descriptionController,
                  multiline: true,
                  hintText: S.of(context).productDescription,
                  onChanged: _notifier.setDescription,
                  maxLines: 10,
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.price,
                requiredField: true,
                child: CustomTextField(
                  controller: _notifier.priceController,
                  hintText: S.current.price,
                  errorText: S.current.pleaseFillInTheField,
                  hasError:
                      errorFields.contains(CreateProductErrorFields.price),
                  keyboardType: TextInputType.number,
                  onChanged: _notifier.setPrice,
                  inputFormatters: [FormatterHelper.digitsHelperFormatter],
                  suffix: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '₸',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.of(context).dealType,
                child: DropDownWidget(
                  value: getProductTypeTitle(product.type),
                  onChanged: _notifier.setProductType,
                  items: ProductType.values
                      .map((type) => getProductTypeTitle(type))
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.category,
                child: DropDownWidget(
                  value: getCategoryTitle(
                    product.category ?? Category.none,
                  ),
                  onChanged: _notifier.setCategory,
                  items: Category.values
                      .where((element) => element != Category.faq)
                      .map((type) => getCategoryTitle(type))
                      .toList(),
                ),
              ),
              if (product.category == Category.service) ...[
                const SizedBox(height: 20),
                CustomFieldGroup(
                  label: S.current.serviceType,
                  child: DropDownWidget(
                    value: getAdditionalServiceTitle(
                      product.additionalService ?? AdditionalService.none,
                    ),
                    onChanged: _notifier.setAdditionalService,
                    items: AdditionalService.values
                        .map((type) => getAdditionalServiceTitle(type))
                        .toList(),
                  ),
                ),
              ] else if (product.category == Category.product) ...[
                const SizedBox(height: 20),
                CustomFieldGroup(
                  label: S.of(context).productCategory,
                  child: DropDownWidget(
                    value: getProductCategoryTitle(
                      product.productCategory ?? ProductCategory.none,
                    ),
                    onChanged: _notifier.setProductCategory,
                    items: ProductCategory.values
                        .map((type) => getProductCategoryTitle(type))
                        .toList(),
                  ),
                ),
              ] else if (product.category == Category.job) ...[
                const SizedBox(height: 20),
                CustomFieldGroup(
                  label: S.of(context).specialization,
                  child: DropDownWidget(
                    value: getSpecializationTitle(
                        product.specialization ?? Specialization.none),
                    onChanged: _notifier.setSpecialization,
                    items: Specialization.values
                        .map((type) => getSpecializationTitle(type))
                        .toList(),
                  ),
                ),
              ],
              if (productSubCategories.isNotEmpty) ...[
                const SizedBox(height: 20),
                CustomFieldGroup(
                  label: S.of(context).productSubcategory,
                  child: DropDownWidget(
                    value: getProductSubCategoryTitle(
                      product.productSubCategory ?? ProductSubCategory.none,
                    ),
                    onChanged: _notifier.setProductSubCategory,
                    items: productSubCategories
                        .map((e) => getProductSubCategoryTitle(e))
                        .toList(),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.storageType,
                child: CustomTextField(
                  controller: _notifier.storageTypeController,
                  hintText: S.current.notSpecified,
                  onChanged: _notifier.setStorageType,
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.origin,
                child: CustomTextField(
                  controller: _notifier.originController,
                  hintText: S.current.notSpecified,
                  onChanged: _notifier.setOrigin,
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.yearOfHarvest,
                child: CustomTextField(
                  inputFormatters: yearOfHarvestFormatter,
                  keyboardType: TextInputType.number,
                  controller: _notifier.yearOfHarvestController,
                  onChanged: _notifier.setYearOfHarvest,
                  hintText: S.current.notSpecified,
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.grade,
                child: CustomTextField(
                  controller: _notifier.gradeController,
                  hintText: S.current.notSpecified,
                  onChanged: (val) {},
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.humidity,
                child: CustomTextField(
                  controller: _notifier.humidityController,
                  hintText: S.current.notSpecified,
                  onChanged: (val) {},
                ),
              ),
              if (countriesList.isNotEmpty && product.country != null) ...[
                const SizedBox(height: 20),
                CustomFieldGroup(
                  label: S.current.country,
                  requiredField: false,
                  child: DropDownWidget(
                    value: product.country!.isEmpty
                        ? countriesList[0].name
                        : product.country,
                    items: countriesList.map((e) => e.name).toList(),
                    onChanged: _notifier.setCountry,
                  ),
                ),
              ],
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.location,
                child: CustomTextField(
                  controller: _notifier.locationController,
                  hintText: S.current.notSpecified,
                  onChanged: _notifier.setLocation,
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.phoneWhatsApp,
                child: CustomIntlPhoneField(
                  controller: _notifier.phoneWhatsappController,
                  onCountryChanged: (country) {
                    _notifier.setPhoneCountry(country);
                  },
                  onChanged: _notifier.setWhatsappPhone,
                  hasError: errorFields
                      .contains(CreateProductErrorFields.phoneWhatsapp),
                ),
              ),
              const SizedBox(height: 20),
              CustomFieldGroup(
                label: S.current.telegramLink,
                child: CustomTextField(
                  controller: _notifier.telegramLinkController,
                  hintText: S.current.notSpecified,
                  onChanged: _notifier.setLinkTelegram,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: _notifier.saveProduct,
                buttonColor: context.theme.secondary,
                title: S.of(context).save,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

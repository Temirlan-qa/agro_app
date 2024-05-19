import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/core/utils/helpers/validators_helper.dart';
import 'package:agro_app/src/core/utils/services/image_picker_service.dart';
import 'package:agro_app/src/features/create_product/presentation/create_product_page_arguments.dart';
import 'package:agro_app/src/features/create_product/presentation/widgets/create_product_fields_enum.dart';
import 'package:agro_app/src/features/main_page/presentation/notifier/main_page_notifier.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/create_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_sub_category_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/update_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/usecases/create_product_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_product_sub_category_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/update_product_use_case.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';
import 'package:agro_app/src/features/sign_up/presentation/widgets/list_of_country_codes.dart';
import 'package:agro_app/src/features/user_products/presentation/notifier/user_products_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/countries.dart';

import 'create_product_state.dart';

final createProductNotifierProvider = StateNotifierProvider.autoDispose<
    CreateProductNotifier, CreateProductState>(
  (ref) {
    final createProductUseCase = getIt<CreateProductUseCase>();
    final updateProductUseCase = getIt<UpdateProductUseCase>();
    final getProductSubCategoryUseCase = getIt<GetProductSubCategoryUseCase>();
    return CreateProductNotifier(
      ref,
      createProductUseCase,
      updateProductUseCase,
      getProductSubCategoryUseCase,
    );
  },
);

class CreateProductNotifier extends StateNotifier<CreateProductState> {
  final Ref _ref;
  late final BuildContext _context;
  final CreateProductUseCase _createProductUseCase;
  final UpdateProductUseCase _updateProductUseCase;
  final GetProductSubCategoryUseCase _getProductSubCategoryUseCase;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _videoLinkController = TextEditingController();
  final TextEditingController _storageTypeController = TextEditingController();
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _phoneWhatsappController =
      TextEditingController();
  final TextEditingController _telegramLinkController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _humidityController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _yearOfHarvestController =
      TextEditingController();
  String? _productCountry;

  String? get productCountry => _productCountry;
  TextEditingController get nameController => _nameController;
  TextEditingController get priceController => _priceController;
  TextEditingController get addressController => _addressController;
  TextEditingController get descriptionController => _descriptionController;
  TextEditingController get videoLinkController => _videoLinkController;
  TextEditingController get storageTypeController => _storageTypeController;
  TextEditingController get originController => _originController;
  TextEditingController get phoneWhatsappController => _phoneWhatsappController;
  TextEditingController get telegramLinkController => _telegramLinkController;
  TextEditingController get gradeController => _gradeController;
  TextEditingController get humidityController => _humidityController;
  TextEditingController get locationController => _locationController;
  TextEditingController get yearOfHarvestController => _yearOfHarvestController;

  Country _phoneCountry = listOfCountyCodes.first;

  CreateProductNotifier(
    this._ref,
    this._createProductUseCase,
    this._updateProductUseCase,
    this._getProductSubCategoryUseCase,
  ) : super(
          CreateProductState(
            product: ProductEntity.empty(),
            initProduct: ProductEntity.empty(),
          ),
        );

  void init(BuildContext context, {CreateProductPageArgument? arguments}) {
    _context = context;

    if (arguments != null) {
      _setProductToUpdate(updateProduct: arguments.product);
    }
  }

  void setName(String value) {
    _updateTextController(value, _nameController);
    _validateFields();
    final trimmedText = value.trim();
    state = state.copyWith(product: state.product.copyWith(title: trimmedText));
  }

  void setCountry(String? value) {
    state = state.copyWith(product: state.product.copyWith(country: value));
  }

  void setDescription(String value) {
    _updateTextController(value, _descriptionController);
    _validateFields();
    final trimmedText = value.trim();
    state = state.copyWith(
        product: state.product.copyWith(description: trimmedText));
  }

  void setPrice(String value) {
    _updateTextController(value, _priceController);
    _validateFields();
    final trimmedText = value.trim();
    state = state.copyWith(
        product: state.product.copyWith(price: double.parse(trimmedText)));
  }

  void setProductType(String? value) {
    ProductType productType = ProductType.none;
    if (value != null) {
      productType = value.getProductType();
    }
    state = state.copyWith(
      product: state.product.copyWith(type: productType),
    );
  }

  void setAdditionalService(String? value) {
    AdditionalService additionalService = AdditionalService.none;
    if (value != null) {
      additionalService = value.getAdditionalService();
    }
    state = state.copyWith(
      product: state.product.copyWith(additionalService: additionalService),
    );
  }

  void setProductCategory(String? value) {
    ProductCategory? productCategory;
    if (value != null) {
      productCategory = value.getProductCategory();
    }
    state = state.copyWith(
      product: state.product.copyWith(productCategory: productCategory),
    );

    _getProductSubCategory(productCategory);
  }

  void setSpecialization(String? value) {
    Specialization? specialization;
    if (value != null) {
      specialization = value.getSpecialization();
    }
    state = state.copyWith(
      product: state.product.copyWith(specialization: specialization),
    );
  }

  Future<void> _getProductSubCategory(ProductCategory? productCategory) async {
    if (productCategory == null) {
      return;
    }
    final result = await _getProductSubCategoryUseCase(
      GetProductSubCategoryRequestModel(
        productCategory: productCategory,
      ),
    );
    if (result.isSuccessful) {
      state = state.copyWith(
        productSubCategories: [
          ProductSubCategory.none,
          ...result.data!.productSubCategories
        ],
      );
    }
  }

  void setProductSubCategory(String? value) {
    ProductSubCategory? productSubCategory;
    if (value != null) {
      productSubCategory = value.getProductSubCategory();
    }
    state = state.copyWith(
      product: state.product.copyWith(productSubCategory: productSubCategory),
    );
  }

  void setCategory(String? value) {
    Category category = Category.none;
    if (value != null) {
      category = value.getCategory();
    }
    state = state.copyWith(
      product: state.product.copyWith(category: category),
    );
  }

  void setOrigin(String value) {
    _updateTextController(value, _originController);

    final trimmedText = value.trim();
    state =
        state.copyWith(product: state.product.copyWith(origin: trimmedText));
  }

  void setStorageType(String value) {
    _updateTextController(value, _storageTypeController);

    final trimmedText = value.trim();
    state = state.copyWith(
        product: state.product.copyWith(storageType: trimmedText));
  }

  void setWhatsappPhone(String value) {
    final trimmedText = value.trim();
    state = state.copyWith(
        product: state.product.copyWith(phoneWhatsapp: trimmedText));
    _validateFields();
  }

  void setPhoneCountry(Country value) {
    _phoneCountry = value;
  }

  void setLinkTelegram(String value) {
    _updateTextController(value, _telegramLinkController);
    final trimmedText = value.trim();
    state = state.copyWith(
        product: state.product.copyWith(linkTelegram: trimmedText));
  }

  void setLocation(String value) {
    _updateTextController(value, _locationController);
    final trimmedText = value.trim();
    state =
        state.copyWith(product: state.product.copyWith(location: trimmedText));
  }

  void setYearOfHarvest(String value) {
    _updateTextController(value, yearOfHarvestController);
    final trimmedText = value.trim();
    state = state.copyWith(
      product: state.product.copyWith(year: int.parse(trimmedText)),
    );
  }

  void _updateTextController(String text, TextEditingController controller) {
    controller.text = text;
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );
  }

  // Future<void> takePhoto(BuildContext context) async {
  //   final photoPath =
  //       await _ref.read(imagePickService.notifier).takePhoto(context);
  //   if (photoPath.isNotEmpty) {
  //     await uploadImage(photoPath);
  //   }
  // }

  Future<void> takePicture(
    BuildContext context, {
    /// if -1 then add new image
    int index = -1,
  }) async {
    final imagePath =
        await _ref.read(imagePickService.notifier).takePicture(context);
    if (imagePath.isNotEmpty) {
      await uploadImage(imagePath, index: index);
    }
  }

  Future<void> uploadImage(
    String photoPath, {
    required int index,
  }) async {
    state = state.copyWith(fileUploading: true);
    try {
      // TODO: add upload of img
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(fileUploading: false);
    }
  }

  void deletePicture(int index) =>
      state = state.copyWith(imageUrls: [...state.imageUrls]..removeAt(index));

  void deleteAllPictures() => state = state.copyWith(imageUrls: []);

  Future<void> saveProduct() async {
    state = state.copyWith(isSaveBtnPressed: true);
    final isAllFieldValidated = _validateFields();
    if (!isAllFieldValidated) {
      return PopupHelper().fieldIsEmpty(_context);
    }
    await _createOrUpdateProduct();
    _context.goNamed(RouteNames.advertisingPage);
  }

  bool _validateFields() {
    if (!state.isSaveBtnPressed) {
      return false;
    }
    final fields = <CreateProductErrorFields>[];
    final validations = [
      nameController.text.trim().isEmpty,
      descriptionController.text.trim().isEmpty,
      priceController.text.trim().isEmpty,
      _validatePhone(),
    ];

    final errorFields = [
      CreateProductErrorFields.name,
      CreateProductErrorFields.description,
      CreateProductErrorFields.price,
      CreateProductErrorFields.phoneWhatsapp,
    ];

    for (var i = 0; i < validations.length; i++) {
      if (validations[i]) {
        fields.add(errorFields[i]);
      }
    }
    state = state.copyWith(errorFields: fields);
    if (state.product.phoneWhatsapp.isEmpty) {
      _phoneWhatsappController.text = '';
    }
    return fields.isEmpty;
  }

  bool _validatePhone() {
    return state.product.phoneWhatsapp.isNotEmpty
        ? !ValidatorsHelper.validatePhone(
            value: state.product.phoneWhatsapp,
            minLength: _phoneCountry.minLength,
            maxLength: _phoneCountry.maxLength,
          )
        : false;
  }

  String get _fullPhoneNumber => state.product.phoneWhatsapp.isNotEmpty
      ? '+${_phoneCountry.dialCode}${state.product.phoneWhatsapp}'
      : '';
  String get _storageType => state.product.storageType;
  String get _addressName => state.product.location;

  Future<void> _createOrUpdateProduct() async {
    PopupHelper().loaderPopup(_context);
    final isProductUpdating = state.initProduct.id.isNotEmpty;

    final product = ProductEntity(
      country: _productCountry ?? '',
      photoLinks: state.imageUrls,
      created: '',
      title: _nameController.text.trim(),
      description: _descriptionController.text.trim(),
      price: double.tryParse(_priceController.text.trim()) ?? 0,
      year: state.product.year,
      additionalService: state.product.category == Category.service
          ? state.product.additionalService
          : null,
      type: state.product.type,
      storageType: _storageType,
      location: _addressName,
      id: state.product.id,
      category: state.product.category,
      origin: _originController.text.trim(),
      grade: _gradeController.text.trim(),
      humidity: _humidityController.text.trim(),
      phoneWhatsapp: _fullPhoneNumber,
      linkTelegram: _telegramLinkController.text.trim(),
      productCategory: state.product.category == Category.product
          ? state.product.productCategory
          : null,
      productSubCategory: state.product.category == Category.product
          ? state.product.productSubCategory
          : null,
      specialization: state.product.category == Category.job
          ? state.product.specialization
          : null,
    );
    deleteAllPictures();
    state = state.copyWith(product: product);
    if (isProductUpdating) {
      await _updateProduct(product);
      return;
    }
    final result =
        await _createProductUseCase(_getCreateProductRequestModel(product));
    //For loader popup
    Navigator.of(_context).pop();
    if (result.isSuccessful) {
      _ref.read(productsPageNotifierProvider.notifier).refreshProducts();
      _ref.read(userProductsPageNotifierProvider.notifier).refreshProducts();
      await PopupHelper().createProductPopup(_context);
      _context.pop();
      _ref.read(mainPageNotifierProvider.notifier).changePage(0);
      _clearAllTextControllers();
      _clearDropDownValues();
    }
  }

  Future<void> _updateProduct(ProductEntity product) async {
    final result =
        await _updateProductUseCase(_getUpdateProductRequestModel(product));
    //For loader popup
    Navigator.of(_context).pop();
    if (result.isSuccessful) {
      _ref.read(productsPageNotifierProvider.notifier).refreshProducts();
      await PopupHelper().editedProductPopup(_context);
      _context.pop();
      _ref.read(mainPageNotifierProvider.notifier).changePage(0);
      _clearAllTextControllers();
      _clearDropDownValues();
    }
  }

  UpdateProductRequestModel _getUpdateProductRequestModel(
    ProductEntity product,
  ) =>
      UpdateProductRequestModel(
        id: product.id,
        title: product.title,
        description: product.description,
        type: product.type,
        category: product.category,
        additionalService: product.additionalService,
        photoLinks: product.photoLinks,
        storageType: product.storageType,
        origin: product.origin,
        year: product.year,
        grade: product.grade,
        humidity: product.humidity,
        price: product.price,
        location: product.location,
        phoneWhatsapp: product.phoneWhatsapp,
        linkTelegram: product.linkTelegram,
        productCategory: product.productCategory,
        productSubCategory: product.productSubCategory,
        specialization: product.specialization,
      );

  CreateProductRequestModel _getCreateProductRequestModel(
    ProductEntity product,
  ) =>
      CreateProductRequestModel(
        title: product.title,
        description: product.description,
        type: product.type,
        category: product.category,
        additionalService: product.additionalService,
        photoLinks: product.photoLinks,
        storageType: product.storageType,
        origin: product.origin,
        year: product.year,
        grade: product.grade,
        humidity: product.humidity,
        price: product.price,
        location: product.location,
        phoneWhatsapp: product.phoneWhatsapp,
        linkTelegram: product.linkTelegram,
        productCategory: product.productCategory,
        productSubCategory: product.productSubCategory,
        specialization: product.specialization,
      );

  void _setProductToUpdate({
    ProductEntity? updateProduct,
  }) {
    if (updateProduct == null) {
      return;
    }
    _nameController.text = updateProduct.title;
    _descriptionController.text = updateProduct.description;
    _priceController.text = updateProduct.price.toString();
    _addressController.text = updateProduct.location;
    _storageTypeController.text = updateProduct.storageType;
    _originController.text = updateProduct.origin;
    _gradeController.text = updateProduct.grade;
    _humidityController.text = updateProduct.humidity;
    _locationController.text = updateProduct.location;
    _phoneWhatsappController.text = updateProduct.phoneWhatsapp;
    _telegramLinkController.text = updateProduct.linkTelegram;
    _yearOfHarvestController.text = updateProduct.year.toString();

    state = state.copyWith(
      product: updateProduct,
      initProduct: updateProduct,
      imageUrls: updateProduct.photoLinks,
    );
  }

  void _clearDropDownValues() {
    state = state.copyWith(
      product: state.product.copyWith(
        type: ProductType.none,
        location: '',
        storageType: '',
      ),
    );
  }

  void _clearAllTextControllers() {
    _nameController.clear();
    _descriptionController.clear();
    _priceController.clear();
    _addressController.clear();
    _phoneWhatsappController.clear();
    _storageTypeController.clear();
    _originController.clear();
    _gradeController.clear();
    _humidityController.clear();
    _locationController.clear();
    _telegramLinkController.clear();
    yearOfHarvestController.clear();
    _unfocus();
  }

  void _unfocus() => FocusScope.of(_context).unfocus();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _addressController.dispose();
    _phoneWhatsappController.dispose();
    _storageTypeController.dispose();
    _originController.dispose();
    _gradeController.dispose();
    _humidityController.dispose();
    _locationController.dispose();
    _telegramLinkController.dispose();
    yearOfHarvestController.dispose();
    super.dispose();
  }
}

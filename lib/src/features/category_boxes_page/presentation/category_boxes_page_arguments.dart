import 'package:agro_app/src/core/enum/product_enums.dart';

class CategoryBoxesPageArguments {
  Category? category;
  Specialization? specialization;
  ProductCategory? productCategory;
  ProductSubCategory? productSubCategory;
  AdditionalService? additionalService;

  CategoryBoxesPageArguments({
    this.category,
    this.specialization,
    this.productCategory,
    this.productSubCategory,
    this.additionalService,
  });
}

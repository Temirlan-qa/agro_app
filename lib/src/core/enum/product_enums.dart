// ignore_for_file: constant_identifier_names

import 'package:agro_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum ProductType {
  @JsonValue('BUY')
  buy('Buy'),
  @JsonValue('SELL')
  sell('Sell'),
  @JsonValue('NONE')
  none('None');

  final String title;
  const ProductType(this.title);
}

extension ExtProductType on String {
  ProductType getProductType() {
    if (this == S.current.buy) {
      return ProductType.buy;
    } else if (this == S.current.sell) {
      return ProductType.sell;
    } else {
      return ProductType.none;
    }
  }
}

String getProductTypeTitle(ProductType productType) {
  switch (productType) {
    case ProductType.buy:
      return S.current.buy;
    case ProductType.sell:
      return S.current.sell;
    case ProductType.none:
      return S.current.notChosen;
  }
}

enum Category {
  @JsonValue('PRODUCT')
  product,
  @JsonValue('JOB')
  job,
  @JsonValue('SERVICE')
  service,
  faq,
  none;
}

extension ExtensionCategory on Category {
  IconData get getIcon {
    switch (this) {
      case Category.product:
        return Icons.shopping_bag_outlined;
      case Category.job:
        return Icons.work_outline_rounded;
      case Category.service:
        return Icons.build_outlined;
      case Category.faq:
        return Icons.question_answer_outlined;
      case Category.none:
        return Icons.error_rounded;
    }
  }
}

extension ExtCategory on String {
  Category getCategory() {
    if (this == S.current.product) {
      return Category.product;
    } else if (this == S.current.job) {
      return Category.job;
    } else if (this == S.current.additionalServices) {
      return Category.service;
    } else if (this == S.current.faq) {
      return Category.faq;
    } else {
      return Category.none;
    }
  }
}

String getCategoryTitle(Category category) {
  switch (category) {
    case Category.product:
      return S.current.product;
    case Category.job:
      return S.current.job;
    case Category.service:
      return S.current.additionalServices;
    case Category.faq:
      return S.current.faq;
    case Category.none:
      return S.current.notChosen;
  }
}

enum AdditionalService {
  @JsonValue('LABORATORY')
  laboratory,
  @JsonValue('LOGISTICS_COMPANY')
  logisticsCompany,
  @JsonValue('AGRICULTURAL_EQUIPMENT_SALES')
  agriculturalEquipmentSales,
  @JsonValue('CHEMICALS_SALES')
  chemicalsSales,
  @JsonValue('GPS_EQUIPMENT_SALES')
  gpsEquipmentSales,
  @JsonValue('LAND_SALES')
  landSales,
  @JsonValue('SUBSIDY_ASSISTANCE')
  subsidyAssistance,
  @JsonValue('SEED_SALES')
  seedSales,
  @JsonValue('CHEMICAL_SPRAYING_SERVICES')
  chemicalSprayingServices,
  @JsonValue('PARTS_SALES')
  partsSales,
  @JsonValue('ELEVATORS')
  elevators,
  @JsonValue('FACTORIES')
  factories,
  none;
}

extension ExtProductServiceType on String {
  AdditionalService getAdditionalService() {
    if (this == S.current.laboratory) {
      return AdditionalService.laboratory;
    } else if (this == S.current.logistics) {
      return AdditionalService.logisticsCompany;
    } else if (this == S.current.agriculturalEquipmentSales) {
      return AdditionalService.agriculturalEquipmentSales;
    } else if (this == S.current.chemicalsSales) {
      return AdditionalService.chemicalsSales;
    } else if (this == S.current.gpsEquipmentSales) {
      return AdditionalService.gpsEquipmentSales;
    } else if (this == S.current.landSales) {
      return AdditionalService.landSales;
    } else if (this == S.current.subsidyAssistance) {
      return AdditionalService.subsidyAssistance;
    } else if (this == S.current.seedSales) {
      return AdditionalService.seedSales;
    } else if (this == S.current.chemicalSprayingServices) {
      return AdditionalService.chemicalSprayingServices;
    } else if (this == S.current.partsSales) {
      return AdditionalService.partsSales;
    } else if (this == S.current.elevators) {
      return AdditionalService.elevators;
    } else if (this == S.current.factories) {
      return AdditionalService.factories;
    } else {
      return AdditionalService.none;
    }
  }
}

String getAdditionalServiceTitle(AdditionalService type) {
  switch (type) {
    case AdditionalService.laboratory:
      return S.current.laboratory;
    case AdditionalService.logisticsCompany:
      return S.current.logistics;
    case AdditionalService.agriculturalEquipmentSales:
      return S.current.agriculturalEquipmentSales;
    case AdditionalService.chemicalsSales:
      return S.current.chemicalsSales;
    case AdditionalService.gpsEquipmentSales:
      return S.current.gpsEquipmentSales;
    case AdditionalService.landSales:
      return S.current.landSales;
    case AdditionalService.subsidyAssistance:
      return S.current.subsidyAssistance;
    case AdditionalService.seedSales:
      return S.current.seedSales;
    case AdditionalService.chemicalSprayingServices:
      return S.current.chemicalSprayingServices;
    case AdditionalService.partsSales:
      return S.current.partsSales;
    case AdditionalService.elevators:
      return S.current.elevators;
    case AdditionalService.factories:
      return S.current.factories;
    case AdditionalService.none:
      return S.current.notChosen;
  }
}

enum ProductCategory {
  @JsonValue('GRAINS')
  GRAINS,
  @JsonValue('LEGUMES')
  LEGUMES,
  @JsonValue('FEED')
  FEED,
  @JsonValue('OIL_SEEDS')
  OIL_SEEDS,
  @JsonValue('ESSENTIAL_OILS')
  ESSENTIAL_OILS,
  @JsonValue('TECHNICAL_WASTE')
  TECHNICAL_WASTE,
  @JsonValue('VEGETABLES')
  VEGETABLES,
  @JsonValue('MEDICINAL')
  MEDICINAL,
  @JsonValue('FLOWERS')
  FLOWERS,
  @JsonValue('FRUITS')
  FRUITS,
  @JsonValue('BERRIES')
  BERRIES,
  @JsonValue('SUGAR_BEET')
  SUGAR_BEET,
  none;
}

String getProductCategoryTitle(ProductCategory category) {
  switch (category) {
    case ProductCategory.GRAINS:
      return S.current.grains;
    case ProductCategory.LEGUMES:
      return S.current.legumes;
    case ProductCategory.FEED:
      return S.current.feed;
    case ProductCategory.OIL_SEEDS:
      return S.current.oilSeeds;
    case ProductCategory.ESSENTIAL_OILS:
      return S.current.essentialOils;
    case ProductCategory.TECHNICAL_WASTE:
      return S.current.technicalWaste;
    case ProductCategory.VEGETABLES:
      return S.current.vegetables;
    case ProductCategory.MEDICINAL:
      return S.current.medicinal;
    case ProductCategory.FLOWERS:
      return S.current.flowers;
    case ProductCategory.FRUITS:
      return S.current.fruits;
    case ProductCategory.BERRIES:
      return S.current.berries;
    case ProductCategory.SUGAR_BEET:
      return S.current.sugarBeet;
    case ProductCategory.none:
      return S.current.notChosen;
  }
}

extension ExtProductCategory on String {
  ProductCategory getProductCategory() {
    if (this == S.current.grains) {
      return ProductCategory.GRAINS;
    } else if (this == S.current.legumes) {
      return ProductCategory.LEGUMES;
    } else if (this == S.current.feed) {
      return ProductCategory.FEED;
    } else if (this == S.current.oilSeeds) {
      return ProductCategory.OIL_SEEDS;
    } else if (this == S.current.essentialOils) {
      return ProductCategory.ESSENTIAL_OILS;
    } else if (this == S.current.technicalWaste) {
      return ProductCategory.TECHNICAL_WASTE;
    } else if (this == S.current.vegetables) {
      return ProductCategory.VEGETABLES;
    } else if (this == S.current.medicinal) {
      return ProductCategory.MEDICINAL;
    } else if (this == S.current.flowers) {
      return ProductCategory.FLOWERS;
    } else if (this == S.current.fruits) {
      return ProductCategory.FRUITS;
    } else if (this == S.current.berries) {
      return ProductCategory.BERRIES;
    } else if (this == S.current.sugarBeet) {
      return ProductCategory.SUGAR_BEET;
    } else {
      return ProductCategory.none;
    }
  }
}

enum ProductSubCategory {
  @JsonValue('CUSTOM')
  CUSTOM,
  @JsonValue('WHEAT')
  WHEAT,
  @JsonValue('BARLEY')
  BARLEY,
  @JsonValue('OATS')
  OATS,
  @JsonValue('RYE')
  RYE,
  @JsonValue('CORN')
  CORN,
  @JsonValue('MILLET')
  MILLET,
  @JsonValue('BUCKWHEAT')
  BUCKWHEAT,
  @JsonValue('TRITICALE')
  TRITICALE,
  @JsonValue('SPELT')
  SPELT,
  @JsonValue('SUNFLOWER')
  SUNFLOWER,
  @JsonValue('FODDER_CABBAGE')
  FODDER_CABBAGE,
  @JsonValue('JERUSALEM_ARTICHOKE')
  JERUSALEM_ARTICHOKE,
  @JsonValue('WHITE_MUSTARD')
  WHITE_MUSTARD,
  @JsonValue('WINTER_RAPE')
  WINTER_RAPE,
  @JsonValue('SORGHUM')
  SORGHUM,
  @JsonValue('PEAS')
  PEAS,
  @JsonValue('BEANS')
  BEANS,
  @JsonValue('LENTIL')
  LENTIL,
  @JsonValue('VIGNE')
  VIGNE,
  @JsonValue('VETCH')
  VETCH,
  @JsonValue('SOYBEAN')
  SOYBEAN,
  @JsonValue('CHICKPEA')
  CHICKPEA,
  @JsonValue('LUPINE')
  LUPINE,
  @JsonValue('PEANUT')
  PEANUT,
  @JsonValue('FEED_BEANS')
  FEED_BEANS,
  @JsonValue('CASHEW')
  CASHEW,
  @JsonValue('PISTACHIO')
  PISTACHIO,
  @JsonValue('SAFFLOWER')
  SAFFLOWER,
  @JsonValue('SPANISH_ARTICHOKE')
  SPANISH_ARTICHOKE,
  @JsonValue('ANNUAL_SUNFLOWER')
  ANNUAL_SUNFLOWER,
  @JsonValue('SPOTTED_ST_JOHN_S_WORT')
  SPOTTED_ST_JOHN_S_WORT,
  @JsonValue('CULTIVATED_PEANUT')
  CULTIVATED_PEANUT,
  @JsonValue('CULTIVATED_SOYBEAN')
  CULTIVATED_SOYBEAN,
  @JsonValue('BEECH')
  BEECH,
  @JsonValue('CUCUMBER_GRASS')
  CUCUMBER_GRASS,
  @JsonValue('CULTIVATED_GRAPE')
  CULTIVATED_GRAPE,
  @JsonValue('SHOREA')
  SHOREA,
  @JsonValue('SOFT_WHEAT')
  SOFT_WHEAT,
  @JsonValue('HARD_WHEAT')
  HARD_WHEAT,
  @JsonValue('SUGAR_MAIZE')
  SUGAR_MAIZE,
  @JsonValue('CORIANDER')
  CORIANDER,
  @JsonValue('RAPE')
  RAPE,
  @JsonValue('HEMP')
  HEMP,
  @JsonValue('MUSTARD')
  MUSTARD,
  @JsonValue('ABYSSINIAN_KALE')
  ABYSSINIAN_KALE,
  @JsonValue('BLACK_CURRANT')
  BLACK_CURRANT,
  @JsonValue('AVOCADO')
  AVOCADO,
  @JsonValue('COMMON_FLAX')
  COMMON_FLAX,
  @JsonValue('OPIUM_POPPY')
  OPIUM_POPPY,
  @JsonValue('COTTON')
  COTTON,
  @JsonValue('COTTON_PLANT')
  COTTON_PLANT,
  @JsonValue('COCOA')
  COCOA,
  @JsonValue('ARABIAN_COFFEE')
  ARABIAN_COFFEE,
  @JsonValue('EUROPEAN_OLIVE')
  EUROPEAN_OLIVE,
  @JsonValue('TUNG')
  TUNG,
  @JsonValue('LACTUCA_VIROSA')
  LACTUCA_VIROSA,
  @JsonValue('COMMON_BROOMRAPE')
  COMMON_BROOMRAPE,
  @JsonValue('BOLEKO')
  BOLEKO,
  @JsonValue('WALNUT')
  WALNUT,
  @JsonValue('ATTALEA')
  ATTALEA,
  @JsonValue('COCONUT_PALM')
  COCONUT_PALM,
  @JsonValue('OIL_PALM')
  OIL_PALM,
  @JsonValue('BALANITES')
  BALANITES,
  @JsonValue('TOMATO')
  TOMATO,
  @JsonValue('INDIAN_SESAME')
  INDIAN_SESAME,
  @JsonValue('APRICOT')
  APRICOT,
  @JsonValue('COMMON_CHERRY')
  COMMON_CHERRY,
  @JsonValue('DOMESTIC_PLUM')
  DOMESTIC_PLUM,
  @JsonValue('ALMOND')
  ALMOND,
  @JsonValue('PEACH')
  PEACH,
  @JsonValue('ARGANIA_SPINOSA')
  ARGANIA_SPINOSA,
  @JsonValue('MADUKA')
  MADUKA,
  @JsonValue('PINYON')
  PINYON,
  @JsonValue('SIBERIAN_PINE')
  SIBERIAN_PINE,
  @JsonValue('COMMON_WATERMELON')
  COMMON_WATERMELON,
  @JsonValue('COMMON_MELON')
  COMMON_MELON,
  @JsonValue('GREAT_PUMPKIN')
  GREAT_PUMPKIN,
  @JsonValue('COMMON_PUMPKIN')
  COMMON_PUMPKIN,
  @JsonValue('COMMON_HOPS')
  COMMON_HOPS,
  @JsonValue('TEA')
  TEA,
  @JsonValue('IBERIAN_LALEMANTIA')
  IBERIAN_LALEMANTIA,
  @JsonValue('PERILLA')
  PERILLA,
  @JsonValue('BATAT')
  BATAT,
  @JsonValue('POTATO')
  POTATO,
  @JsonValue('TOPINAMBUR')
  TOPINAMBUR,
  @JsonValue('BRUKVA')
  BRUKVA,
  @JsonValue('CARROT')
  CARROT,
  @JsonValue('PARSNIP')
  PARSNIP,
  @JsonValue('PARSLEY')
  PARSLEY,
  @JsonValue('RADISH')
  RADISH,
  @JsonValue('TURNIP')
  TURNIP,
  @JsonValue('REPKA')
  REPKA,
  @JsonValue('BEETROOT')
  BEETROOT,
  @JsonValue('CELERY')
  CELERY,
  @JsonValue('HORSERADISH')
  HORSERADISH,
  @JsonValue('CABBAGE')
  CABBAGE,
  @JsonValue('BROCCOLI')
  BROCCOLI,
  @JsonValue('KOHLRABI')
  KOHLRABI,
  @JsonValue('LETTUCE')
  LETTUCE,
  @JsonValue('DILL')
  DILL,
  @JsonValue('TARRAGON')
  TARRAGON,
  @JsonValue('CHERVIL')
  CHERVIL,
  @JsonValue('BASIL')
  BASIL,
  @JsonValue('MARJORAM')
  MARJORAM,
  @JsonValue('ONION')
  ONION,
  @JsonValue('GARLIC')
  GARLIC,
  @JsonValue('CUCUMBER')
  CUCUMBER,
  @JsonValue('PUMPKIN')
  PUMPKIN,
  @JsonValue('ZUCCHINI')
  ZUCCHINI,
  @JsonValue('PATTISON')
  PATTISON,
  @JsonValue('ARTICHOKE')
  ARTICHOKE,
  @JsonValue('ASPARAGUS')
  ASPARAGUS,
  @JsonValue('RHUBARB')
  RHUBARB,
  none;

  static ProductSubCategory fromJson(String json) => values.byName(json);
}

String getProductSubCategoryTitle(ProductSubCategory subCategory) {
  switch (subCategory) {
    case ProductSubCategory.CUSTOM:
      return '';
    case ProductSubCategory.WHEAT:
      return S.current.wheat;
    case ProductSubCategory.BARLEY:
      return S.current.barley;
    case ProductSubCategory.OATS:
      return S.current.oats;
    case ProductSubCategory.RYE:
      return S.current.rye;
    case ProductSubCategory.CORN:
      return S.current.corn;
    case ProductSubCategory.MILLET:
      return S.current.millet;
    case ProductSubCategory.BUCKWHEAT:
      return S.current.buckwheat;
    case ProductSubCategory.TRITICALE:
      return S.current.triticale;
    case ProductSubCategory.SPELT:
      return S.current.spelt;
    case ProductSubCategory.SUNFLOWER:
      return S.current.sunflower;
    case ProductSubCategory.FODDER_CABBAGE:
      return S.current.fodderCabbage;
    case ProductSubCategory.JERUSALEM_ARTICHOKE:
      return S.current.jerusalemArtichoke;
    case ProductSubCategory.WHITE_MUSTARD:
      return S.current.whiteMustard;
    case ProductSubCategory.WINTER_RAPE:
      return S.current.winterRape;
    case ProductSubCategory.SORGHUM:
      return S.current.sorghum;
    case ProductSubCategory.PEAS:
      return S.current.peas;
    case ProductSubCategory.BEANS:
      return S.current.beans;
    case ProductSubCategory.LENTIL:
      return S.current.lentil;
    case ProductSubCategory.VIGNE:
      return S.current.vigne;
    case ProductSubCategory.VETCH:
      return S.current.vetch;
    case ProductSubCategory.SOYBEAN:
      return S.current.soybean;
    case ProductSubCategory.CHICKPEA:
      return S.current.chickpea;
    case ProductSubCategory.LUPINE:
      return S.current.lupine;
    case ProductSubCategory.PEANUT:
      return S.current.peanut;
    case ProductSubCategory.FEED_BEANS:
      return S.current.feedBeans;
    case ProductSubCategory.CASHEW:
      return S.current.cashew;
    case ProductSubCategory.PISTACHIO:
      return S.current.pistachio;
    case ProductSubCategory.SAFFLOWER:
      return S.current.safflower;
    case ProductSubCategory.SPANISH_ARTICHOKE:
      return S.current.spanishArtichoke;
    case ProductSubCategory.ANNUAL_SUNFLOWER:
      return S.current.annualSunflower;
    case ProductSubCategory.SPOTTED_ST_JOHN_S_WORT:
      return S.current.spottedStJohnsWort;
    case ProductSubCategory.CULTIVATED_PEANUT:
      return S.current.cultivatedPeanut;
    case ProductSubCategory.CULTIVATED_SOYBEAN:
      return S.current.cultivatedSoybean;
    case ProductSubCategory.BEECH:
      return S.current.beech;
    case ProductSubCategory.CUCUMBER_GRASS:
      return S.current.cucumberGrass;
    case ProductSubCategory.CULTIVATED_GRAPE:
      return S.current.cultivatedGrape;
    case ProductSubCategory.SHOREA:
      return S.current.shorea;
    case ProductSubCategory.SOFT_WHEAT:
      return S.current.softWheat;
    case ProductSubCategory.HARD_WHEAT:
      return S.current.hardWheat;
    case ProductSubCategory.SUGAR_MAIZE:
      return S.current.sugarMaize;
    case ProductSubCategory.CORIANDER:
      return S.current.coriander;
    case ProductSubCategory.RAPE:
      return S.current.rape;
    case ProductSubCategory.HEMP:
      return S.current.hemp;
    case ProductSubCategory.MUSTARD:
      return S.current.mustard;
    case ProductSubCategory.ABYSSINIAN_KALE:
      return S.current.abyssinianKale;
    case ProductSubCategory.BLACK_CURRANT:
      return S.current.blackCurrant;
    case ProductSubCategory.AVOCADO:
      return S.current.avocado;
    case ProductSubCategory.COMMON_FLAX:
      return S.current.commonFlax;
    case ProductSubCategory.OPIUM_POPPY:
      return S.current.opiumPoppy;
    case ProductSubCategory.COTTON:
      return S.current.cotton;
    case ProductSubCategory.COTTON_PLANT:
      return S.current.cottonPlant;
    case ProductSubCategory.COCOA:
      return S.current.cocoa;
    case ProductSubCategory.ARABIAN_COFFEE:
      return S.current.arabianCoffee;
    case ProductSubCategory.EUROPEAN_OLIVE:
      return S.current.europeanOlive;
    case ProductSubCategory.TUNG:
      return S.current.tung;
    case ProductSubCategory.LACTUCA_VIROSA:
      return S.current.lactucaVirosa;
    case ProductSubCategory.COMMON_BROOMRAPE:
      return S.current.commonBroomrape;
    case ProductSubCategory.BOLEKO:
      return S.current.boleko;
    case ProductSubCategory.WALNUT:
      return S.current.walnut;
    case ProductSubCategory.ATTALEA:
      return S.current.attalea;
    case ProductSubCategory.COCONUT_PALM:
      return S.current.coconutPalm;
    case ProductSubCategory.OIL_PALM:
      return S.current.oilPalm;
    case ProductSubCategory.BALANITES:
      return S.current.balanites;
    case ProductSubCategory.TOMATO:
      return S.current.tomato;
    case ProductSubCategory.INDIAN_SESAME:
      return S.current.indianSesame;
    case ProductSubCategory.APRICOT:
      return S.current.apricot;
    case ProductSubCategory.COMMON_CHERRY:
      return S.current.commonCherry;
    case ProductSubCategory.DOMESTIC_PLUM:
      return S.current.domesticPlum;
    case ProductSubCategory.ALMOND:
      return S.current.almond;
    case ProductSubCategory.PEACH:
      return S.current.peach;
    case ProductSubCategory.ARGANIA_SPINOSA:
      return S.current.arganiaSpinosa;
    case ProductSubCategory.MADUKA:
      return S.current.maduka;
    case ProductSubCategory.PINYON:
      return S.current.pinyon;
    case ProductSubCategory.SIBERIAN_PINE:
      return S.current.siberianPine;
    case ProductSubCategory.COMMON_WATERMELON:
      return S.current.commonWatermelon;
    case ProductSubCategory.COMMON_MELON:
      return S.current.commonMelon;
    case ProductSubCategory.GREAT_PUMPKIN:
      return S.current.greatPumpkin;
    case ProductSubCategory.COMMON_PUMPKIN:
      return S.current.commonPumpkin;
    case ProductSubCategory.COMMON_HOPS:
      return S.current.commonHops;
    case ProductSubCategory.TEA:
      return S.current.tea;
    case ProductSubCategory.IBERIAN_LALEMANTIA:
      return S.current.iberianLalemantia;
    case ProductSubCategory.PERILLA:
      return S.current.perilla;
    case ProductSubCategory.BATAT:
      return S.current.batat;
    case ProductSubCategory.POTATO:
      return S.current.potato;
    case ProductSubCategory.TOPINAMBUR:
      return S.current.topinambur;
    case ProductSubCategory.BRUKVA:
      return S.current.brukva;
    case ProductSubCategory.CARROT:
      return S.current.carrot;
    case ProductSubCategory.PARSNIP:
      return S.current.parsnip;
    case ProductSubCategory.PARSLEY:
      return S.current.parsley;
    case ProductSubCategory.RADISH:
      return S.current.radish;
    case ProductSubCategory.TURNIP:
      return S.current.turnip;
    case ProductSubCategory.REPKA:
      return S.current.repka;
    case ProductSubCategory.BEETROOT:
      return S.current.beetroot;
    case ProductSubCategory.CELERY:
      return S.current.celery;
    case ProductSubCategory.HORSERADISH:
      return S.current.horseradish;
    case ProductSubCategory.CABBAGE:
      return S.current.cabbage;
    case ProductSubCategory.BROCCOLI:
      return S.current.broccoli;
    case ProductSubCategory.KOHLRABI:
      return S.current.kohlrabi;
    case ProductSubCategory.LETTUCE:
      return S.current.lettuce;
    case ProductSubCategory.DILL:
      return S.current.dill;
    case ProductSubCategory.TARRAGON:
      return S.current.tarragon;
    case ProductSubCategory.CHERVIL:
      return S.current.chervil;
    case ProductSubCategory.BASIL:
      return S.current.basil;
    case ProductSubCategory.MARJORAM:
      return S.current.marjoram;
    case ProductSubCategory.ONION:
      return S.current.onion;
    case ProductSubCategory.GARLIC:
      return S.current.garlic;
    case ProductSubCategory.CUCUMBER:
      return S.current.cucumber;
    case ProductSubCategory.PUMPKIN:
      return S.current.pumpkin;
    case ProductSubCategory.ZUCCHINI:
      return S.current.zucchini;
    case ProductSubCategory.PATTISON:
      return S.current.pattison;
    case ProductSubCategory.ARTICHOKE:
      return S.current.artichoke;
    case ProductSubCategory.ASPARAGUS:
      return S.current.asparagus;
    case ProductSubCategory.RHUBARB:
      return S.current.rhubarb;
    case ProductSubCategory.none:
      return S.current.notChosen;
  }
}

extension ExtProductSubCategory on String {
  ProductSubCategory getProductSubCategory() {
    if (this == S.current.wheat) {
      return ProductSubCategory.WHEAT;
    }
    if (this == S.current.barley) {
      return ProductSubCategory.BARLEY;
    }
    if (this == S.current.oats) {
      return ProductSubCategory.OATS;
    }
    if (this == S.current.rye) {
      return ProductSubCategory.RYE;
    }
    if (this == S.current.corn) {
      return ProductSubCategory.CORN;
    }
    if (this == S.current.millet) {
      return ProductSubCategory.MILLET;
    }
    if (this == S.current.buckwheat) {
      return ProductSubCategory.BUCKWHEAT;
    }
    if (this == S.current.triticale) {
      return ProductSubCategory.TRITICALE;
    }
    if (this == S.current.spelt) {
      return ProductSubCategory.SPELT;
    }
    if (this == S.current.sunflower) {
      return ProductSubCategory.SUNFLOWER;
    }
    if (this == S.current.fodderCabbage) {
      return ProductSubCategory.FODDER_CABBAGE;
    }
    if (this == S.current.jerusalemArtichoke) {
      return ProductSubCategory.JERUSALEM_ARTICHOKE;
    }
    if (this == S.current.whiteMustard) {
      return ProductSubCategory.WHITE_MUSTARD;
    }
    if (this == S.current.winterRape) {
      return ProductSubCategory.WINTER_RAPE;
    }
    if (this == S.current.sorghum) {
      return ProductSubCategory.SORGHUM;
    }
    if (this == S.current.peas) {
      return ProductSubCategory.PEAS;
    }
    if (this == S.current.beans) {
      return ProductSubCategory.BEANS;
    }
    if (this == S.current.lentil) {
      return ProductSubCategory.LENTIL;
    }
    if (this == S.current.vigne) {
      return ProductSubCategory.VIGNE;
    }
    if (this == S.current.vetch) {
      return ProductSubCategory.VETCH;
    }
    if (this == S.current.soybean) {
      return ProductSubCategory.SOYBEAN;
    }
    if (this == S.current.chickpea) {
      return ProductSubCategory.CHICKPEA;
    }
    if (this == S.current.lupine) {
      return ProductSubCategory.LUPINE;
    }
    if (this == S.current.peanut) {
      return ProductSubCategory.PEANUT;
    }
    if (this == S.current.feedBeans) {
      return ProductSubCategory.FEED_BEANS;
    }
    if (this == S.current.cashew) {
      return ProductSubCategory.CASHEW;
    }
    if (this == S.current.pistachio) {
      return ProductSubCategory.PISTACHIO;
    }
    if (this == S.current.safflower) {
      return ProductSubCategory.SAFFLOWER;
    }
    if (this == S.current.spanishArtichoke) {
      return ProductSubCategory.SPANISH_ARTICHOKE;
    }
    if (this == S.current.annualSunflower) {
      return ProductSubCategory.ANNUAL_SUNFLOWER;
    }
    if (this == S.current.spottedStJohnsWort) {
      return ProductSubCategory.SPOTTED_ST_JOHN_S_WORT;
    }
    if (this == S.current.cultivatedPeanut) {
      return ProductSubCategory.CULTIVATED_PEANUT;
    }
    if (this == S.current.cultivatedSoybean) {
      return ProductSubCategory.CULTIVATED_SOYBEAN;
    }
    if (this == S.current.beech) {
      return ProductSubCategory.BEECH;
    }
    if (this == S.current.cucumberGrass) {
      return ProductSubCategory.CUCUMBER_GRASS;
    }
    if (this == S.current.cultivatedGrape) {
      return ProductSubCategory.CULTIVATED_GRAPE;
    }
    if (this == S.current.shorea) {
      return ProductSubCategory.SHOREA;
    }
    if (this == S.current.softWheat) {
      return ProductSubCategory.SOFT_WHEAT;
    }
    if (this == S.current.hardWheat) {
      return ProductSubCategory.HARD_WHEAT;
    }
    if (this == S.current.sugarMaize) {
      return ProductSubCategory.SUGAR_MAIZE;
    }
    if (this == S.current.coriander) {
      return ProductSubCategory.CORIANDER;
    }
    if (this == S.current.rape) {
      return ProductSubCategory.RAPE;
    }
    if (this == S.current.hemp) {
      return ProductSubCategory.HEMP;
    }
    if (this == S.current.mustard) {
      return ProductSubCategory.MUSTARD;
    }
    if (this == S.current.abyssinianKale) {
      return ProductSubCategory.ABYSSINIAN_KALE;
    }
    if (this == S.current.blackCurrant) {
      return ProductSubCategory.BLACK_CURRANT;
    }
    if (this == S.current.avocado) {
      return ProductSubCategory.AVOCADO;
    }
    if (this == S.current.commonFlax) {
      return ProductSubCategory.COMMON_FLAX;
    }
    if (this == S.current.opiumPoppy) {
      return ProductSubCategory.OPIUM_POPPY;
    }
    if (this == S.current.cotton) {
      return ProductSubCategory.COTTON;
    }
    if (this == S.current.cottonPlant) {
      return ProductSubCategory.COTTON_PLANT;
    }
    if (this == S.current.cocoa) {
      return ProductSubCategory.COCOA;
    }
    if (this == S.current.arabianCoffee) {
      return ProductSubCategory.ARABIAN_COFFEE;
    }
    if (this == S.current.europeanOlive) {
      return ProductSubCategory.EUROPEAN_OLIVE;
    }
    if (this == S.current.tung) {
      return ProductSubCategory.TUNG;
    }
    if (this == S.current.lactucaVirosa) {
      return ProductSubCategory.LACTUCA_VIROSA;
    }
    if (this == S.current.commonBroomrape) {
      return ProductSubCategory.COMMON_BROOMRAPE;
    }
    if (this == S.current.boleko) {
      return ProductSubCategory.BOLEKO;
    }
    if (this == S.current.walnut) {
      return ProductSubCategory.WALNUT;
    }
    if (this == S.current.attalea) {
      return ProductSubCategory.ATTALEA;
    }
    if (this == S.current.coconutPalm) {
      return ProductSubCategory.COCONUT_PALM;
    }
    if (this == S.current.oilPalm) {
      return ProductSubCategory.OIL_PALM;
    }
    if (this == S.current.balanites) {
      return ProductSubCategory.BALANITES;
    }
    if (this == S.current.tomato) {
      return ProductSubCategory.TOMATO;
    }
    if (this == S.current.indianSesame) {
      return ProductSubCategory.INDIAN_SESAME;
    }
    if (this == S.current.apricot) {
      return ProductSubCategory.APRICOT;
    }
    if (this == S.current.commonCherry) {
      return ProductSubCategory.COMMON_CHERRY;
    }
    if (this == S.current.domesticPlum) {
      return ProductSubCategory.DOMESTIC_PLUM;
    }
    if (this == S.current.almond) {
      return ProductSubCategory.ALMOND;
    }
    if (this == S.current.peach) {
      return ProductSubCategory.PEACH;
    }
    if (this == S.current.arganiaSpinosa) {
      return ProductSubCategory.ARGANIA_SPINOSA;
    }
    if (this == S.current.maduka) {
      return ProductSubCategory.MADUKA;
    }
    if (this == S.current.pinyon) {
      return ProductSubCategory.PINYON;
    }
    if (this == S.current.siberianPine) {
      return ProductSubCategory.SIBERIAN_PINE;
    }
    if (this == S.current.commonWatermelon) {
      return ProductSubCategory.COMMON_WATERMELON;
    }
    if (this == S.current.commonMelon) {
      return ProductSubCategory.COMMON_MELON;
    }
    if (this == S.current.greatPumpkin) {
      return ProductSubCategory.GREAT_PUMPKIN;
    }
    if (this == S.current.commonPumpkin) {
      return ProductSubCategory.COMMON_PUMPKIN;
    }
    if (this == S.current.commonHops) {
      return ProductSubCategory.COMMON_HOPS;
    }
    if (this == S.current.tea) {
      return ProductSubCategory.TEA;
    }
    if (this == S.current.iberianLalemantia) {
      return ProductSubCategory.IBERIAN_LALEMANTIA;
    }
    if (this == S.current.perilla) {
      return ProductSubCategory.PERILLA;
    }
    if (this == S.current.batat) {
      return ProductSubCategory.BATAT;
    }
    if (this == S.current.potato) {
      return ProductSubCategory.POTATO;
    }
    if (this == S.current.topinambur) {
      return ProductSubCategory.TOPINAMBUR;
    }
    if (this == S.current.brukva) {
      return ProductSubCategory.BRUKVA;
    }
    if (this == S.current.carrot) {
      return ProductSubCategory.CARROT;
    }
    if (this == S.current.parsnip) {
      return ProductSubCategory.PARSNIP;
    }
    if (this == S.current.parsley) {
      return ProductSubCategory.PARSLEY;
    }
    if (this == S.current.radish) {
      return ProductSubCategory.RADISH;
    }
    if (this == S.current.turnip) {
      return ProductSubCategory.TURNIP;
    }
    if (this == S.current.repka) {
      return ProductSubCategory.REPKA;
    }
    if (this == S.current.beetroot) {
      return ProductSubCategory.BEETROOT;
    }
    if (this == S.current.celery) {
      return ProductSubCategory.CELERY;
    }
    if (this == S.current.horseradish) {
      return ProductSubCategory.HORSERADISH;
    }
    if (this == S.current.cabbage) {
      return ProductSubCategory.CABBAGE;
    }
    if (this == S.current.broccoli) {
      return ProductSubCategory.BROCCOLI;
    }
    if (this == S.current.kohlrabi) {
      return ProductSubCategory.KOHLRABI;
    }
    if (this == S.current.lettuce) {
      return ProductSubCategory.LETTUCE;
    }
    if (this == S.current.dill) {
      return ProductSubCategory.DILL;
    }
    if (this == S.current.tarragon) {
      return ProductSubCategory.TARRAGON;
    }
    if (this == S.current.chervil) {
      return ProductSubCategory.CHERVIL;
    }
    if (this == S.current.basil) {
      return ProductSubCategory.BASIL;
    }
    if (this == S.current.marjoram) {
      return ProductSubCategory.MARJORAM;
    }
    if (this == S.current.onion) {
      return ProductSubCategory.ONION;
    }
    if (this == S.current.garlic) {
      return ProductSubCategory.GARLIC;
    }
    if (this == S.current.cucumber) {
      return ProductSubCategory.CUCUMBER;
    }
    if (this == S.current.pumpkin) {
      return ProductSubCategory.PUMPKIN;
    }
    if (this == S.current.zucchini) {
      return ProductSubCategory.ZUCCHINI;
    }
    if (this == S.current.pattison) {
      return ProductSubCategory.PATTISON;
    }
    if (this == S.current.artichoke) {
      return ProductSubCategory.ARTICHOKE;
    }
    if (this == S.current.asparagus) {
      return ProductSubCategory.ASPARAGUS;
    }
    if (this == S.current.rhubarb) {
      return ProductSubCategory.RHUBARB;
    }
    if (this == S.current.notChosen) {
      return ProductSubCategory.none;
    }
    return ProductSubCategory.CUSTOM;
  }
}

enum Specialization {
  @JsonValue('ASSESSOR')
  assessor,
  @JsonValue('TRUCK_DRIVER')
  truckDriver,
  @JsonValue('WORKER')
  worker,
  @JsonValue('LOADING_CREW')
  loadingCrew,
  none;
}

String getSpecializationTitle(Specialization specialization) {
  switch (specialization) {
    case Specialization.assessor:
      return S.current.assessor;
    case Specialization.truckDriver:
      return S.current.truckDriver;
    case Specialization.worker:
      return S.current.worker;
    case Specialization.loadingCrew:
      return S.current.loadingCrew;
    case Specialization.none:
      return S.current.notChosen;
  }
}

extension ExtensionSpecialization on String {
  Specialization getSpecialization() {
    if (this == S.current.assessor) {
      return Specialization.assessor;
    } else if (this == S.current.truckDriver) {
      return Specialization.truckDriver;
    } else if (this == S.current.worker) {
      return Specialization.worker;
    } else if (this == S.current.loadingCrew) {
      return Specialization.loadingCrew;
    } else {
      return Specialization.none;
    }
  }
}

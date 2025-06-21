import 'package:ali_nawab_rana_test/models/bakery_model.dart';
import 'package:ali_nawab_rana_test/models/banner_model.dart';
import 'package:ali_nawab_rana_test/models/beauty_model.dart';
import 'package:ali_nawab_rana_test/models/category_model.dart';
import 'package:ali_nawab_rana_test/models/dairy_egg_fridge_model.dart';
import 'package:ali_nawab_rana_test/models/drinks_beer_model.dart';
import 'package:ali_nawab_rana_test/models/freezer_model.dart';
import 'package:ali_nawab_rana_test/models/fruit_vegetable_model.dart';
import 'package:ali_nawab_rana_test/models/meat_seafood_model.dart';
import 'package:ali_nawab_rana_test/models/pantry_model.dart';
import 'package:ali_nawab_rana_test/models/pharmacy_model.dart';
import 'package:ali_nawab_rana_test/models/snack_confectionery_model.dart';
import 'package:ali_nawab_rana_test/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class DummyData {
  static List<BannerModel> banners = [
    BannerModel(
      title: 'Save with weekly Special',
      imageUrl: AImages.bannerImage_1,
    ),
    BannerModel(
      title: 'Save with weekly Special',
      imageUrl: AImages.bannerImage_1,
    ),
    BannerModel(
      title: 'Save with weekly Special',
      imageUrl: AImages.bannerImage_1,
    ),
    BannerModel(
      title: 'Save with weekly Special',
      imageUrl: AImages.bannerImage_1,
    ),
  ];

  static List<CategoryModel> categories = [
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
    CategoryModel(name: 'Fruits', imageUrl: AImages.categoryImage_1),
  ];

  static List<FruitVegetableModel> fruitsVegetables = [
    FruitVegetableModel(
      title: 'Avocados',
      quantity: 3,
      quantityUnit: 'ct',
      price: 7,
    ),
    FruitVegetableModel(
      title: 'Avocados',
      quantity: 3,
      quantityUnit: 'lb',
      price: 2.9,
    ),
    FruitVegetableModel(
      title: 'Avocados',
      quantity: 3,
      quantityUnit: 'lb',
      price: 2.9,
    ),
    FruitVegetableModel(
      title: 'Avocados',
      quantity: 3,
      quantityUnit: 'lb',
      price: 2.9,
    ),
  ];

  static List<BakeryModel> bakeries = [
    BakeryModel(
      title: 'TastyKake Krimpets',
      quantity: 3,
      quantityUnit: 'ct',
      price: 11,
    ),
    BakeryModel(
      title: 'TastyKake Krimpets',
      quantity: 3.03,
      quantityUnit: 'oz',
      price: 18,
    ),
    BakeryModel(
      title: 'TastyKake Krimpets',
      quantity: 3,
      quantityUnit: 'ct',
      price: 11,
    ),
    BakeryModel(
      title: 'TastyKake Krimpets',
      quantity: 3,
      quantityUnit: 'ct',
      price: 11,
    ),
  ];

  static List<MeatSeafoodModel> meatsSeafoods = [
    MeatSeafoodModel(
      title: 'iPhone 14 Pro Max',
      memory: 256,
      colorName: 'Deep',
      price: 1300,
    ),
    MeatSeafoodModel(
      title: 'iPhone 14 Pro Max',
      memory: 256,
      colorName: 'Deep',
      price: 1300,
    ),
    MeatSeafoodModel(
      title: 'iPhone 14 Pro Max',
      memory: 256,
      colorName: 'Deep',
      price: 1300,
    ),
    MeatSeafoodModel(
      title: 'iPhone 14 Pro Max',
      memory: 256,
      colorName: 'Deep',
      price: 1300,
    ),
  ];

  static List<DairyEggFridgeModel> dairyEggFridges = [
    DairyEggFridgeModel(
      title: 'White Eggs',
      quantity: 12,
      quantityUnit: 'ct',
      price: 10,
    ),
    DairyEggFridgeModel(
      title: 'White Eggs',
      quantity: 12,
      quantityUnit: 'ct',
      price: 10,
    ),
    DairyEggFridgeModel(
      title: 'White Eggs',
      quantity: 12,
      quantityUnit: 'ct',
      price: 10,
    ),
    DairyEggFridgeModel(
      title: 'White Eggs',
      quantity: 12,
      quantityUnit: 'ct',
      price: 10,
    ),
  ];

  static List<PantryModel> pantries = [
    PantryModel(
      title: 'Jiffy Corn Muffin Mix',
      quantity: 8.5,
      quantityUnit: 'oz',
      price: 56,
    ),
    PantryModel(
      title: 'Jiffy Corn Muffin Mix',
      quantity: 8.5,
      quantityUnit: 'oz',
      price: 56,
    ),
    PantryModel(
      title: 'Jiffy Corn Muffin Mix',
      quantity: 8.5,
      quantityUnit: 'oz',
      price: 56,
    ),
    PantryModel(
      title: 'Jiffy Corn Muffin Mix',
      quantity: 8.5,
      quantityUnit: 'oz',
      price: 56,
    ),
  ];

  static List<SnackConfectioneryModel> snacksConfectioneries = [
    SnackConfectioneryModel(
      title: 'Nerds Valentine Gummy Clusters',
      quantity: 1,
      quantityUnit: '',
      price: 11.31,
    ),
    SnackConfectioneryModel(
      title: 'Nerds Valentine Gummy Clusters',
      quantity: 8,
      quantityUnit: 'oz',
      price: 45,
    ),
    SnackConfectioneryModel(
      title: 'Nerds Valentine Gummy Clusters',
      quantity: 1,
      quantityUnit: '',
      price: 11.31,
    ),
    SnackConfectioneryModel(
      title: 'Nerds Valentine Gummy Clusters',
      quantity: 1,
      quantityUnit: '',
      price: 11.31,
    ),
  ];

  static List<FreezerModel> freezers = [
    FreezerModel(
      title: 'Ziploc Freezer Gallon Bags',
      quantity: 28,
      quantityUnit: 'ct',
      price: 13,
    ),
    FreezerModel(
      title: 'Ziploc Freezer Gallon Bags',
      quantity: 28,
      quantityUnit: 'ct',
      price: 13,
    ),
    FreezerModel(
      title: 'Ziploc Freezer Gallon Bags',
      quantity: 28,
      quantityUnit: 'ct',
      price: 13,
    ),
    FreezerModel(
      title: 'Ziploc Freezer Gallon Bags',
      quantity: 28,
      quantityUnit: 'ct',
      price: 13,
    ),
  ];

  static List<DrinksBeerModel> drinksBeers = [
    DrinksBeerModel(
      title: 'bud Light Single 25',
      quantity: 25,
      quantityUnit: 'oz',
      price: 9,
    ),
    DrinksBeerModel(
      title: 'bud Light Single 25',
      quantity: 25,
      quantityUnit: 'oz',
      price: 9,
    ),
    DrinksBeerModel(
      title: 'bud Light Single 25',
      quantity: 25,
      quantityUnit: 'oz',
      price: 9,
    ),
    DrinksBeerModel(
      title: 'bud Light Single 25',
      quantity: 25,
      quantityUnit: 'oz',
      price: 9,
    ),
  ];

  static List<BeautyModel> beauties = [
    BeautyModel(
      title: 'Loops Clean Slate',
      quantity: 1,
      quantityUnit: 'ct',
      price: 10,
    ),
    BeautyModel(
      title: 'Loops Clean Slate',
      quantity: 1,
      quantityUnit: 'ct',
      price: 10,
    ),
    BeautyModel(
      title: 'Loops Clean Slate',
      quantity: 1,
      quantityUnit: 'ct',
      price: 10,
    ),
    BeautyModel(
      title: 'Loops Clean Slate',
      quantity: 1,
      quantityUnit: 'ct',
      price: 10,
    ),
  ];

  static List<PharmacyModel> pharmacies = [
    PharmacyModel(
      title: 'Halls Honey Lemon Cough',
      quantity: 1,
      quantityUnit: '',
      price: 10,
    ),
    PharmacyModel(
      title: 'Halls Honey Lemon Cough',
      quantity: 1,
      quantityUnit: '',
      price: 10,
    ),
    PharmacyModel(
      title: 'Halls Honey Lemon Cough',
      quantity: 1,
      quantityUnit: '',
      price: 10,
    ),
    PharmacyModel(
      title: 'Halls Honey Lemon Cough',
      quantity: 1,
      quantityUnit: '',
      price: 10,
    ),
  ];
}

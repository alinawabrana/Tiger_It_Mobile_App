import 'package:ali_nawab_rana_test/common/widgets/container/rounded_container.dart';
import 'package:ali_nawab_rana_test/common/widgets/grid/grid_layout.dart';
import 'package:ali_nawab_rana_test/common/widgets/search/search_container.dart';
import 'package:ali_nawab_rana_test/common/widgets/tiles/menu_tile.dart';
import 'package:ali_nawab_rana_test/data/dummy_data/dummy_data.dart';
import 'package:ali_nawab_rana_test/utils/constants/colors.dart';
import 'package:ali_nawab_rana_test/utils/constants/image_strings.dart';
import 'package:ali_nawab_rana_test/utils/constants/sizes.dart';
import 'package:ali_nawab_rana_test/utils/helper_functions/helper_function.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final banners = DummyData.banners;
    final categories = DummyData.categories;
    final fruitsVegetables = DummyData.fruitsVegetables;
    final bakeries = DummyData.bakeries;
    final meatSeafoods = DummyData.meatsSeafoods;
    final dairyEggs = DummyData.dairyEggFridges;
    final pantries = DummyData.pantries;
    final snacks = DummyData.snacksConfectioneries;
    final freezers = DummyData.freezers;
    final drinksBeers = DummyData.drinksBeers;
    final beauties = DummyData.beauties;
    final pharmacies = DummyData.pharmacies;

    final List<Map<String, dynamic>> topTwoCategories = [
      {'name': 'Fruits & Vegetables', 'data': fruitsVegetables},
      {'name': 'Bakery', 'data': bakeries},
    ];

    final List<Map<String, dynamic>> remainingCategories = [
      {'name': 'Meat & Seafoods', 'data': meatSeafoods},
      {'name': 'Dairy, Eggs & Fridge', 'data': dairyEggs},
      {'name': 'Pantry', 'data': pantries},
      {'name': 'Snacks & Confectionery', 'data': snacks},
      {'name': 'Freezer', 'data': freezers},
      {'name': 'Drinks & Beer', 'data': drinksBeers},
      {'name': 'Beauty', 'data': beauties},
      {'name': 'Pharmacy', 'data': pharmacies},
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: AHelperFunctions.screenWidth(context),
              color: AColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(ASizes.defaultSpace),
                child: Column(
                  children: [
                    AppBar(
                      leading: Icon(
                        Iconsax.location,
                        color: Colors.white,
                        size: 20,
                      ),
                      backgroundColor: Colors.transparent,
                      centerTitle: false,
                      leadingWidth: ASizes.spaceBtwItems / 1.5,
                      title: Row(
                        children: [
                          Text(
                            '3924 Bubby Drive, Austin',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ASizes.fontSizeLg,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.keyboard_arrow_down, color: Colors.white),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: ASearchContainer(
                            text: 'Search Tiger it',
                            backgroundColor: Colors.white,
                            textColor: Colors.grey.shade400,
                            showBorder: false,
                          ),
                        ),
                        SizedBox(width: ASizes.spaceBtwItems),
                        ARoundedContainer(
                          width: 50,
                          height: 50,
                          radius: 100,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: SizedBox(
                              height: 30,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    left: 10,
                                    child: Icon(Icons.shopping_cart_outlined),
                                  ),
                                  Positioned(
                                    right: 10,
                                    bottom: 10,
                                    child: ARoundedContainer(
                                      width: 20,
                                      height: 20,
                                      backgroundColor: AColors.primaryColor,
                                      child: Center(
                                        child: Text(
                                          '10',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ASizes.spaceBtwItems),

            CarouselSlider(
              // To create the custom list depending upon the items included in banners variable we uses the .map property
              items:
                  banners
                      .map(
                        (banner) => ARoundedContainer(
                          width: AHelperFunctions.screenWidth(context) * 0.9,
                          height: AHelperFunctions.screenHeight(context),
                          radius: ASizes.md,
                          backgroundColor: Color(0xFF377492),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                right: -120,
                                child: Image(
                                  image: AssetImage(banner.imageUrl),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: ASizes.defaultSpace,
                                  horizontal: ASizes.defaultSpace * 1.5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        banner.title,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.headlineLarge!.apply(
                                          color: Colors.white,
                                          fontWeightDelta: 2,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                    SizedBox(height: ASizes.spaceBtwItems),
                                    ARoundedContainer(
                                      width: 120,
                                      height: 50,
                                      radius: 50,
                                      backgroundColor: Colors.transparent,
                                      child: Center(
                                        child: Text(
                                          'Shop Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ASizes.fontSizeLg,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
              options: CarouselOptions(
                viewportFraction: 0.92,
                onPageChanged: (index, _) {},
              ),
            ),
            SizedBox(height: ASizes.spaceBtwItems),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(ASizes.defaultSpace),
                  child: AGridLayout(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return Column(
                        children: [
                          ARoundedContainer(
                            width: 50,
                            height: 60,
                            backgroundColor: Colors.transparent,
                            showBorder: false,
                            child: Stack(
                              children: [
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFFACF),
                                  ),
                                ),
                                Positioned(
                                  child: Image(
                                    image: AssetImage(category.imageUrl),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: ASizes.spaceBtwItems / 2),
                          Text(
                            category.name,
                            style: TextStyle(
                              fontSize: ASizes.fontSizeMd,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AColors.primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      // Trophy Icon
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 80, // adjust to your size
                              height: 80, // adjust to your size
                            ),
                            Positioned(
                              top: -10,
                              left: -20,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withOpacity(0.6),
                                      Colors.white.withOpacity(0.0),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.center,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                  border: Border.all(color: Colors.transparent),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.emoji_events, // Trophy icon
                                    color: Colors.orange,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 12),

                      // Text & Progress
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '100 XP to your next treasure',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 6),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: LinearProgressIndicator(
                                value: 0.6, // Adjust progress here
                                backgroundColor: Colors.black.withOpacity(0.3),
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  Color(0xFF1B5E20), // Dark green progress bar
                                ),
                                minHeight: 8,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Hi, welcome to Tigerit!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          // Background Gradient Container
                          Container(
                            width: 100, // adjust to your size
                            height: 80, // adjust to your size
                          ),

                          // Circular Overlay
                          Positioned(
                            bottom: -35,
                            right: -30,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(
                                  0.05,
                                ), // or use a green shade with opacity
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),

                          // Arrow Icon
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ASizes.spaceBtwItems),

                Padding(
                  padding: const EdgeInsets.all(ASizes.defaultSpace),
                  child: Column(
                    children:
                        topTwoCategories.map((section) {
                          final String title = section['name'];
                          final List<dynamic> items = section['data'];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Title Row with "More Items"
                              Row(
                                children: [
                                  Text(
                                    title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Row(
                                    children: [
                                      Text('More Items'),
                                      SizedBox(width: ASizes.spaceBtwItems),
                                      Icon(Icons.arrow_forward_ios, size: 14),
                                    ],
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              /// Horizontal List of Items
                              SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: items.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, index) {
                                    final item = items[index];

                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          /// Image + Icons
                                          Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  AImages.categoryImage_1,
                                                ), // Dynamic image
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                const Positioned(
                                                  right: 6,
                                                  top: 6,
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
                                                    size: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 6,
                                                  bottom: 6,
                                                  child: ARoundedContainer(
                                                    width: 30,
                                                    height: 30,
                                                    radius: 100,
                                                    backgroundColor:
                                                        AColors.primaryColor,
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(
                                            height: ASizes.spaceBtwItems,
                                          ),

                                          /// Title + Price
                                          SizedBox(
                                            width: 100,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${item.title} - ${item.quantity}${item.quantityUnit}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  '\$${item.price}',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),

                              const SizedBox(height: ASizes.spaceBtwSections),
                            ],
                          );
                        }).toList(),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(ASizes.defaultSpace),
                  child: Column(
                    children:
                        remainingCategories.map((section) {
                          final String title = section['name'];
                          final List<dynamic> items = section['data'];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Title Row with "More Items"
                              Row(
                                children: [
                                  Text(
                                    title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Row(
                                    children: [
                                      Text('More Items'),
                                      SizedBox(width: ASizes.spaceBtwItems),
                                      Icon(Icons.arrow_forward_ios, size: 14),
                                    ],
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              /// Horizontal List of Items
                              SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: items.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, index) {
                                    final item = items[index];

                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          /// Image + Icons
                                          Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  AImages.categoryImage_1,
                                                ), // Dynamic image
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                const Positioned(
                                                  right: 6,
                                                  top: 6,
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
                                                    size: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 6,
                                                  bottom: 6,
                                                  child: ARoundedContainer(
                                                    width: 30,
                                                    height: 30,
                                                    radius: 100,
                                                    backgroundColor:
                                                        AColors.primaryColor,
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(
                                            height: ASizes.spaceBtwItems,
                                          ),

                                          /// Title + Price
                                          SizedBox(
                                            width: 100,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${item.title} - ${(section['name'] == 'Meat & Seafoods') ? '${item.memory}${item.colorName}' : '${item.quantity}${item.quantityUnit}'}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  '\$${item.price}',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),

                              const SizedBox(height: ASizes.spaceBtwSections),
                            ],
                          );
                        }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

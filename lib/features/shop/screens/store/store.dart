import 'package:e_commerce_app/common/widget/appbar/appbar.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/container/search_containers.dart';
import 'package:e_commerce_app/common/widget/images/circular_images.dart';
import 'package:e_commerce_app/common/widget/products.dart/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/store_app_bar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Sappbar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterWidget(onPreseed: () {}, iconColor: TColors.primary)
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      //-------------------Search Bar -----------------
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      SearchContainer(
                        txt: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      //-----------------------Feature Brands--------------------//

                      SectionHeading(
                        title: "Features",
                        onpressed: () {},
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      RoundedContainer(
                        padding: EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backGroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            //----------------ICon--------------
                            CircularImages(
                              isNetworkImage: false,
                              image: TImages.clothIcon,
                              backGroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context)
                                  ? TColors.white
                                  : TColors.black,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Column()),
    );
  }
}

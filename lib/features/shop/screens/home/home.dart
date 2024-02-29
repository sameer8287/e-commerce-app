// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widget/images/rounded_images.dart';
import 'package:e_commerce_app/common/widget/layouts/grid_layouts.dart';
import 'package:e_commerce_app/common/widget/products.dart/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_app/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/container/search_containers.dart';
import 'package:e_commerce_app/common/widget/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/size.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------------------- Header For Home Page -------------//
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  //---------------search bar---------------------------//
                  SizedBox(
                    height: Tsize.spaceBtwSections,
                  ),
                  SearchContainer(
                    txt: 'Search in store',
                  ),
                  SizedBox(
                    height: Tsize.spaceBtwSections,
                  ),
                  //-------------------Categories ---------------//
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //-------------Heading ------------------
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        HomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            //------------------------- Body --------------------//

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(
                    banners: [
                      //-------------------Promo Slider------------------//
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  SectionHeading(title: "Popular Products", onpressed: () {}),
                  SizedBox(height: TSizes.spaceBtwItems),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

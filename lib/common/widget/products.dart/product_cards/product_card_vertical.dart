import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widget/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widget/images/rounded_images.dart';
import 'package:e_commerce_app/common/widget/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: THelperFunctions.isDarkMode(context)
                ? TColors.darkerGrey
                : TColors.white),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backGroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //-----------------Thumbnail Image----------------------//
                  RoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  //----------------Sales Tag-----------------------------//
                  RoundedContainer(
                    radius: TSizes.sm,
                    backGroundColor: TColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),

                  //-------------------Favourite Icon Button----------------------//
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart1,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            //---------------Details---------------------------//
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: Text('35.5',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius))),
                  child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: const Icon(
                        Iconsax.add,
                        color: Colors.white,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

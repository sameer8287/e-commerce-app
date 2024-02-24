import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widget/images/rounded_images.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final promoController = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (url) => RoundedImage(
                  imageUrl: url,
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              promoController.updatePageIndicator(index);
            },
          ),
        ),
        const SizedBox(height: Tsize.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor:
                        promoController.carousalCurrentIndex.value == i
                            ? TColors.primary
                            : TColors.grey,
                    margin: const EdgeInsets.only(right: 10),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

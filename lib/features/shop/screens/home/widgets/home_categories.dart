import 'package:e_commerce_app/common/widget/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              textColor: TColors.white,
              image: TImages.shoeIcon,
              title: 'Shoes',
              backGround: TColors.white,
              onTap: () {},
            );
          }),
    );
  }
}

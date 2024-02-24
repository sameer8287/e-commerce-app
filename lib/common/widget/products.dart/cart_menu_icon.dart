import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterWidget extends StatelessWidget {
  const CartCounterWidget(
      {super.key, required this.onPreseed, required this.iconColor});

  final Color? iconColor;
  final VoidCallback onPreseed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_bag,
              color: TColors.white,
            )),
        Positioned(
            child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
              color: TColors.black, borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              "2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: TColors.white, fontSizeFactor: 0.8),
            ),
          ),
        ))
      ],
    );
  }
}

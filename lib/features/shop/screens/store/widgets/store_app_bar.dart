import 'package:e_commerce_app/common/widget/appbar/appbar.dart';
import 'package:flutter/material.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Sappbar(
      title: Text("Store"),
    );
  }
}

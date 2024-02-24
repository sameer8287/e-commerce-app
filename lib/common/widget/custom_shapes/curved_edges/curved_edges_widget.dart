import 'package:e_commerce_app/common/widget/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomCurvedEdges(), child: child);
  }
}

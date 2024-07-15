import 'package:dashboard/constants/constants.dart';
import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const Customcard({super.key,
  required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)
        ),
        color: color?? cardBacgroundColor,
      ),
      child: Padding(padding: padding?? EdgeInsets.all(12),
      child: child,),
    );
  }
}
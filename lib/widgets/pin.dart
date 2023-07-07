import 'package:flutter/material.dart';
import 'package:ticket/utils/app_styles.dart';

class TiPin extends StatelessWidget {
  const TiPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Styles.textColor, width: 2)),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: Styles.textColor,
        ));
  }
}

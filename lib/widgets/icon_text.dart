import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_styles.dart';

class TiIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const TiIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(children: [
        Icon(
          icon,
          color: const Color(0xFFbfc2df),
        ),
        const Gap(10),
        Text(
          text,
          style: Styles.textStyle,
        ),
      ]),
    );
  }
}

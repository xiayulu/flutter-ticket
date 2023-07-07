import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_styles.dart';

Map<String, CrossAxisAlignment> alignOptions = {
  'center': CrossAxisAlignment.center,
  'start': CrossAxisAlignment.start,
  'end': CrossAxisAlignment.end
};

class TiDoubleText extends StatelessWidget {
  final String title;
  final String subtitle;
  final String align;

  const TiDoubleText({
    super.key,
    required this.title,
    required this.subtitle,
    this.align = 'center',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignOptions[align]!,
      children: [
        Text(title, style: Styles.headLineStyle3.copyWith(color: Colors.black)),
        const Gap(5),
        Text(
          subtitle,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}

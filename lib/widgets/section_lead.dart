import 'package:flutter/material.dart';
import 'package:ticket/utils/app_styles.dart';

class TiSectionLead extends StatelessWidget {
  final String title;
  const TiSectionLead({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("view More");
          },
          child: Text(
            "View All",
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}

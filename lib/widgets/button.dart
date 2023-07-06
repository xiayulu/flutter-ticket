import 'package:flutter/material.dart';
import 'package:ticket/utils/app_styles.dart';

Map<String, dynamic> typeList = {
  'primary': {
    'bgColor': const Color(0xD91130ce),
    'textColor': Colors.white,
  },
};

class TiButton extends StatelessWidget {
  final String text;
  final String type;
  const TiButton({super.key, required this.text, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: typeList[type]['bgColor'],
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle.copyWith(color: typeList[type]['textColor']),
        ),
      ),
    );
  }
}

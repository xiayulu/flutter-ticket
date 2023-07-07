import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';

class TiTabs extends StatelessWidget {
  final String first;
  final String second;
  const TiTabs({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xFFf4f6fd),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(children: [
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50))),
            child: Center(child: Text(first)),
          ),
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50))),
            child: Center(child: Text(second)),
          ),
        ]),
      ),
    );
  }
}

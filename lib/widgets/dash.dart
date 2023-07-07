import 'package:flutter/material.dart';

class TiDash extends StatelessWidget {
  final double solid;
  final double blank;
  final Color color;
  const TiDash(
      {super.key, this.color = Colors.white, this.solid = 3, this.blank = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
          (constraints.constrainWidth() / (solid + blank)).floor(),
          (index) => SizedBox(
              width: solid,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              )),
        ),
      ),
    );
  }
}

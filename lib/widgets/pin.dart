import 'package:flutter/material.dart';

class TiPin extends StatelessWidget {
  const TiPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: SizedBox(
        width: 20,
        height: 20,
        child: DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 5, color: Colors.white),
              color: Colors.black),
        ),
      ),
    );
  }
}

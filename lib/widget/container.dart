import 'package:flutter/material.dart';

class ContainerProduct extends StatelessWidget {
  final String gambar;
  const ContainerProduct({
    Key? key,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 243,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(gambar),
    );
  }
}

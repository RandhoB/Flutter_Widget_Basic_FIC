import 'package:flutter/material.dart';

class ContainerMenu extends StatelessWidget {
  final String namaMenu;
  const ContainerMenu({
    super.key,
    required this.namaMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 33,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(namaMenu),
      ),
    );
  }
}

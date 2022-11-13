import 'package:flutter/material.dart';

class ContainerMenu extends StatelessWidget {
  final String namaMenu;
  final bool isChoose;
  const ContainerMenu({
    super.key,
    required this.namaMenu,
    required this.isChoose,
  });

  @override
  Widget build(BuildContext context) {
    return isChoose
        ? Container(
            width: 70,
            height: 33,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(namaMenu),
            ),
          )
        : Text(namaMenu);
  }
}

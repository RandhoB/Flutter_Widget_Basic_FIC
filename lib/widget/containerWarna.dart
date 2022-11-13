import 'package:flutter/material.dart';

class ContainerWarna extends StatelessWidget {
  final Color warna;
  final bool isChoose;
  const ContainerWarna({
    super.key,
    required this.warna,
    required this.isChoose,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: isChoose
          ? Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: warna),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: warna),
                ),
              ],
            )
          : Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: warna),
            ),
    );
  }
}

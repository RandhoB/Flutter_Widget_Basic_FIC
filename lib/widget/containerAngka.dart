import 'package:flutter/material.dart';

class ContainerAngka extends StatelessWidget {
  const ContainerAngka({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 28,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              border: Border.all(color: Colors.grey),
              color: Colors.white,
            ),
            child: Center(child: Text('-'))),
        Container(
          width: 35,
          height: 25,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Center(child: Text('2')),
        ),
        Container(
            width: 28,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              border: Border.all(color: Colors.grey),
              color: Colors.white,
            ),
            child: Center(child: Text('+'))),
      ],
    );
  }
}

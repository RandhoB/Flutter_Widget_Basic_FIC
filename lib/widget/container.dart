import 'package:flutter/material.dart';

class ContainerProduct extends StatelessWidget {
  final String gambar;
  const ContainerProduct({
    Key? key,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          width: 185,
          height: 243,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                gambar,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Stylish Chair'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$170'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/Icon-star.png',
                        height: 15,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text('4.8')
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}

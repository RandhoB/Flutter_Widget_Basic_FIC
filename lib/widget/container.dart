import 'package:flutter/material.dart';
import 'package:flutter_widget_basic_fic/pages/detailProduct.dart';

class ContainerProduct extends StatelessWidget {
  final String gambar;
  final String nama;
  final String harga;
  final String rating;
  const ContainerProduct({
    Key? key,
    required this.gambar,
    required this.nama,
    required this.harga,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailProduct()),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              width: 185,
              height: 243,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    gambar,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nama),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              harga,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
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
                                Text(
                                  rating,
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/Icon-Favorite.png',
                width: 34,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_basic_fic/widget/containerAngka.dart';
import 'package:flutter_widget_basic_fic/widget/containerWarna.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/furniture5.png',
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 350,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 9,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 5,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xffD8D8D8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wooden Coff',
                              style: TextStyle(fontSize: 22),
                            ),
                            Text(
                              '\$240',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Icon-star.png',
                              width: 18,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/Icon-star.png',
                              width: 18,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/Icon-star.png',
                              width: 18,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/Icon-star.png',
                              width: 18,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/Icon-star-grey.png',
                              width: 18,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Choose a color :',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                ContainerWarna(
                                  warna: Colors.grey,
                                  isChoose: true,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ContainerWarna(
                                    warna: Colors.orange, isChoose: false),
                                const SizedBox(
                                  width: 10,
                                ),
                                ContainerWarna(
                                    warna: Colors.black, isChoose: false),
                                const SizedBox(
                                  width: 10,
                                ),
                                ContainerWarna(
                                    warna: Colors.brown, isChoose: false),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Select Quality :',
                                style: TextStyle(color: Colors.grey)),
                            ContainerAngka(),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                            'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                            style: TextStyle(color: Colors.grey)),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 48,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                              ),
                              onPressed: () {},
                              child: const Text('Add To Cart'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/Icon-Back.png',
                      width: 23,
                      height: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Detail',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Icon-Favorite.png',
                        width: 50,
                        height: 38,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/Icon-Share.png',
                        width: 23,
                        height: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_basic_fic/widget/bottomNavBar.dart';
import 'package:flutter_widget_basic_fic/widget/container.dart';
import 'package:flutter_widget_basic_fic/widget/containerMenu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 22,
                    height: 18,
                    child: Image.asset('assets/Icon.png'),
                  ),
                  const Text('Home'),
                  SizedBox(
                    width: 22,
                    height: 18,
                    child: Image.asset('assets/Icon-Search.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListView(
                  children: [
                    const Text('Discover the most\nmodern furniture'),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const ContainerMenu(
                            namaMenu: 'All',
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          const ContainerMenu(
                            namaMenu: 'Living Room',
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          const ContainerMenu(
                            namaMenu: 'Bedroom',
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          const ContainerMenu(
                            namaMenu: 'Dining Room',
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          const ContainerMenu(
                            namaMenu: 'Kitchen',
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Recommended Furnitures'),
                    const SizedBox(
                      height: 19,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const ContainerProduct(
                          gambar: 'assets/furniture1.png',
                        ),
                        const ContainerProduct(
                          gambar: 'assets/furniture2.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const ContainerProduct(
                          gambar: 'assets/furniture3.png',
                        ),
                        const ContainerProduct(
                          gambar: 'assets/furniture4.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 40,
        //   vertical: 14,
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const BottomNavBarProduct(
              imageNavbar: 'assets/Navbar-Home.png',
              isActive: true,
            ),
            const BottomNavBarProduct(
              imageNavbar: 'assets/Navbar-Shop.png',
              isActive: false,
            ),
            const BottomNavBarProduct(
              imageNavbar: 'assets/Navbar-Star.png',
              isActive: false,
            ),
            const BottomNavBarProduct(
              imageNavbar: 'assets/Navbar-People.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_basic_fic/widget/bttomNavBar.dart';
import 'package:flutter_widget_basic_fic/widget/container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(),
            Text('data'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
            Text('data'),
            ContainerProduct(),
            BottomNavBarProduct(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomNavBarProduct extends StatefulWidget {
  const BottomNavBarProduct({Key? key}) : super(key: key);

  @override
  State<BottomNavBarProduct> createState() => _BottomNavBarProductState();
}

class _BottomNavBarProductState extends State<BottomNavBarProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

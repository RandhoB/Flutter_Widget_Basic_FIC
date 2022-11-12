import 'package:flutter/material.dart';

class ContainerProduct extends StatefulWidget {
  const ContainerProduct({Key? key}) : super(key: key);

  @override
  State<ContainerProduct> createState() => _ContainerProductState();
}

class _ContainerProductState extends State<ContainerProduct> {
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

import 'package:flutter/material.dart';

class inclusiveTax extends StatefulWidget {
  const inclusiveTax({super.key});

  @override
  State<inclusiveTax> createState() => _inclusiveTaxState();
}

class _inclusiveTaxState extends State<inclusiveTax> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
    body: const Center(
    child: Text('things'),
    ),);
  }
}

import 'package:flutter/material.dart';
import 'package:vat_calculator/model/theme/theme.dart';

class inclusiveTax extends StatefulWidget {
  const inclusiveTax({super.key});

  @override
  State<inclusiveTax> createState() => _inclusiveTaxState();
}

class _inclusiveTaxState extends State<inclusiveTax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inclusive Vat'),
      ),
      body:  Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Gross Amount', style: lightTheme.textTheme.displayMedium ),

              ),
            )
          ],
        )
      ),
    );
  }
}

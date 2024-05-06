import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vat_calculator/model/theme/theme.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('App Under Construction 🚧', style: lightTheme.textTheme.displayLarge),
      ),
    );
  }
}

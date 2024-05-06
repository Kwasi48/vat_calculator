//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:vat_calculator/model/theme/theme.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VAT CALCULATOR', style: lightTheme.textTheme.displayLarge,),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 200,),
               SizedBox(
                 height: 90, width: 200,
                   child: standardRate('Standard Rate')),
              SizedBox(height: 14,),
              SizedBox(
                  height: 90, width: 200,
                  child: flatRate('Flat Rate')),
            ],
          ),
        ),
      )
    );
  }

  Widget standardRate (String text){
    return ElevatedButton(onPressed: (){},
      child: Text(text),
    );
  }

  Widget flatRate (String text){
    return ElevatedButton(onPressed: (){},
      child: Text(text),
    );
  }
}

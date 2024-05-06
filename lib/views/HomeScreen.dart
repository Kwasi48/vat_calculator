import 'package:flutter/material.dart';
import 'package:vat_calculator/model/theme/theme.dart';
import 'package:vat_calculator/views/flatrate.dart';
import 'package:vat_calculator/views/stanrate.dart';


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
                   child: standardRate('Standard Rate', context)),
              SizedBox(height: 14,),
              SizedBox(
                  height: 90, width: 200,
                  child: flatRate('Flat Rate', context)),
            ],
          ),
        ),
      )
    );
  }

  Widget standardRate (String text, BuildContext context){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const standardScreen()));
    },
      child: Text(text),
    );
  }

  Widget flatRate (String text, BuildContext context){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const flatrateScreen()));
    },
      child: Text(text),
    );
  }
}

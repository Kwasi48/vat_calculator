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
        title: Text('Vat Calculator', style: lightTheme.textTheme.displayLarge,),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 200,),
               SizedBox(
                 height: 90, width: 200,
                   child: standardRate('Standard Rate', context)),
              const SizedBox(height: 14,),
              SizedBox(
                  height: 90, width: 200,
                  child: flatRate('Flat Rate', context)),
              const SizedBox(height: 16,),
              const SizedBox(
                  child: Expanded(
                    child: Text('NB: Use Standard Rate when Amount is 50,000 onwards.'
                        ' Calculations may deviate a bit due to yearly Reviews of Rates.'
                      ' Keep Application Updated to get accurate Calculations', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ),

              )
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

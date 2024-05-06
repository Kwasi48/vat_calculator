import 'package:flutter/material.dart';
import 'package:vat_calculator/views/inclusive.dart';

import 'exclusive.dart';

class standardScreen extends StatelessWidget {
  const standardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 300,),
              SizedBox(
                height: 90, width: 200,
                child: inclusiveRate('Inclusive', context),
              ),
              SizedBox(height: 14,),
              SizedBox(
                height: 90, width: 200,
                child:  exclusiveRate('Exclusive', context),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget inclusiveRate (String text, BuildContext context){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const inclusiveTax()));
    },
      child: Text(text),
    );
  }

  Widget exclusiveRate (String text, BuildContext context){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const exclusiveTax()));
    },
      child: Text(text),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vat_calculator/views/inclusive.dart';

import 'exclusive.dart';

class standardScreen extends StatefulWidget {
  const standardScreen({super.key});

  @override
  State<standardScreen> createState() => _standardScreenState();
}

class _standardScreenState extends State<standardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standard Rate'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 250,),
              SizedBox(
                height: 90, width: 200,
                child: inclusiveRate('Inclusive', context),
              ),
              const SizedBox(height: 14,),
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
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => exclusiveTax()));
    },
      child: Text(text),
    );
  }


}

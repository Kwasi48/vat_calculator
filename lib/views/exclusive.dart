import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../model/classes/inclucalc.dart';

class exclusiveTax extends StatefulWidget {
   exclusiveTax({super.key});



  @override
  State<exclusiveTax> createState() => _exclusiveTaxState();
}

class _exclusiveTaxState extends State<exclusiveTax> {

  double? userInput;
  String? message;
  final _formKeyex = GlobalKey<FormFieldState>();

  @override
  void initState(){
    userInput = 0.0;
    message = '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exclusive Vat')
        ),
        body:  Center(
          child:  SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: FormBuilder(
                    key : _formKeyex,
                    child: Column(
                      children: [
                        FormBuilderTextField(name: 'Gross Amount',
                        decoration: const InputDecoration(
                          hintText: 'Enter gross amount',
                          labelText: 'Gross Amount'
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (text){
                          var inputed = double.tryParse(text!);
                          if (inputed != null){
                            setState(() {
                            userInput = inputed;
                            });
    }
                          }
     ,)

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
                SizedBox(
                  height: 200,
                  width: 400,
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(60),
                      child: Text(
                        message!,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                calculateInclusive('Compute', context, userInput!),
                SizedBox(height: 100,)
              ],
            ),
          )
        ));
  }

  Widget calculateInclusive(String text, BuildContext context, double input) {
    return ElevatedButton(
        onPressed: () {
          //input = VatCal.gross;
          VatInclusive inclusive = VatInclusive(input);
          setState(() {
            message = inclusive.inclusive(input).toString();
          });
        },
        child: Text(text));
  }
}

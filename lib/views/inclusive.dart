import 'package:flutter/material.dart';
import 'package:vat_calculator/model/classes/vat.dart';
//import 'package:vat_calculator/model/theme/theme.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class inclusiveTax extends StatefulWidget {
  const inclusiveTax({super.key});

  @override
  State<inclusiveTax> createState() => _inclusiveTaxState();
}

class _inclusiveTaxState extends State<inclusiveTax> {
  var VatCal = Vat(gross!);
 final _formKey = GlobalKey<FormFieldState>();
  static double? get gross => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inclusive Vat'),
      ),
      body: Column(
        children: [
          Center(
              child:FormBuilder(
                key: _formKey, child: Column(
                children: [

                  FormBuilderTextField(name: 'Gross Amount',
                  decoration: const InputDecoration(hintText: 'Enter gross amount',
                  labelText: 'Gross Amount'),
                  keyboardType: TextInputType.number,)
                ],
              ),
              )
          ),
          const SizedBox(height: 100,),
          const SizedBox(
            height: 200, width: 400,
            child: Card(child: Text('0.0', style: TextStyle(fontSize: 50),),
            ),
          )
        ],
      ),
    );
  }
}

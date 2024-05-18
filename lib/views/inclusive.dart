import 'package:flutter/material.dart';
import 'package:vat_calculator/model/classes/inclucalc.dart';
import 'package:vat_calculator/model/classes/vat.dart';
//import 'package:vat_calculator/model/theme/theme.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class inclusiveTax extends StatefulWidget {
  const inclusiveTax({super.key});

  @override
  State<inclusiveTax> createState() => _inclusiveTaxState();
}

class _inclusiveTaxState extends State<inclusiveTax> {
  String? message;
  double? userInput;
  var VatCal = Vat();
  final _formKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    userInput = 0.0;
    message = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inclusive Vat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'Gross Amount',
                    decoration: const InputDecoration(
                        hintText: 'Enter gross amount',
                        labelText: 'Gross Amount'),
                    keyboardType: TextInputType.number,
                    onChanged: (text) {
                      var inputed = double.tryParse(text!);
                      if (inputed != null) {
                        setState(() {
                          userInput = inputed;
                        });
                      }
                    },
                  )
                ],
              ),
            )),
            const SizedBox(
              height: 100,
            ),
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
            const SizedBox(
              height: 70,
            ),
            calculateInclusive('Compute', context, userInput!),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget calculateInclusive(String text, BuildContext context, double input) {
    return ElevatedButton(
        onPressed: () {
          //input = VatCal.gross;
          VatInclusive inclusive = VatInclusive(input);
          setState(() {
            message = inclusive.inclusive(input).toStringAsFixed(2);
          });
        },
        child: Text(text));
  }
}

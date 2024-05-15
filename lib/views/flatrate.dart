import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vat_calculator/model/classes/flatcalc.dart';

class flatrateScreen extends StatefulWidget {
  const flatrateScreen({super.key});

  @override
  State<flatrateScreen> createState() => _flatrateScreenState();
}

class _flatrateScreenState extends State<flatrateScreen> {
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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Center(
                child: FormBuilder(
                  key: _formKeyex,
                  child: Column(
                      children: [
                        FormBuilderTextField(name: 'Gross Amount',
                          decoration: const InputDecoration(
                              hintText: 'Enter gross amount',
                              labelText: 'Gross Amount'
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            var inputed = double.tryParse(text!);
                            if (inputed != null) {
                              setState(() {
                                userInput = inputed;
                              });
                            }
                          }
                          ,),
                      ]
                  ),

                ),
              ),
              const SizedBox(height: 100,),
              SizedBox(
                height: 200,
                width: 400,
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(60),
                    child: Text(
                      message!,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              calculateInclusive('Compute', context, userInput!),
              const SizedBox(height: 100,)
            ]
        ),
      ),
    );
  }
  Widget calculateInclusive(String text, BuildContext context, double input) {
    return ElevatedButton(
        onPressed: () {
          //input = VatCal.gross;

          Flatcalc flatrate = Flatcalc(input);
          setState(() {
            message = flatrate.flatVat(input).toString();
          });
        },
        child: Text(text));
  }
}
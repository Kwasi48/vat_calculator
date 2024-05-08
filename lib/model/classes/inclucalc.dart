

import 'package:vat_calculator/model/classes/vat.dart';

class VatInclusive extends Vat{
  VatInclusive(super.nhil, super.getFund, super.covid, super.vat, {required super.gross});



  double inclusive (){
    double vatTotal = vatAmount(gross as int, vat);
    double vatdeduct =  gross - vatTotal ;
    double nhilTax = (nhil + 6) * vatdeduct;
    double getFundTax = (nhil + 6) * gross;
    double covidTax = (nhil + 6) * gross;

    double totalTax = nhilTax + getFundTax + covidTax ;
    return totalTax;
  }
}
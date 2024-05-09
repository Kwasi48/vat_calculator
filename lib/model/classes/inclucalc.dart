

import 'package:vat_calculator/model/classes/vat.dart';

class VatInclusive extends Vat{
  VatInclusive(super.gross);



  double inclusive (){
    double vatTotal = vatAmount(gross as int, vat);
    double vatdeduct =  gross - vatTotal ;
    double nhilTax = (nhil + 6) * vatdeduct;
    double getFundTax = (nhil + 6) * vatdeduct;
    double covidTax = (nhil + 6) * vatdeduct;

    double totalTax = nhilTax + getFundTax + covidTax + vatTotal ;
    return totalTax;
  }
}
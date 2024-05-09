

import 'package:vat_calculator/model/classes/vat.dart';

class VatInclusive extends Vat{
  VatInclusive(double gross);



  double inclusive (double gross){
    double vatTotal = vatAmount(gross, vat);
    double vatdeduct =  gross - vatTotal ;
    double nhilTax = (nhil + 6) * vatdeduct;
    double getFundTax = (nhil + 6) * vatdeduct;
    double covidTax = (nhil + 6) * vatdeduct;

    double totalTax = nhilTax + getFundTax + covidTax + vatTotal ;
    return totalTax.roundToDouble();
  }
}
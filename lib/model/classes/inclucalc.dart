

import 'package:vat_calculator/model/classes/vat.dart';

class VatInclusive extends Vat{
  VatInclusive(double gross);



  double inclusive (double gross){
    double vatTotal = vatAmount(gross, vat);
    double vatDeduct =  gross - vatTotal ;
    double nhilTax = (nhil ) * vatDeduct;
    double getFundTax = (getFund ) * vatDeduct;
    double covidTax = (covid) * vatDeduct;

    double totalTax = nhilTax + getFundTax + covidTax + vatTotal ;
    return totalTax.roundToDouble();
  }
}
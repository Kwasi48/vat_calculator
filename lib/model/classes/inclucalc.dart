

import 'package:vat_calculator/model/classes/vat.dart';

class VatInclusive extends Vat{
  VatInclusive(double gross);



  double inclusive (double gross){
    double vatTotal = vatAmount(gross, vat);
    double vatdeduct =  gross - vatTotal ;
    double nhilTax = (nhil ) * vatdeduct;
    double getFundTax = (nhil ) * vatdeduct;
    double covidTax = (nhil ) * vatdeduct;

    double totalTax = nhilTax + getFundTax + covidTax + vatTotal ;
    return totalTax.roundToDouble();
  }
}
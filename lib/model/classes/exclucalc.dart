

import 'package:vat_calculator/model/classes/vat.dart';

class VatExclusive extends Vat {
  VatExclusive(double gross);

  double exclusive (double gross){
    double nhilTax = nhil * gross;
    double getFundTax = getFund * gross;
    double covidTax = covid * gross;

    double addToGross = nhilTax + getFundTax + covidTax + gross;
    double vatTotal = vat * addToGross;
    double totalTax = nhilTax + getFundTax + covidTax +vatTotal;

    return totalTax.roundToDouble();
  }

}
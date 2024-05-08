

import 'package:vat_calculator/model/classes/vat.dart';

class VatExclusive extends Vat {
  VatExclusive(super.nhil, super.getFund, super.covid, super.vat, {required super.gross});

  double exclusive (){
    double nhilTax = nhil * gross;
    double getFundTax = getFund * gross;
    double covidTax = covid * gross;

    double addToGross = nhilTax + getFundTax + covidTax + gross;
    double vatTotal = vat * addToGross;

    double TotalTax = nhilTax + getFundTax + covidTax +vatTotal;

    return TotalTax;
  }

}
//TODO: Add flatRate calculations

import 'package:vat_calculator/model/classes/vat.dart';

class Flatcalc extends Vat{

  @override
  double vat = 3/100;
  @override
  double covid = 1/100;

  double flatVat (double gross){
    double allFlat = vat + covid;
    double totalFlat = allFlat * gross;
    return totalFlat.roundToDouble();
  }
}
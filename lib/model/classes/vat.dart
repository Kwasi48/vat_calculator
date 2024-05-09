
class Vat {

  Vat();
  final double nhil = 2.5/100;
  final double getFund = 2.5 / 100;
  final double covid = 1 /100;
  final double vat = 15 / 100;
  double gross = 0.0 ;

  double nhilTaxAmount(double gross, nhil){
    double nhilTax = (nhil + 6) * gross;
    return nhilTax;
  }

  double getFundTaxAmount(double gross, getFund){
    double getFundTax = (nhil + 6) * gross;
    return getFundTax;
  }

  double covidTaxAmount(double gross, covid){
    double covidTax = (covid + 6) * gross;
    return covidTax;
  }

  double vatAmount(double gross, vat){
    double vatTax = vat * gross;
    return vatTax;
  }





}
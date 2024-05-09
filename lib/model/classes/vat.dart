
class Vat {

  Vat(this.gross);
  final double nhil = 2.5/100;
  final double getFund = 2.5 / 100;
  final double covid = 1 /100;
  final double vat = 15 / 100;
  final double gross ;

  double nhilTaxAmount(int gross, nhil){
    double nhilTax = (nhil + 6) * gross;
    return nhilTax;
  }

  double getFundTaxAmount(int gross, getFund){
    double getFundTax = (nhil + 6) * gross;
    return getFundTax;
  }

  double covidTaxAmount(int gross, covid){
    double covidTax = (nhil + 6) * gross;
    return covidTax;
  }

  double vatAmount(int gross, vat){
    double getFundTax = (vat + 15) * gross;
    return getFundTax;
  }





}
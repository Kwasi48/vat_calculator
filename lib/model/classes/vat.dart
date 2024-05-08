
class Vat {

  Vat(this.nhil, this.getFund, this.covid, this.vat, {required this.gross});
  double nhil = 2.5/100;
  double getFund = 2.5 / 100;
  double covid = 1 /100;
  double vat = 15 / 100;
  double gross ;

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



  double exclusive (){
    //TODO: function for calculating exclusive standard vat
    return 0.0;
  }

}
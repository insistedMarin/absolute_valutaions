import 'package:managementdemo/Computation/computation.dart';

class  STdebtCapital_calc{

  double shotTimeLoan;
  double interestPayable;
  double shortTimeBondsPayable;
  double tradingFinancialLiabilitiesz;
  double holdingLiabilitiesForSale;
  double nonCurrentLiabilitiesWithinYear;


  void getSTloan(String a,String b,String c,String d,String e,String f){
    shotTimeLoan=double.parse(a);
    interestPayable=double.parse(b);
    shortTimeBondsPayable=double.parse(c);
    tradingFinancialLiabilitiesz=double.parse(d);
    holdingLiabilitiesForSale=double.parse(e);
    nonCurrentLiabilitiesWithinYear=double.parse(f);
  }
  bool isNonZero()
  {
    if(shotTimeLoan*interestPayable*shortTimeBondsPayable*tradingFinancialLiabilitiesz*holdingLiabilitiesForSale*nonCurrentLiabilitiesWithinYear != 0)
      {
        return true;
      }
    return false;
  }
  void STdebtCapital(){
    Computaiton.STDCapital=shotTimeLoan + interestPayable + shortTimeBondsPayable + tradingFinancialLiabilitiesz + holdingLiabilitiesForSale + nonCurrentLiabilitiesWithinYear;
  }
}
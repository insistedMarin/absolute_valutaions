import 'package:managementdemo/Computation/computation.dart';

class  STdebtCapital{

  double shotTimeLoan; //短期借款
  double interestPayable; //应付利息
  double shortTimeBondsPayable; //应付短期债券
  double tradingFinancialLiabilitiesz; //交易性金融负债
  double holdingLiabilitiesForSale; //划分为持有待售负债
  double nonCurrentLiabilitiesWithinYear; //一年内到期的非流动负债

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
  void STdebtCapital_calc(){
    Computaiton.STDCapital=shotTimeLoan + interestPayable + shortTimeBondsPayable + tradingFinancialLiabilitiesz + holdingLiabilitiesForSale + nonCurrentLiabilitiesWithinYear;
  }
}
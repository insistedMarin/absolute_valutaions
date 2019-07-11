import 'package:managementdemo/Computation/computation.dart';

class  STdebtCapital{

  double shotTimeLoan; //短期借款
  double interestPayable; //应付利息
  double shortTimeBondsPayable; //应付短期债券
  double tradingFinancialLiabilitiesz; //交易性金融负债
  double holdingLiabilitiesForSale; //划分为持有待售负债
  double nonCurrentLiabilitiesWithinYear; //一年内到期的非流动负债

  bool getSTloan(String a,String b,String c,String d,String e,String f){
    if(a.length * b.length * c.length * d.length * e.length * f.length == 0 )
      {
        return false;
      }
    shotTimeLoan=double.parse(a);
    interestPayable=double.parse(b);
    shortTimeBondsPayable=double.parse(c);
    tradingFinancialLiabilitiesz=double.parse(d);
    holdingLiabilitiesForSale=double.parse(e);
    nonCurrentLiabilitiesWithinYear=double.parse(f);
//    print("shotTimeLoan = " + shotTimeLoan.toString());
//    print("shotTimeLoan = " + shotTimeLoan.toString());
//    print("shotTimeLoan = " + shotTimeLoan.toString());
//    print("shotTimeLoan = " + shotTimeLoan.toString());
//    print("shotTimeLoan = " + shotTimeLoan.toString());
//    print("shotTimeLoan = " + shotTimeLoan.toString());
    return true;
  }

  void STdebtCapital_calc(){
    Computaiton.STDCapital=shotTimeLoan + interestPayable + shortTimeBondsPayable + tradingFinancialLiabilitiesz + holdingLiabilitiesForSale + nonCurrentLiabilitiesWithinYear;
  }
}
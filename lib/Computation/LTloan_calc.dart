import 'package:managementdemo/Computation/computation.dart';
class  LTdebtCapital_calc{
  double longTimeLoan; //长期借款
  double bondsPayable; //应付债券
  double longTimePayable; //长期应付款

  double interestExpense; //利息支出总额
  double incomeTax; //所得税
  double totalProfit; //利润总额

  void getLTloan(String a,String b,String c,String d,String e,String f){
    longTimeLoan=double.parse(a);
    bondsPayable=double.parse(b);
    longTimePayable=double.parse(c);
    interestExpense=double.parse(d);
    incomeTax=double.parse(e);
    totalProfit=double.parse(f);
  }
  bool isNonZero()
  {
    if( longTimeLoan*bondsPayable*longTimePayable*interestExpense*incomeTax*totalProfit  != 0)
    {
      return true;
    }
    return false;
  }

  void LTdebtCapital(){
    Computaiton.LTDCaptial= longTimeLoan + bondsPayable + longTimePayable;
    print(Computaiton.LTDCaptial);
  }
  double incomeTaxRate(){
    return incomeTax/totalProfit;
  }
}
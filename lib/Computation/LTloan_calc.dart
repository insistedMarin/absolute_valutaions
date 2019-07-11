import 'package:managementdemo/Computation/computation.dart';
class  LTdebtCapital{
  double longTimeLoan; //长期借款
  double bondsPayable; //应付债券
  double longTimePayable; //长期应付款

  double interestExpense; //利息支出总额
  double incomeTax; //所得税
  double totalProfit; //利润总额

  bool getLTloan(String a,String b,String c,String d,String e,String f){
    if(a.length * b.length * c.length * d.length * e.length * f.length == 0 )
    {
      return false;
    }
    longTimeLoan=double.parse(a);
    bondsPayable=double.parse(b);
    longTimePayable=double.parse(c);
    interestExpense=double.parse(d);
    incomeTax=double.parse(e);
    totalProfit=double.parse(f);
    return true;
  }

  void LTdebtCapital_Trans(){
    Computaiton.interestExpense = interestExpense;
  }

  void LTdebtCapital_Calc(){
    LTdebtCapital_Trans();
    Computaiton.LTDCaptial= longTimeLoan + bondsPayable + longTimePayable;
    Computaiton.incomeTaxRate = incomeTax/totalProfit;
  }


}
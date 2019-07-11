import 'package:managementdemo/Computation/computation.dart';

class growthRate_calc{
  double firstStageGrowthRate; //第一阶段增长率
  double secondStageGrowthRate; //第二阶段增长率
  String stockName; //股票名称
  double equityCapitalCostRate; //股权资本成本率

  void getGrowthRate(String a,String b,String c,String d){
    firstStageGrowthRate=double.parse(a);
    secondStageGrowthRate=double.parse(b);
    stockName=c;
    equityCapitalCostRate=double.parse(d);
  }

  void growthRate_Trans()
  {
    Computaiton.firstStageGrowthRate = firstStageGrowthRate;
    Computaiton.secondStageGrowthRate = secondStageGrowthRate;
    Computaiton.stockName = stockName;
    Computaiton.equityCapitalCostRate = equityCapitalCostRate;
  }
}
import 'package:managementdemo/Computation/computation.dart';
class FCF_calc{

double operatingCashFlow; //经营活动产生的现金流量净额
double impairmentOfAssets; //资产减值准备
double depreciationOfFixedAssets; //固定资产折旧
double amortizationOfIntangibleAssets; //无形资产摊销
double longTermAmortizationOfAmortizedAssets; //长期待摊销费用摊销
double lossOfOtherAssets; //固定资产长期资产和其他资产损失

bool getFCF(String a,String b,String c,String d,String e,String f){
  if(a.length * b.length * c.length * d.length * e.length * f.length == 0 )
  {
    return false;
  }
  operatingCashFlow=double.parse(a);
  impairmentOfAssets=double.parse(b);
  depreciationOfFixedAssets=double.parse(c);
  amortizationOfIntangibleAssets=double.parse(d);
  longTermAmortizationOfAmortizedAssets=double.parse(e);
  lossOfOtherAssets=double.parse(f);
  return true;
}

void freeCashFlow_calc(){
  Computaiton.FCF = operatingCashFlow - impairmentOfAssets - depreciationOfFixedAssets - amortizationOfIntangibleAssets - longTermAmortizationOfAmortizedAssets - lossOfOtherAssets;
  }
}


import 'package:managementdemo/Computation/computation.dart';
class FCF_calc{

double operatingCashFlow; //经营活动产生的现金流量净额
double impairmentOfAssets; //资产减值准备
double depreciationOfFixedAssets; //固定资产折旧
double amortizationOfIntangibleAssets; //无形资产摊销
double longTermAmortizationOfAmortizedAssets; //长期待摊销费用摊销
double lossOfOtherAssets; //固定资产长期资产和其他资产损失

void calculate(){
  Computaiton.LTDCaptial=Computaiton.LTDCaptial-1;
 print(Computaiton.LTDCaptial);
}}


import 'package:managementdemo/Computation/computation.dart';

class financialAsset_calc{
  double monetaryAssets; //金融资产
  double longTermEquityInvestment; //长期股权投资
  double minorityShareholdersEquity; //少数股东权益
  double totalShareholdersEquity; //股东权益合计
  double totalShareCapital; //总股本

  void getFinancialAsset(String a,String b,String c,String d,String e){
    monetaryAssets=double.parse(a);
    longTermEquityInvestment=double.parse(b);
    minorityShareholdersEquity=double.parse(c);
    totalShareholdersEquity=double.parse(d);
    totalShareCapital=double.parse(e);
  }

  void financialAsset_Transfer()
  {
    Computaiton.totalShareCapital = totalShareCapital; //传递总股本
    Computaiton.totalShareholdersEquity = totalShareholdersEquity; //传递股东权益合计
    Computaiton.monetaryAssets = monetaryAssets; //传递金融资产
    Computaiton.longTermEquityInvestment = longTermEquityInvestment; //传递长期股权投资
  }

  void minorityShareholderRatio_Calc() //计算少数股东比例
  {
    Computaiton.minorityShareholderRatio = minorityShareholdersEquity/totalShareholdersEquity;
  }
}
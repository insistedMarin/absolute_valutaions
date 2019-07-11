class Computaiton{
  static double STDCapital; //短期债务
  static double LTDCaptial; //长期债务
  static double interestExpense; //利息支出总额
  static double incomeTaxRate; //所得税税率
  static double FCF; //自由现金流
  static double minorityShareholderRatio; //少数股东比例
  static double totalShareCapital; //总股本
  static double totalShareholdersEquity; //股东权益合计
  static double monetaryAssets; //金融资产
  static double longTermEquityInvestment; //长期股权投资
  static double firstStageGrowthRate; //第一阶段增长率
  static double secondStageGrowthRate; //第二阶段增长率
  static String stockName; //股票名称
  static double equityCapitalCostRate; //股权资本成本率

  static double debtCapitalCostRate; //债务资本成本率
  static double debtCapital; //债务资本
  static double wacc; //WACC
  static String wacc_percent; //WACC百分比
  static double firstStageFreeCashFlowDiscountValue; //第一阶段现金流贴现值
  static double secondStageFreeCashFlowDiscountValue; //第二阶段现金流贴现值
  static double freeCashFlowPresentValue; //自由现金流现值
  static double equityValue; //股权价值
  static double companyValue; //公司价值
  static double stockPrice; //股票价格

  static double V4;

  static double debtCapitalCostRate_calc()//计算债务资本成本率
  {
    if(interestExpense == 0)
      {
        debtCapitalCostRate = interestExpense;
      }
    else
      {
        debtCapitalCostRate = interestExpense / (STDCapital + LTDCaptial);
      }
    return debtCapitalCostRate;
  }

  static double debtCapital_calc()//计算债务资本
  {
    debtCapital = STDCapital + LTDCaptial;
  }

  static double WACC_calc()//计算WACC
  {
    debtCapital_calc();
    debtCapitalCostRate_calc();
    double totalCapital = debtCapital + totalShareholdersEquity; //资本总额
    double debtRatio = debtCapital / totalCapital; //债务比例
    double equityRatio = totalShareholdersEquity / totalCapital; //股权比例
    debtCapitalCostRate_calc(); //债务资本成本率
    wacc = debtCapitalCostRate * debtRatio * (1 - incomeTaxRate) + equityCapitalCostRate * equityRatio;
    wacc_percent = (wacc * 100).toStringAsFixed(2) + "%";
    return wacc;
  }

  static double firstStageFreeCashFlowDiscountValue_calc()//计算第一阶段自由现金流贴现值
  {
    //WACC_calc();
    double V, V1, V2, V3;
    V = FCF * (1 + firstStageGrowthRate) / (1 + wacc);
    V1 = V * (1 + firstStageGrowthRate) / (1 + wacc);
    V2 = V1 * (1 + firstStageGrowthRate) / (1 + wacc);
    V3 = V2 * (1 + firstStageGrowthRate) / (1 + wacc);
    V4 = V3 * (1 + firstStageGrowthRate) / (1 + wacc);
    firstStageFreeCashFlowDiscountValue = V + V1 + V2 + V3 + V4;
    return firstStageFreeCashFlowDiscountValue;
  }

  static double secondStageFreeCashFlowDiscountValue_calc()//计算第二阶段自由现金流贴现值
  {
    if (wacc <= secondStageGrowthRate)
    {
      //printf("G2值不能大于WACC！");
      return 1;
    }

    secondStageFreeCashFlowDiscountValue = FCF * (1 + firstStageGrowthRate) * (1 + firstStageGrowthRate) * (1 + firstStageGrowthRate) * (1 + firstStageGrowthRate) * (1 + firstStageGrowthRate) / (wacc - secondStageGrowthRate) / ((1 + wacc) * (1 + wacc) * (1 + wacc) * (1 + wacc) * (1 + wacc));
    return secondStageFreeCashFlowDiscountValue;
  }

  static double freeCashFlowPresentValue_calc()//计算自由现金流现值
  {
    firstStageFreeCashFlowDiscountValue_calc();
    secondStageFreeCashFlowDiscountValue_calc();
    freeCashFlowPresentValue = firstStageFreeCashFlowDiscountValue + secondStageFreeCashFlowDiscountValue;
    return freeCashFlowPresentValue;
  }

  static double companyValue_calc() //计算公司价值
  {
    freeCashFlowPresentValue_calc();
    companyValue = monetaryAssets + longTermEquityInvestment + freeCashFlowPresentValue;
    return companyValue;
  }

  static double equityValue_calc()
  {
    companyValue_calc();
    equityValue = companyValue - debtCapital;
    return equityValue;
  }

  static double stockPrice_calc() //计算股票价值，直接调用这个函数即可
  {
    equityValue_calc();
    stockPrice = equityValue * (1 - minorityShareholderRatio)/ totalShareCapital;
  }

}

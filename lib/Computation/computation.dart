class Computaiton{
  static double STDCapital;
  static double LTDCaptial;
  static double IncomeTaxRate;
  static double interestExpense;
  static double DebtCostCapitalRatio;
  static void DebtCostCapitalRatioFunction(){
    DebtCostCapitalRatio=interestExpense/(STDCapital+LTDCaptial);
  }

}

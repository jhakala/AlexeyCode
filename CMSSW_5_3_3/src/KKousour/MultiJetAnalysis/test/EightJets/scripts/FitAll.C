#include "Fit.C"
void FitAll(TString HISTO)
{
  const int N = 12; 
  TString SET[N] = {"0400_133_040","0500_167_050","0600_200_060",
                    "0700_233_070","0800_267_080","0900_300_090",
                    "1000_333_100","1100_367_110","1200_400_120",
                    "1300_433_130","1400_467_140","1500_500_150"};
  for(int i=0;i<N;i++) {
    Fit(SET[i],HISTO);
  }  
}

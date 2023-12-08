# ANOVA
Examples of ANOVA
The data contained in the file “tips1.xlsm” relates to the tip amount (in dollars) collected by a waiter, who worked on four days (Thursday, Friday, Saturday and Sunday). Let us assume that these four days were the only days when the restaurant stayed open. The data contains 244 observations in all. The data also contains information on the total bill amount, sex of the payer, whether the group of customers contained a smoker, the time of the day (Lunch/ Dinner) and the size of the group. From this data, we generate a random sample of 120 observations by writing a macro in VBA and making use of the RANDBETWEEN function in Excel. The macro is contained in the file “tips1.xlsm”. The selected 120 observations are contained in the file “tips2_1way_UD_ANOVA_2.xlsx”. 
  The selected 120 observations are an example of unbalanced data as the number of observations for each of the days (Thursday, Friday, Saturday and Sunday) are unequal. The objective is to test whether the mean tip amount is the same for all the four days (H0). This is done by means of ANOVA of one-way classified data for a fixed effects model. The ANOVA calculations are contained in the sheet “ANOVA 1 WAY” in the file “tips2_1way_UD_ANOVA_2.xlsx”. The calculated value of F-statistic (2.55493) is given in cell C16 (highlighted in red). The critical value of F (2.68281) is given in cell C17. Since the calculated value of F is less than the critical value of F, we accept, at 5% level, the null hypothesis; that is, we accept that there is no significant difference in the mean tip amounts for the four different days (Thursday, Friday, Saturday and Sunday). The p-value of the test comes as 0.05875, given in cell C18 (highlighted in red). The same test using the same data is carried out in R. The R code is given in the file “aov_tips1.R”. The results from R are identical to those obtained in Excel.
  
  Next, we draw a balanced sample of 56 observations, in which each of the days Thursday, Friday, Saturday and Sunday occurs 14 times. The code for generating this random sample is contained in the file “tips2_V2.xlsm”. Note that in the original data of 244 observations, Thursday occurs 62 times, Friday occurs 19 times, Saturday occurs 87 times and Sunday occurs 76 times. Now if we are to generate 14 ones from among the 19 Fridays, using RANDBETWEEN, we need to incorporate a check in the code that at least 14 ones are generated for each of the days. The selected 56 observations are present in Sheet1 of the file “tips2_1way_BD.xlsx”. The ANOVA calculations for testing the null hypothesis (H0) that the mean tip amount for each of the four days is equal, under a fixed effects model, are shown in the sheet “ANOVA_BD” of the file “tips2_1way_BD.xlsx”. The calculated value of the  F statistic comes as 0.53772. The upper 5% value of F distribution with 3 and 52 degrees of freedom comes as 2.7826. So, we accept the null hypothesis of equality of mean tip amount, at 5% level. These results are confirmed by the R code given in the file “aov_tips2.R”. Note that the Shapiro-Wilk test rejects the null hypothesis of normality of the observations for both the samples. So, the results of the hypothesis testing for ANOVA may not be reliable. 
  Next, for the data containing unbalanced classes we remove the outliers from the dataset. This is where results of testing the null hypotheisis of equality of class means changes from acceptance of null hypothesis to rejection of null hypothesis. The complete analysis for the random sample containing unbalanced class sizes can be found in the file "Analysis for unbalanced data.docx".

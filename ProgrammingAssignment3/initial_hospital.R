setwd("/home/dorian/ProgrammingAssignment3/")
getwd()
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome) # variables
nrow(outcome) # measurements
names(outcome) # variable (column) names
# simple histogram of the 30-day death rates from heart attack (column 11 in the outcome dataset)
outcome[, 11] <- as.numeric(outcome[, 11]) # You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11], main=names(outcome)[11], xlab='30 days death mortality rates from heart attack')



# [1] "Provider.Number"                                                                      
# [2] "Hospital.Name"                                                                        
# [3] "Address.1"                                                                            
# [4] "Address.2"                                                                            
# [5] "Address.3"                                                                            
# [6] "City"                                                                                 
# [7] "State"                                                                                
# [8] "ZIP.Code"                                                                             
# [9] "County.Name"                                                                          
# [10] "Phone.Number"                                                                         
# [11] "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"                            
# [12] "Comparison.to.U.S..Rate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"  
# [13] "Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" 
# [14] "Upper.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" 
# [15] "Number.of.Patients...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"       
# [16] "Footnote...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"                 
# [17] "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"                           
# [18] "Comparison.to.U.S..Rate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" 
# [19] "Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
# [20] "Upper.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
# [21] "Number.of.Patients...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"      
# [22] "Footnote...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"                
# [23] "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"                               
# [24] "Comparison.to.U.S..Rate...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"     
# [25] "Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"    
# [26] "Upper.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"    
# [27] "Number.of.Patients...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"          
# [28] "Footnote...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"                    
# [29] "Hospital.30.Day.Readmission.Rates.from.Heart.Attack"                                  
# [30] "Comparison.to.U.S..Rate...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"        
# [31] "Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"     
# [32] "Upper.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"     
# [33] "Number.of.Patients...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"             
# [34] "Footnote...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"                       
# [35] "Hospital.30.Day.Readmission.Rates.from.Heart.Failure"                                 
# [36] "Comparison.to.U.S..Rate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"       
# [37] "Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"    
# [38] "Upper.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"    
# [39] "Number.of.Patients...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"            
# [40] "Footnote...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"                      
# [41] "Hospital.30.Day.Readmission.Rates.from.Pneumonia"                                     
# [42] "Comparison.to.U.S..Rate...Hospital.30.Day.Readmission.Rates.from.Pneumonia"           
# [43] "Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Pneumonia"        
# [44] "Upper.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Pneumonia"        
# [45] "Number.of.Patients...Hospital.30.Day.Readmission.Rates.from.Pneumonia"                
# [46] "Footnote...Hospital.30.Day.Readmission.Rates.from.Pneumonia"                          

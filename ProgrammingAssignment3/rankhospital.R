rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  measures <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that state and outcome are valid
  if(!is.element(state, measures$State)) {
    stop("invalid state")
  }
  validOutcomes = c("heart attack", "heart failure", "pneumonia")
  if(!is.element(outcome, validOutcomes)) {
    stop("invalid outcome")
  } else if (outcome == "heart attack") { # if valid, pick column corresponding to outcome
    thecolumn = 11 # Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack
  } else if (outcome == "heart failure") {
    thecolumn = 17 # Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure
  } else {
    thecolumn = 23 # Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia
  }
  
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  measures[, thecolumn] <- as.numeric(measures[, thecolumn]) # cast the needed column to numeric
  # choose only the particular state and those columns relevant to this exercise
  measures_thestate <- measures[measures$State == state,][c(2,thecolumn)]
  # order by 2d column, then by 1st column
  measures_thestate <- measures_thestate[order(measures_thestate[2], measures_thestate[1], na.last = NA), ]
  # choose what to return
  if (num == "best") {
    measures_thestate[1,1]
  } else if (num == "worst") {
    measures_thestate[nrow(measures_thestate),1]
  } else if ( as.numeric(num) > nrow(measures_thestate) ) {
    NA
  } else {
    measures_thestate[as.numeric(num), 1]
  }
    
}

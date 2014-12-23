best <- function(state, outcome) {
  ## Read outcome data
  # using variable 'measures' since 'outcome' is used as formal variable as requested in the template
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
  
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  measures[, thecolumn] <- as.numeric(measures[, thecolumn]) # cast the needed column to numeric
  # find minimum, for rows corresponding to requested state, removing NA
  minval <- min(measures[measures$State == state, thecolumn], na.rm = TRUE)
  # list of indices with the minimum value, apply constraint on requested state from here on
  minind <- which(measures[measures$State == state, thecolumn] == minval)
  # list of hospitals with the minimum value sorted
  minhos <- sort(measures[measures$State == state, 2][minind])
  minhos[1] # return first element
}


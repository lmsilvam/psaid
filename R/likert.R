
###
# LIKERT scales functions from psaid
###

# This simulates Likert responses based on a vector of probabilities;
# ex: likertFill (100, c(0.1, 0.2, 0.1, 0.3, 0.1), low=1, high=5)
likertFill <- function(n_items, vp=c(0.1, 0.2, 0.1, 0.3, 0.3), low=1, high=5) {
  return (sample(low:high, n_items, replace=TRUE, prob = vp))
}

# We give this function a vector of Likert responses and a vector of
# variables to
likertInvert <- function(v) {

}

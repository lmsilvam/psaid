# PSAID is a collection of functions I've been using in my code to help me
# with data cleaning and psychological analyses (Likert scale processing
# for example)
# Use if you find them useful. -L

require(stringi)

###
# USEFUL for data handling
###

# Remove accents and convert to upcase
upcase_noaccents <- function(s) {
  return (stri_trans_general(str=str_to_upper(s), id="Latin-ASCII"))
}

# Can be used with rename_with to sort of standardise var names
easier_variable <- function(var) {
  c <- var %>%
    str_to_upper() %>%
    stri_trans_general(id="Latin-ASCII") %>%
    str_replace_all('[^A-za-z0-9ó.]', '') %>%
    tolower()
  return (c)
}

# When importing files from certain locales, commas are periods, so this
# ensures that we can convert a number to a char
real_number <- function(n) {
  ret <- n
  if (any(is.character(n)))
    ret <- as.numeric(gsub("[[:punct:]]+", ".", gsub("[a-z]", "", n)))
  return (ret)
}

#' City Mutate
#'
#' @param df A dataframe, containing a column called "translatedText", made by the translaton function
#' @param pattern The pattern containing Ukraininan cities
#'
#' @return
#' @export
#'
#' @examples
city_mutate <- function(df, pattern = peacePHDs::ukr_cities) {
  df$cities <- str_extract_all(df$translatedText, pattern)
  df <- df %>%
    rowwise() %>%
    mutate(cities = paste(unique(cities), collapse = ", "))
  return(df)
}

#' oblast mutate
#'
#' @param df A dataframe, containing a column called "translatedText", made by the translaton function
#' @param pattern The pattern containing Ukraininan oblasts
#'
#' @return
#' @export
#'
#' @examples
oblast_mutate <- function(df, pattern = peacePHDs::ukr_oblast) {
  df$oblast <- stringr::str_extract_all(df$translatedText, pattern)
  df <- df |>
    dplyr::rowwise() |>
    dplyr::mutate(oblast = paste(unique(oblast), collapse = ", "))
  return(df)
}

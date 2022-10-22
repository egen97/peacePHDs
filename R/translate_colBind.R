#' translator
#'
#' @param x A dataframe with the strings
#' @param text the name of the text collumn
#'
#' @return
#' @export
#'
#' @examples
translate_colBind <- function(x, text = text) {
  df <- googleLanguageR::gl_translate(
    x$text,
    target = "en"
  )
  df <- dplyr::select(df, translatedText, detectedSourceLanguage)
  df <- bind_cols(df, x)
  return(df)
}

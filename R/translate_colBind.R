#' translator
#'
#' @param x A dataframe with the strings
#' @param text the name of the text collumn
#'
#' @return
#' @export
#'
#' @examples
translate_colBind <- function(x, text = message) {
  df <- googleLanguageR::gl_translate(
    x$message,
    target = "en"
  )
  df <- dplyr::select(df, translatedText, detectedSourceLanguage)
  df <- dplyr::bind_cols(df, x)
  return(df)
}


#' Ukraininan Ministry of Finance Data Extractor
#'
#' @param xml_document A graph downloaded from https://index.minfin.com.ua/en/russian-invading/casualties/
#' @param css_nr_id marks the date
#' @param data_pattern finds the data
#'
#' @return A character string with the nr. of losses/causalties and the date
#' @export
#'
#' @examples
ukr_minfin_extractor <- function(xml_document, css_nr_id = NULL , data_pattern = "'.*'"){
  if(is.null(css_nr_id)) stop("You need to provide the id nr for each graph-point")
  if(length( css_nr_id) > 1) warning("In css_nr_id =. The condition has length > 1 and only the first element will be used")
  x <- xml_document |>
    rvest::html_element(paste0("svg > rect:nth-child", paste0("(", css_nr_id, ")"))) |>
    as.character() |>
    stringr::str_extract(data_pattern) |>
    stringr::str_split(" ")

  return(x)
}

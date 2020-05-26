#' @export
count_words <- function(x, ...) {
  UseMethod("count_words")
}

count_words.spark_connection <- function(input_path, output_path, sc) {
  sparlyr::invoke_static(
    input_path,
    output_path,
    sc,
    class = "Example.SparkWordCount",
    method = "main"
  )
}

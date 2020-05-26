#' @export
count_words <- function(sc, input_path, output_path) {
  sparklyr::invoke_static(
    sc,
    class = "SparkWordCount",
    method = "main",
    input_path,
    output_path,
    spark_context(sc)
  )
}

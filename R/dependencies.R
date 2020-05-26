spark_depenencies <- function(spark_version, scala_version, ...) {
  sparklyr::spark_dependency(
    jars = c(
      system.file(
        "inst/java/target/scala-2.11/count_words_2.11-1.0.jar",
        package = "SparkWordCounter"
      )
    ),
    packages = c()
  )
}

.onLoad <- function(libname, pkgname) {
  sparklyr::register_extension(pkgname)
}

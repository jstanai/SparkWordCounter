library(sparklyr)
library(SparkWordCounter)

Sys.setenv(JAVA_HOME = "/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home/jre")
sc <- spark_connect(master = "local")
dir <- "/Users/Jared/GitHub/SparkWordCounter/inst/java/"
input_path <- paste0(dir, 'input_example.txt')
output_path <- paste0(dir, 'output_example.parquet')

# note: output_path must not already exist!
count_words(sc, input_path, output_path)

# Example of Reading in Results
df <- spark_read_text(sc, output_path)

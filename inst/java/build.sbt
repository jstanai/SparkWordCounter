name := "count_words"

version := "1.0"

scalaVersion := "2.11.0"

libraryDependencies ++= Seq(
 "org.apache.spark" %% "spark-core" % "2.4.3",
 "org.apache.spark" %% "spark-sql" % "2.4.3",
 "org.apache.spark" %% "spark-mllib" % "2.4.3",
 "org.scala-lang.modules" %% "scala-parser-combinators" % "1.0.4"
)

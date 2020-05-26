package Example

import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark._

object SparkWordCount {
   def main(input_path: String, output_path: String, sc: SparkContext) {

      // val sc = new SparkContext( "local", "Word Count", "/usr/local/spark", Nil, Map(), Map())

      /* local = master URL; Word Count = application name; */
      /* /usr/local/spark = Spark Home; Nil = jars; Map = environment */
      /* Map = variables to work nodes */
      /*creating an inputRDD to read text file (in.txt) through Spark context*/
      val input = sc.textFile(input_path)
      /* Transform the inputRDD into countRDD */

      val count = input.flatMap(line ⇒ line.split(" "))
      .map(word ⇒ (word, 1))
      .reduceByKey(_ + _)

      /* saveAsTextFile method is an action that effects on the RDD */
      count.saveAsTextFile(output_path)
      System.out.println("OK");
   }
}

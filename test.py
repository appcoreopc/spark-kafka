

from __future__ import print_function

import sys
from operator import add

from pyspark.sql import SparkSession


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: wordcount <file>", file=sys.stderr)
        sys.exit(-1)

    spark = SparkSession.builder.appName("Mytest").getOrCreate()
    
    line = spark.read.text("/home/jeremy/tmp/test/test.dat").rdd.map(lambda r : r[0])
    print("The total value count ", line.count())
    spark.stop()
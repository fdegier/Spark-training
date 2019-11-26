FROM apache/zeppelin:0.8.1

# Install a newer version of Spark
ARG SPARK_VERION=spark-2.4.4
RUN wget http://apache.cs.uu.nl/spark/$SPARK_VERION/$SPARK_VERION-bin-hadoop2.7.tgz
RUN tar -xzf $SPARK_VERION-bin-hadoop2.7.tgz
RUN mv $SPARK_VERION-bin-hadoop2.7 /opt/spark
RUN rm $SPARK_VERION-bin-hadoop2.7.tgz
ENV SPARK_HOME=/opt/spark

EXPOSE 8080 4040
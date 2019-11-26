# PySpark 101
---
  
### Doel
De training dient als inleiding tot PySpark en is bedoeld voor gebruikers die al ervaring hebben met Python3 en het maken van modellen (bij voorkeur Scikit Learn) aan te moedigen om met Spark te werken. De training gaat in op het met Python gebruiken van de volgende Spark componenten:
- Spark Dataframes en SQL
- Spark ML
  
Aan het einde van de training kan je het volgende:
- Verschillende data formaten inladen
- Bewerkingen toepassen op een PySpark dataframe
- Data wegschrijven
- Modellen trainen en evalueren met Spark ML

### Vervolgstappen
Aangezien dit een basis / introductie tot PySpark is, is het raadzaam om dit op te volgen met trainingen in PySpark op specifieke onderwerpen als Feature Engineering, Spark Machine Learning etc.

### Vereisten
- Ervaring met Python3
- Ervaring met machine learning, bij voorkeur Scitkit Learn
- Docker geinstalleerd

### Verbinding maken met Zeppelin
Alle is ingeregeld om in een Docker container te draaien met Zeppelin, Spark, de notebooks en de benodigde data. 
1. Clone de repo
2. In de terminal ga naar de root van de repo
3. Start de container `docker-compose up -d`

De notebooks worden gesynchroniseerd naar de lokale folder.

### Documentatie
- [Zeppelin (0.8.1)](https://zeppelin.apache.org/docs/0.8.1/)
- [Apache Spark](https://spark.apache.org/)
- [PySpark (2.4.4)](https://spark.apache.org/docs/2.4.4/api/python/index.html)
- [SparkSQL (2.4.4)](https://spark.apache.org/docs/2.4.4/api/sql/index.html)

### Gotcha's
Houdt er rekening mee dat veel antwoorden op StackOverflow etc zijn gebasseerd op Spark1, in de training - maar ook daarbuiten - wordt er met Spark2 gewerkt.
[Wat is het verschil?](https://stackoverflow.com/questions/40168779/apache-spark-vs-apache-spark-2)

De standaard taal voor Spark is Scala, bij het gebruik van PySpark gebruik je feitelijk een Python API, niet alle functionaliteit is beschikbaar in PySpark.
  
  
## Zeppelin 101
Zeppelin is vergelijkbaar met Jupyter in de zin dat ze allebei notebooks zijn, echter zijn er we heel veel verschillen. Mocht je geinteresseerd zijn in de verschillen en/of waarom welke "beter" is, is dit wel een aardig artikel [https://stackshare.io/stackups/jupyter-vs-zeppelin](https://stackshare.io/stackups/jupyter-vs-zeppelin)

### Waar moet je op letten?
Interpreter, binnen de interpret `spark` is `scala` de standaard (`%spark`) daarnaast kan je nog kiezen uit 
  
- `%sql` dit betreft SparkSQL
- `%pyspark` dit betreft een Python interpreter die is ingericht om gebruik te maken van PySpark
- `%r` dit betreft een R interpreter om gebruik te maken van SparkR

Per code block / paragraaf kan er 1 interpreter gekozen worden, dit houdt in dat je PySpark en SQL kan mixxen je kan ook MarkDown als interpreter aanroepen. Dit doe je door bovenaan je paragraaf met `%` de interpreter te bepalen.

Bijvoorbeeld eerst een blok markdown:
```
%md
# Dit is een titel!
```

En in hetzelfde notebook vervolgens een paragraaf met SparkSQL

```
%sql
show tables
```

Om vervolgens een paragraaf uit te voeren druk je op `SHIFT + ENTER`.

Interpreters moeten wel geactiveerd zijn in je notebook.

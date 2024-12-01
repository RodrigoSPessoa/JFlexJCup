
java -jar jflex-full-1.9.1.jar calc.flex
java -jar java-cup-11b.jar -parser parser -symbols sym calc.cup
javac -cp ".;java-cup-11b.jar;java-cup-11b-runtime.jar;jflex-1.8.2.jar" *.java
java -cp ".;java-cup-11b.jar;java-cup-11b-runtime.jar;jflex-1.8.2.jar" Main
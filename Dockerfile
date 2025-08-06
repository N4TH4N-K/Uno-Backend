from eclipse-temurin:17-jdk

workdir /app
copy . . 
run chmod +x mvnw
run ./mvnw clean package -DskipTests

expose 8080
cmd ["java", "-jar", "target/uno*.jar"]
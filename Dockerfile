FROM tomcat:10.1.24-jre21
 
COPY target/*.jar /usr/local/tomcat/webapps/java-web-app.jar

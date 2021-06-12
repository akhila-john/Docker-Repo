FROM tomcat
ENV dbDriver=com.mysql.jdbc.Driver dbConnectionUrl=jdbc:mysql://sql-database/institution dbUsername=root dbPassword=akhila8mysql
COPY WebAPI.war /usr/local/tomcat/webapps


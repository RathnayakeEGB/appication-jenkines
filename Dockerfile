FROM tomcat:8.0

ADD ./target/*.warm /usr/local/tomcat/webapp/

EXPOSE 9000

CMD ['catalina.sh','run']



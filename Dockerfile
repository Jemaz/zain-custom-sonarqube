FROM sonarqube:8.7.1-community

# assuming there's a MSSQL server (Microsoft SQLServer 2014/2016/2017 )
ENV SONARQUBE_JDBC_URL=jdbc:postgresql://localhost:5432/sonarqube?user=sonar&password=password123

# setting up community branch plugin to enable sonarqube to work on more than one branch per project
COPY sonarqube-community-branch-plugin-1.7.0.jar /opt/sonarqube/extensions/plugins
COPY sonarqube-community-branch-plugin-1.7.0.jar /opt/sonarqube/lib/common/
COPY sonar.properties /opt/sonarqube/conf/


# web console accessible via 9000 port

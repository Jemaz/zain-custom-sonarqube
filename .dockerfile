FROM sonarqube:8.7.1-community

# assuming there's a MSSQL server (Microsoft SQLServer 2014/2016/2017 )
ENV SONAR_JDBC_URL=jdbc:sqlserver://localhost;databaseName=sonar;integratedSecurity=true

# setting up community branch plugin to enable sonarqube to work on more than one branch per project
COPY sonarqube-community-branch-plugin-1.7.0.jar /opt/sonarqube/extensions/plugins
COPY sonarqube-community-branch-plugin-1.7.0.jar /opt/sonarqube/lib/common/


# web console accessible via 9000 port

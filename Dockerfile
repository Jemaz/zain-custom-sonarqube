FROM sonarqube:8.7.1-community

# NOTE: SETUP THE POSTGRESQL [MAKE SURE YOU SUBSTITUTE LOCALHOST W/ CLUSTER-IP]
ENV SONAR_JDBC_URL=jdbc:postgresql://localhost:5432/sonarqube?user=sonar&password=password123
ENV SONAR_JDBC_USERNAME=sonar
ENV SONAR_JDBC_PASSWORD=password123

# setting up community branch plugin to enable sonarqube to work on more than one branch per project
COPY sonarqube-community-branch-plugin-1.7.0.jar /opt/sonarqube/extensions/plugins
COPY sonarqube-community-branch-plugin-1.7.0.jar /opt/sonarqube/lib/common/
COPY sonar.properties /opt/sonarqube/conf/


# web console accessible via 9000 port

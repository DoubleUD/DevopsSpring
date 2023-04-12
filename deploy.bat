echo "building"
set JAVA_HOME="C:\Users\wdaly\Downloads\openlogic-openjdk-8u362-b09-windows-x64\openlogic-openjdk-8u362-b09-windows-64"
CALL C:\Users\wdaly\Downloads\apache-maven-3.9.1-bin\apache-maven-3.9.1\bin\mvn package -B
echo "built"
scp target\DevopsSpring-0.0.1-SNAPSHOT.jar ptuser@20.107.178.19:~/www/spring02/DevopsSpring-0.0.1-SNAPSHOT.jar
ssh ptuser@20.107.178.19 "sudo systemctl restart spring02"

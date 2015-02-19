if (( EUID != 0 )); then
  echo "This script must be run as root" 
  exit 1
fi
cd /home/connor/git/theshow/
mvn package
cp /home/connor/git/theshow/target/LeagueManager-develop.war /var/lib/tomcat7/webapps/


version=$(config tomcat-version)
tail -n 1000 /var/log/tomcat$version/catalina.out
echo OK

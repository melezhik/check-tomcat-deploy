version=$(config tomcat-version)
file=$(config file)
if test $file; then
  cat $file
else
  tail -n 1000 /var/log/tomcat$version/catalina.out
fi


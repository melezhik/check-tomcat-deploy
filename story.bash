version=$(config tomcat-version)
file=$(config file)
lines=$(config lines)
if test $file; then
  cat $file | tail -n $lines
else
  tail -n $lines /var/log/tomcat$version/catalina.out
fi


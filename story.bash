version=$(config tomcat-version)
if test $(config test_mode); then
  cat /tmp/catalina.out
else
  tail -n 1000 /var/log/tomcat$version/catalina.out
fi


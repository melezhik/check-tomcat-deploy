# SYNOPSIS

Reads tomcat logs and checks if war files get deployed successfuly

# INSTALL


    $ sparrow plg install check-tomcat-deploy


# USAGE


## Manualy

    $ sparrow plg run check-tomcat-deploy --param war='foo#bar.war,services.war' --param tomcat-version=7

## Sparrowdo


    $ cat sparrowfile

    use v6;

    use Sparrowdo;


    task_run %(
      task => 'verify tomcat deploy',
      plugin => 'check-tomcat-deploy',
      parameters => %(
        tomcat-version => '7',
        war => 'foo#bar.war,services.war'
       )
    );


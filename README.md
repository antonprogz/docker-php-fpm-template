Docker configuration example for the php web app development
============================================================

Web app
-------

Run the web server using the following scenario:

```
$./app.sh
```

Next, open your browser and go http://localhost:8080. You should see the phpinfo() output.

Cli
---
In the cli image the `hostuser` account is created and modified in the ENTRYPOINT scenario 
to get a standard user environment. This helps using composer including cache and global deps without any problems.

Run cli using:
```
$./cli.sh
```

You should see hostuser@2cc9ad69aea5:~/app$ shebang. 


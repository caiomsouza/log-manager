# Tips

### Linux command example to run a Job
```
su - caiomoreno -c /opt/project/k_home/CONTROL_kjb_job_name.sh &
```

### Shell Script Example

CONTROL_kjb_job_name_script.sh
```
export KETTLE_HOME=/opt/project/k_home
sh /opt/pentaho/data-integration/kitchen.sh -file=/opt/project/control/kjb_job_name_script.kjb > /opt/project/log/job_name_`date +\%Y-\%m-\%d-\%H-\%M`.log

```
### Opening Crontab
```
crontab -e
```

# Stop Cron on Red Hat / CentOS / Fedora
```
sudo service crond stop
```

# Start Cron on Red Hat / CentOS / Fedora
```
sudo service crond start
```

# Status Cron on Red Hat / CentOS / Fedora
```
sudo service crond status
```

# Restart Cron on Red Hat / CentOS / Fedora
```
sudo service crond restart
```

Source:
http://www.cyberciti.biz/faq/howto-linux-unix-start-restart-cron/

## Run every 90 minutes between 3 am to 23pm
```
*/180 3-23 * * * su - pentaho -c /opt/project/k_home/CONTROL_kjb_job_name_script.sh
```

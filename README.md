# ngnix_json_test
Alex Vaque Tests


# caching to your reverse proxy?  
done
	#caching EXTRA TASK
        proxy_cache_path  /var/www/cache levels=1:2 keys_zone=my-cache:8m max_size=1000m inactive=600m;
        proxy_temp_path /var/www/cache/tmp;

# add basic auth?
done , parcial enabled (only one PATH from BOTH)
	    auth_basic           "closed site";
            auth_basic_user_file  /etc/nginx/.htpasswd;

	/etc/nginx/htpasswd -> user: test , password: test 

	if you have problems you could create the htpasswd file with the next command
		htpasswd -c /etc/nginx/.htpasswd test


# TO RUN THE SCRIPT

$ python api-request.py

-Datacenter
		OregonDC02
		Oregon
			 -Servers:
				NotNewestServer04
				Gopher server
				FTP02
				FTP for clients
				Ping02
				Monitoring
Failed to open "<addinfourl at 4466611120 whose fp = <socket._fileobject object at 0x10a1e96d0>>".
-Datacenter
		VirginiaDC01
		Virginia
			 -Servers:
				Spock01
				Web server
				Andromeda02
				Mesos cluster
				Andromeda01
				Mesos cluster
				Galaxy02
				Docker server
				Docker01
				Docker server
-Datacenter
		CaliforniaDC01
		California
			 -Servers:
				Andromeda02
				Mesos cluster
				BigData02
				BigData for real
				ElasticSearch01
				Elastic Search server
				LoadBalancer02
				Haproxy server

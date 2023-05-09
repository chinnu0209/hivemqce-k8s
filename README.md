# hivemqce-k8s
# Goal 
Deploy the hivemw-ce broker on kubernetes as normal deployment without using helm charts or hivemq k8s operator.

In my project, i include file-rbac extension and prometheus extension to configure and monitor my broker.
extensions folder contains hivemq-file-rbac-extension and hivemq-prometheus-extension

in each subfolder contains extension files to run the extension inside the broker it contains extension-config.xml, hivemq-extension.xml, credentials.xml and jar file to autheticate the users and permissions, lly prometheus contains jar, config and extension files. 

In the previous deployment everything build as docker image and with docker compose the individual services like hivemq, prometheus and grafana. 

Now i dont want to put my credentials.xml file inside docker container, for that i used k8s secret object to create as secret and mount as volumes and volume mount in the deployment. when i pass those the hivemq asking for the credentials at the location "/opt/hivemq/extensions/credentials.xml".
when i pass those as secret the problem is overwriting the existing files in the extension folder for that i used 'subpath' method but still no use. 

How to solve this issue is there any subpath to provide credentails.xml ? ( https://github.com/hivemq/hivemq-file-rbac-extension/issues/3 ) but still we can see the secrets at the mounted directory by default hivemq looks in extension folder. 

I would like to hear from you soon.

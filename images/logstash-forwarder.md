#whatwedo base image - logstash-forwarder
In this image is a basic logstash-forwarder installation available. There is no configuration set. Please place your config file in /etc/logstash-forwarder/config.json

##Usage

```
docker run whatwedo/logstash-forwarder
```

##Environment Variables
This image is not using any environment variables.

##Volumes
This image is not using any volumes.

##Exposed Ports
This image is not exposing any ports.

##Built
Because we are using several base images with recurring tasks in the Dockerfile, we are using a script to include commands. This script is available under [https://github.com/whatwedo/docker-base-images/blob/master/docker-builder.sh](https://github.com/whatwedo/docker-base-images/blob/master/docker-builder.sh)

##Bugs and Issues
If you have any problems with this image, feel free to open a new issue in our issue tracker [https://github.com/whatwedo/docker-base-images/issues](https://github.com/whatwedo/docker-base-images/issues)

##License
This image is licensed under the MIT License. The full license text is available under [https://github.com/whatwedo/docker-base-images/blob/master/LICENSE](https://github.com/whatwedo/docker-base-images/blob/master/LICENSE).

##Further information
There are a number of images we are using at [https://whatwedo.ch/](whatwedo). Feel free to use them. More information about the other images are available in [our Github repo](https://github.com/whatwedo/docker-base-images).
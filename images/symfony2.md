# whatwedo base image - Symfony 2

In this image is a basic nginx webserver with PHP 5.6 installation available. It is configured to run a Symfony 2 application placed in /var/www. There are no SSL enabled per default.

**Note:**: You're looking to an old version of this image which is not supported anymore and will receive security updates only. Please migrate to the [v2.0](https://github.com/whatwedo/docker-base-images/tree/v2.0/images/symfony2) release.

## Usage

```
docker run -p 80:80 whatwedo/symfony2
```

## Environment Variables

* `CONTAINER_TIMEZONE` - timezone which should be used, default: `Europe/Zurich` ([see Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones))

## Volumes

* /etc/firstboot

## Exposed Ports

* 80
* 443

## Build

Because we are using several base images with recurring tasks in the Dockerfile, we are using a script to include commands. This script is available under [https://github.com/whatwedo/docker-base-images/blob/v1.7/docker-builder.sh](https://github.com/whatwedo/docker-base-images/blob/v1.7/docker-builder.sh)

## Bugs and Issues

If you have any problems with this image, feel free to open a new issue in our issue tracker [https://github.com/whatwedo/docker-base-images/issues](https://github.com/whatwedo/docker-base-images/issues)

## License

This image is licensed under the MIT License. The full license text is available under [https://github.com/whatwedo/docker-base-images/blob/v1.7/LICENSE](https://github.com/whatwedo/docker-base-images/blob/v1.7/LICENSE).

## Further information

There are a number of images we are using at [https://whatwedo.ch/](whatwedo). Feel free to use them. More information about the other images are available in [our Github repo](https://github.com/whatwedo/docker-base-images).

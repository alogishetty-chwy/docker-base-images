# whatwedo - Docker Base Images

[![build status](https://dev.whatwedo.ch/whatwedo/docker-base-images/badges/v1.7/build.svg)](https://dev.whatwedo.ch/whatwedo/docker-base-images/commits/v1.7)

We at [whatwedo](https://whatwedo.ch/) are slowly going away from traditional application hosting to the approach of using Docker containers. For this reason we built several docker images. They are available on [Dockerhub](https://hub.docker.com/u/whatwedo/). You can use them easily in your own projects.

## Images
| Name | Description |
|---|---|
| [whatwedo/base](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/base.md) | several base packages for daily working with docker installed |
| [whatwedo/nginx](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/nginx.md) | nginx webserver |
| [whatwedo/nginx-php56](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/nginx-php56.md) | nginx webserver including PHP 5.6 |
| [whatwedo/nginx-php70](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/nginx-php70.md) | nginx webserver including PHP 7.0 |
| [whatwedo/nginx-php71](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/nginx-php72.md) | nginx webserver including PHP 7.1 |
| [whatwedo/nginx-php72](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/nginx-php72.md) | nginx webserver including PHP 7.2 |
| [whatwedo/openldap](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/openldap.md) | openLDAP server |
| [whatwedo/php56](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/php56.md) | PHP 5.6 interpreter |
| [whatwedo/php70](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/php70.md) | PHP 7.0 interpreter |
| [whatwedo/php71](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/php71.md) | PHP 7.1 interpreter |
| [whatwedo/php72](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/php72.md) | PHP 7.2 interpreter |
| [whatwedo/symfony2](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/symfony2.md) | nginx configured for running Symfony 2 |
| [whatwedo/symfony3](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/symfony3.md) | nginx configured for running Symfony 3 |
| [whatwedo/symfony4](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/symfony4.md) | nginx configured for running Symfony 4 |
| [whatwedo/wordpress-nginx-w3tc](https://github.com/whatwedo/docker-base-images/tree/v1.7/images/wordpress-nginx-w3tc.md) | WordPress running on nginx with PHP 7.0 and W3 Total Cache configuration |

https://github.com/whatwedo/docker-base-images/tree/v1.7/images

## Directory/File Layout
The following table show the directory Layout of this repository:

| Folder | Description |
|---|---|
| `dist`  	| Includes all Dockerfiles and REAMDE's which are also available on [Dockerhub](https://hub.docker.com/u/whatwedo/)|
| `files` | Includes static files which are used by the Dockerfiles. For example a webserver configuration file |
| `images` | Dockerfiles and README's for the single images. All Dockerfiles are saved as `*.m4`. On this way they can include files from the `modules` folder |
| `modules`| Modules which can be included from a Dockerfile |
| `vm-init`| Files used to init the developer VM |
| `docker-builder.sh`| docker-builder.sh is a script for managing complex docker images. It provides an easy mechanism for creating and building docker images |
| `Vagrantfile`| Developer VM configuration |  

## dockerbuilder.sh
Because we are using several base images with recurring tasks in the Dockerfile, we are using a script to include commands. This script is available under [https://github.com/whatwedo/docker-base-images/blob/v1.7/docker-builder.sh](https://github.com/whatwedo/docker-base-images/blob/v1.7/docker-builder.sh). Feel free to use it in your own projects.

### Usage

```
./docker-builder.sh build-files         - This will build all dockerfiles
./docker-builder.sh build-file [name]   - This will build the given dockerfile
./docker-builder.sh build-images        - This will build all images
./docker-builder.sh build-image [name]  - This will build the given image
```

## Developer VM
To start and access the developer VM, use the following commands:

```
vagrant up
vagrant ssh
```

The repository root will be mounted under `/vagrant`

## Bugs and Issues
If you have any problems with this image, feel free to open a new issue in our issue tracker [https://github.com/whatwedo/docker-base-images/issues](https://github.com/whatwedo/docker-base-images/issues)

## License
This image is licensed under the MIT License. The full license text is available under [https://github.com/whatwedo/docker-base-images/blob/v1.7/LICENSE](https://github.com/whatwedo/docker-base-images/blob/v1.7/LICENSE).

## Further information
There are a number of images we are using at [https://whatwedo.ch/](whatwedo). Feel free to use them. More information about the other images are available in [our Github repo](https://github.com/whatwedo/docker-base-images).

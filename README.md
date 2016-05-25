# Dockerfile for Valhalla

This Dockerfile provides an easy way to build and deploy Mapzen's Valhalla,
without configuring a full Chef install.

It defaults to using an OSM extract of Trento, IT, but you can change this if
you like, in the Dockerfile.

To build the Docker image issue:

```sh
./build.sh
```

To run instead issue:
```sh
./run-valhalla.sh
```

##### Tips for Running on a Mac

For easiest setup, use the Docker for Mac package, [currently available for beta testing](https://blog.docker.com/2016/03/docker-for-mac-windows-beta/).

Increase resources available to Docker to at least 4 CPU cores and 4Gb RAM: ![Docker for Mac settings](docker-for-mac-settings.png)

If your container can't connect to github.com to checkout libraries, you may need to edit your `/etc/resolve.conf`. For example, set your Mac WiFi to use [Google's public DNS servers](https://developers.google.com/speed/public-dns/), as well as a local router:

```sh
sudo networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.4.4 192.168.1.254
```

##### Good to have in future:
- A facility to load in a running container multiple OSM extracts.

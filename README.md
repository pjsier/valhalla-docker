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

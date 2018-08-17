# Github Release docker image

Simple pre-build image to run github-release

## Upload a folder of files for release

A wrapper is provided for uploading a folder of files for a release. If you placed your
build assets in to ./dist you can use it like this.

```
docker run -it --rm --mount 'type=bind,src=./dist,dst=/release' interlock/github-release github-release-folder upload ... -f
```

## Based on

* https://github.com/aktau/github-release
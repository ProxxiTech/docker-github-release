# Github Release docker image

Simple pre-build image to run github-release

## Create a release

Before you can upload files to a release, you need to have a release present on github first.

```
docker run -it --rm interlock/github-release:v0.0.5 github-release release -s ${env.GITHUB_TOKEN} -u ${env.REPO_ORG} -r ${env.REPO_NAME} -t ${env.TAG} -d "This is a release"
```

## Upload a folder of files for release

A wrapper is provided for uploading a folder of files for a release. If you placed your
build assets in to ./dist you can use it like this.

```
docker run -it --rm --mount 'type=bind,src=./dist,dst=/release' interlock/github-release github-release-folder upload ... -f
```

## Other commands

See the parent tool this uses for all the commands you can run: [github-release](https://github.com/aktau/github-release)

## Based on

* https://github.com/aktau/github-release

# docker-go-base-project

This is the most basic way to build and run a go app on docker. The _mypackage_ folder was placed to show how to create custom packages and use them in your app.

## How to build image

Just open a shell window and navigate to the project's folder and then run:

```bash
docker build -t your-image-name:tag .
```

## How to run your app into a container

run 

```bash
docker run your-image-name
```


## Credits

this was build based on this post: [click](https://medium.com/travis-on-docker/how-to-dockerize-your-go-golang-app-542af15c27a2)

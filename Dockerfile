# iron/go:dev is the alpine image with the go tools added
FROM iron/go:dev
WORKDIR /app
# Set an env var that matches the app name
ENV THIS_APP_NAME=myapp
# Set an env var that matches your github user url
ENV SRC_DIR=/go/src/github.com/jscarton/
# Add the source code:
ADD ./src $SRC_DIR
# Build it:
RUN cd $SRC_DIR; cd $THIS_APP_NAME; go build -o $THIS_APP_NAME; cp $THIS_APP_NAME /app/; /app/$THIS_APP_NAME
#replace the entry point to match the executable filename for your settings
ENTRYPOINT ["./myapp"]

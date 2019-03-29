## Setup
Just be sure to mount a correct config file to the container for flanged.

Path and filename the container will look for is `/etc/flange/flanged_conf.ini`.

An example run command would look like `docker run --name flange --network host -v /<path>/<to>/<local>/<conf>:/etc/flanged/flanged_conf.ini -it -d <this image>`

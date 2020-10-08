# dockerfile--android-tools

Here's an image for using the latest android-tools.
You can also install it with apk, but the version is old.

This image is using [frolvlad/alpine-glibc](https://hub.docker.com/r/frolvlad/alpine-glibc/) because I need glibc to use android-tools.

## alpine apk

```
/ # apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --no-cache add android-tools
…
/ # adb --version
Android Debug Bridge version 1.0.41
Version 29.0.6-android-tools
Installed as /usr/bin/adb
```

## This image

```
/ # adb --version
Android Debug Bridge version 1.0.41
Version 30.0.4-6686687
Installed as /usr/local/android/platform-tools/adb
```

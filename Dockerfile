FROM frolvlad/alpine-glibc:alpine-3.12

RUN apk --update-cache --no-cache add openjdk11
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip && mkdir -p /usr/local/android && unzip -d /usr/local/android commandlinetools-linux-6609375_latest.zip && rm commandlinetools-linux-6609375_latest.zip

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
ENV ANDROID_HOME=/usr/local/android
ENV PATH=${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools:$PATH
RUN yes | sdkmanager --sdk_root=${ANDROID_HOME} --licenses
RUN sdkmanager --sdk_root=${ANDROID_HOME} "tools" "platform-tools"

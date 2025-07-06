rm -rf ./logs/*.*

source "/home/tejas-joshi/Documents/Software/Sdkman/bin/sdkman-init.sh"
sdk use java 17.0.12-oracle
sdk use gradle 8.10.2

gradle clean build

source setenv.sh

cp -r ./cfg ./build/libs
cp -r ./docker-start.sh ./build/libs
cp -r ./src/main/resources/application.properties ./build/libs
cp -r ./src/main/resources/logback-spring.xml ./build/libs

java -jar ./build/libs/jmeter-testing-1.0.1.jar
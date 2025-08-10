rm -rf ./logs/*.*

# Kill any running jmeter-testing process
PID=$(ps -ef | grep "jmeter-testing" | grep -v grep | awk '{print $2}')
if [[ -n $PID ]]
then
  kill -9 "$PID"
  echo "Already Running Process Stopped ..."
fi

source "/home/tejas-joshi/Documents/Software/Sdkman/bin/sdkman-init.sh"
sdk use java 17.0.12-oracle
sdk use gradle 8.10.2

gradle clean
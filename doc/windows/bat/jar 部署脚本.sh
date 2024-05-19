#版本 注意，需要跟随版本号进行调整
version=4.2.5
#代码目录
code_path=/home/source/lilishop
#运行目录
run_path=/home/source/api/

mkdir -p ${code_path}
mkdir -p ${run_path}
cd ${code_path}
git checkout master
git pull
mvn clean install -DskipTests



ps -ef |grep java |grep im-api  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep buyer  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep seller  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep manager  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep common  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep consumer  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9



rm -rf ${run_path}*.jar
mv ${code_path}/common-api/target/common-api-$version.jar ${run_path}
mv ${code_path}/buyer-api/target/buyer-api-$version.jar ${run_path}
mv ${code_path}/consumer/target/consumer-$version.jar ${run_path}
mv ${code_path}/manager-api/target/manager-api-$version.jar ${run_path}
mv ${code_path}/seller-api/target/seller-api-$version.jar ${run_path}

cd ${run_path}

mkdir logs

nohup java -Xmx256m -Xms128m -Xss256k  -jar manager-api-$version.jar> logs/manager.out  &
nohup java -Xmx256m -Xms128m -Xss256k  -jar common-api-$version.jar>  logs/common.out  &
nohup java -Xmx256m -Xms128m -Xss256k  -jar buyer-api-$version.jar> logs/buyer.out  &
nohup java -Xmx256m -Xms128m -Xss256k  -jar consumer-$version.jar> logs/consumer.out  &
nohup java -Xmx256m -Xms128m -Xss256k  -jar seller-api-$version.jar> logs/seller.out  &



#### 


ps -ef |grep java |grep im-api  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9

ps -ef |grep java |grep buyer  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep seller  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep manager  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep common  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9
ps -ef |grep java |grep consumer  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9

####
nohup java -Xmx512m -Xms256m -Xss512k   -Dspring.profiles.active=test -jar /u01/application/admin-4.2.5.jar > /u01/application/logs/admin-4.2.5.jar  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar  /u01/application/manager-api-4.2.5.jar > /u01/application/logs/manager.out  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar /u01/application/common-api-4.2.5.jar > /u01/application/logs/common.out  &
nohup java -Xmx512m -Xms256m -Xss512k   -Dspring.profiles.active=test -jar /u01/application/buyer-api-4.2.5.jar > /u01/application/logs/buyer.out  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar /u01/application/consumer-4.2.5.jar > /u01/application/logs/consumer.out  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar /u01/application/seller-api-4.2.5.jar > /u01/application/logs/seller.out  &
nohup java -Xmx512m -Xms256m -Xss512k   -Dspring.profiles.active=test -jar /u01/application/im-api-4.2.5.jar > /u01/application/logs/im-api.out  &




# nohup java   -Dspring.profiles.active=test -jar manager-api-4.2.5.jar > logs/manager.out  &
# nohup java  -Dspring.profiles.active=test -jar common-api-4.2.5.jar > logs/common.out  &
# nohup java   -Dspring.profiles.active=test -jar buyer-api-4.2.5.jar > logs/buyer.out  &
# nohup java   -Dspring.profiles.active=test -jar consumer-4.2.5.jar > logs/consumer.out  &
# nohup java   -Dspring.profiles.active=test -jar seller-api-4.2.5.jar > logs/seller.out  &
# nohup java   -Dspring.profiles.active=test -jar im-api-4.2.5.jar > logs/im-api.out  &


nohup java -Xmx512m -Xms256m -Xss512k   -Dspring.profiles.active=test -jar /u01/application/admin-4.2.5.jar > /u01/application/logs/admin-4.2.5.jar  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar  /u01/application/manager-api-4.2.5.jar > /u01/application/logs/manager.out  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar /u01/application/CommonAPI-4.2.5.jar > /u01/application/logs/common.out  &
nohup java -Xmx512m -Xms256m -Xss512k   -Dspring.profiles.active=test -jar /u01/application/StoreAPI-4.2.5.jar > /u01/application/logs/buyer.out  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar /u01/application/consumer-4.2.5.jar > /u01/application/logs/consumer.out  &
nohup java -Xmx512m -Xms256m -Xss512k  -Dspring.profiles.active=test -jar /u01/application/EnduserAPI-4.2.5.jar > /u01/application/logs/seller.out  &
nohup java -Xmx512m -Xms256m -Xss512k   -Dspring.profiles.active=test -jar /u01/application/im-api-4.2.5.jar > /u01/application/logs/im-api.out  &













java -Xmx512m -Xms256m -Xss512k  -jar  --Dspring.profiles.active=dev buyer-api-4.2.5.jar
 

 
#### elasticsearch
cd /home/admintalu/tools/elasticsearch-7.17.1

ps -ef |grep java |grep elasticsearch-7.17.1  |grep -v 'grep'|awk '{print $2}'  | xargs kill -9

nohup  bin/elasticsearch > logs/elasticsearch.out  &

#####    xxl-job-admin

nohup java -jar  xxl-job-admin-2.3.0-SNAPSHOT.jar   --spring.config.location=application-test.properties > /u01/application/logs/xxl-job-admin-9001.out &


tail -f  /u01/application/logs/xxl-job-admin-9001.out

####  rocketmq
cd /u01/tools/rocketmq-all-4.8.0-bin-release

nohup sh bin/mqnamesrv &

cd /u01/tools/rocketmq-all-4.8.0-bin-release
nohup sh bin/mqnamesrv > /u01/application/logs/mqnamesrv-9876.out &
tail -f  /u01/application/logs/mqnamesrv-9876.out


tail -f ~/logs/rocketmqlogs/namesrv.log

nohup sh bin/mqbroker -n localhost:9876 &
tail -f ~/logs/rocketmqlogs/namesrv.log


/u01/application/logs/logstash-4560.out

#### 部署logstash  143


nohup  /u01/tools/logstash-7.15.0/bin/logstash  -f /u01/tools/logstash-7.15.0/bin/logstash.conf > /u01/application/logs/logstash-4560.out  &
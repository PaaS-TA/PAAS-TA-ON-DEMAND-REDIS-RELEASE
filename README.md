# PAAS-TA-ON-DEMAND-REDIS-RELEASE
bosh 2.0 PAAS-TA-ON-DEMAND-REDIS-RELEASE


# ON-DEMAND Configuration
------------------------
- mysql :: 1 machine
- on-demand-broker :: 1 machine
- service :: 0...# machine (on-demand-REDIS)





# Release 생성
------------------------

[안1] SRC DOWNLOAD 후 생성 
````
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-ON-DEMAND-REDIS-RELEASE.git
$ cd PAAS-TA-ON-DEMAND-REDIS-RELEASE

$ wget -O src.zip https://nextcloud.paas-ta.org/index.php/s/dQLGyCq2pJbYjWG/download
$ unzip src.zip
$ rm -rf src.zip

# sh create.sh {RELEASE-NAME} {VERSION}
$ sh create.sh paasta-on-demand-redis 1.2.0
````





[안2] SRC submodule update & build 후 생성 
````
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-ON-DEMAND-REDIS-RELEASE.git
$ cd PAAS-TA-ON-DEMAND-REDIS-RELEASE
$ git submodule init
$ git submodule update

$ cd  src/paas-ta-on-demand-broker
$ gradle build

$ cd  ../..
$ wget -O src.zip https://nextcloud.paas-ta.org/index.php/s/dQLGyCq2pJbYjWG/download
$ unzip src.zip
$ rm -rf src.zip

$ cd src/paas-ta-on-demand-broker
$ mv build/libs/paas-ta-on-demand-broker.jar paas-ta-on-demand-broker.jar

# sh create.sh {RELEASE-NAME} {VERSION}
$ sh create.sh paasta-on-demand-redis 1.2.0
````

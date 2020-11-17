# PAAS-TA-ON-DEMAND-BROKER-RELEASE
bosh 2.0 PAAS-TA-ON-DEMAND-REDIS-BROKER-RELEASE

1.ON-DEMAND Configuration
------------------------
- mysql :: 1 machine
- on-demand-broker :: 1 machine
- service :: 1 machine (REDIS)

------------------------

2.SRC sumbmodule update & build
------------------------
- git submodule init
- git submodule update
- cd  src/paas-ta-on-demand-broker
- gradle build
------------------------


3.SRC DOWNLOAD
------------------------
- cd  {clone_dir}
- wget -O download.zip http://45.248.73.44/index.php/s/NWAx5paoc7oC7cW/download
- unzip download.zip
- rm -rf download.zip
------------------------


4. replace paas-ta-on-demand-broker.jar
------------------------
- cd src/paas-ta-on-demand-broker
- mv build/libs/paas-ta-on-demand-broker.jar paas-ta-on-demand-broker.jar
------------------------

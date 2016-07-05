# Introduction

Base Image I created for Razer

# Build and run

```sh
# ssh into the server and clone
git clone https://(YOUR_ACCOUNT)@bitbucket.org/razersw/baseami.git
# Choose the base image you want to build
cd docker-application-base/
chmod +x build.sh
./build.sh
```

# AWS security group
Open the corresponding port to read the monitoring metrics. ALWAYS limited to office network only!!!

supervisord: 40001
netdata: 19999
cadvisor: 19998
fluentd: 24224

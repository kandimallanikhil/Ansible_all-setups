#! /bin/bash
wget https://releases.jfrog.io/artifactory/artifactory-rpms/artifactory-rpms.repo -O jfrog-artifactory-rpms.repo
mv jfrog-artifactory-rpms.repo /etc/yum.repos.d/
yum update -y
yum install jfrog-artifactory-oss -y
systemctl start artifactory.service
systemctl status artifactory.service


===========================================
cd /opt
wget https://releases.jfrog.io/artifactory/bintray-artifactory/org/artifactory/oss/jfrog-artifactory-oss/7.68.19/jfrog-artifactory-oss-7.68.19-linux.tar.gz
tar -zxvf jfrog-artifactory-oss-7.68.19-linux.tar.gz
cd artifactory-oss-7.68.19/
cd app/bin/
./artifactory.sh start
./artifactory.sh status






# ###############################################
# 0. references
# ###############################################
# ###############################################


# ###############################################
# 1. install packages
# ###############################################
# pdsh -w node[1-4] -l root 'yum install -y lsof'
# pdsh -w node[1-4] -l root 'yum install -y net-tools'
# pdsh -w node[1-4] -l root 'yum install -y wget'
# ###############################################


# ###############################################
# 2. control service
# ###############################################
# pdsh -w node[2-4] -l root 'systemctl stop firewalld'
# pdsh -w node[2-4] -l root 'systemctl disable firewalld'
# pdsh -w node[2-4] -l root 'systemctl restart docker'
# ###############################################

# pdsh -w poc[1-4] -l root 'curl http://localhost:9200/_cluster/health?pretty=true' | grep status
# docker save neo4j:3.3.1 | bzip2 | pv | ssh root@node4 'bunzip2 | docker load'

# ###############################################
# 3. install easy_install pip docker-py
# ###############################################
# pdsh -w node[1-4] -l root 'yum-config-manager --disable packages.docker.com_1.13_yum_repo_main_centos_7'
# pdsh -w node[1-4] -l root 'yum install -y python-setuptools'
# pdsh -w node[1-4] -l root 'easy_install pip'
# pdsh -w node[1-4] -l root 'pip install --upgrade pip'
# pdsh -w node[1-4] -l root 'pip install docker-py'
# ###############################################


# ###############################################
# 4. install docker-compose
# ###############################################
pdsh -w node[1-4] -l root 'pip install --upgrade pip'
pdsh -w node[1-4] -l root 'pip freeze | grep docker'
pdsh -w node[1-4] -l root 'pip install docker-compose'
pdsh -w node[1-4] -l root 'pip freeze | grep docker'
# ###############################################

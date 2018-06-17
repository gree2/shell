# ###############################################
# 0. references
# ###############################################
# https://stackoverflow.com/questions/11583562/how-to-kill-a-process-running-on-particular-port-in-linux
# ###############################################


# ###############################################
# 1. download and install node_exporter
# ###############################################
# pdsh -w node[1-4] -l root 'wget  -P    /tmp ftp://win123/bigdata/prometheus/node_exporter-0.16.0.linux-amd64.tar.gz'
# pdsh -w node[1-4] -l root 'mkdir -p    /data/deploy/node_exporter'
# pdsh -w node[1-4] -l root 'rm    -rf   /data/deploy/node_exporter/node_exporter-0.16.0.linux-amd64'
# pdsh -w node[1-4] -l root 'tar   -zxvf /tmp/node_exporter-0.16.0.linux-amd64.tar.gz -C /data/deploy/node_exporter'
# ###############################################


# ###############################################
# 2. start node_exporter
# ###############################################
# pdsh -w node[1-4] -l root 'pkill -f node_exporter'
# pdsh -w node[1-4] -l root 'cd /data/deploy/node_exporter/node_exporter-0.16.0.linux-amd64 && nohup ./node_exporter > node_exporter.log 2>&1 &'
pdsh -w node[1-4] -l root 'ps aux | grep node_exporter'
# ###############################################


# ###############################################
# 3. stop node_exporter
# ###############################################
# pdsh -w node1 -l root 'ps aux | grep node_exporter'
# pdsh -w node1 -l root 'pkill -f node_exporter'
# ###############################################

# open http://node1:9100/metrics
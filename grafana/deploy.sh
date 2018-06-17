# ###############################################
# 0. references
# ###############################################
# https://stackoverflow.com/questions/11583562/how-to-kill-a-process-running-on-particular-port-in-linux
# ###############################################


# ###############################################
# 1. download and install grafana
# ###############################################
# pdsh -w node1 -l root 'wget  -P    /tmp ftp://win123/bigdata/grafana/grafana-5.1.3.linux-x64.tar.gz'
# pdsh -w node1 -l root 'mkdir -p    /data/deploy/grafana'
# pdsh -w node1 -l root 'rm    -rf   /data/deploy/grafana/grafana-5.1.3.linux-x64'
# pdsh -w node1 -l root 'tar   -zxvf /tmp/grafana-5.1.3.linux-x64.tar.gz -C /data/deploy/grafana'
# ###############################################


# ###############################################
# 2. start grafana
# ###############################################
pdsh -w node1 -l root 'pkill -f grafana'
pdsh -w node1 -l root 'cd /data/deploy/grafana/grafana-5.1.3/bin && nohup ./grafana-server start >> ../grafana-server.log &'
# pdsh -w node1 -l root 'ps aux | grep grafana'
# ###############################################


# ###############################################
# 3. stop grafana
# ###############################################
# pdsh -w node1 -l root 'ps aux | grep grafana'
# pdsh -w node1 -l root 'pkill -f grafana'
# ###############################################

# ###############################################
# 0. references
# ###############################################
# https://stackoverflow.com/questions/11583562/how-to-kill-a-process-running-on-particular-port-in-linux
# ###############################################


# ###############################################
# 1. download and install prometheus
# ###############################################
# pdsh -w node1 -l root 'wget  -P    /tmp ftp://win123/bigdata/prometheus/prometheus-2.3.0.linux-amd64.tar.gz'
# pdsh -w node1 -l root 'mkdir -p    /data/deploy/prometheus'
# pdsh -w node1 -l root 'rm    -rf   /data/deploy/prometheus/prometheus-2.3.0.linux-amd64'
# pdsh -w node1 -l root 'tar   -zxvf /tmp/prometheus-2.3.0.linux-amd64.tar.gz -C /data/deploy/prometheus'
# ###############################################


# ###############################################
# 2. start prometheus
# ###############################################
# pdsh -w node1 -l root 'pkill -f prometheus'
# pdsh -w node1 -l root 'cd /data/deploy/prometheus/prometheus-2.3.0.linux-amd64/ && ./prometheus --config.file=prometheus.yml > prometheus.log 2>&1 &'
pdsh -w node1 -l root 'ps aux | grep prometheus'
# ###############################################


# ###############################################
# 3. stop prometheus
# ###############################################
# pdsh -w node1 -l root 'ps aux | grep prometheus'
# pdsh -w node1 -l root 'pkill -f prometheus'
# ###############################################
# pdsh -w node1 -l root 'lsof -t -i:9090 -sTCP:LISTEN'
# pdsh -w node1 -l root 'kill -9 $(lsof -t -i:9090 -sTCP:LISTEN)'
# pdsh -w node1 -l root 'lsof -t -i:9090 -sTCP:LISTEN'
# ###############################################

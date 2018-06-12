# ###############################################
# 0. references
# ###############################################
# https://wiki.uiowa.edu/display/hpcadmin/pdsh
# https://sourceforge.net/projects/pdsh/
# ###############################################


# ###############################################
# 1. config /etc/machines
# ###############################################
# cat /etc/hosts | grep -v localhost | grep -v \# | grep -v broadcasthost | awk '{print $2}' | sort -u > /etc/machines
# cat /etc/machines
# ###############################################


# ###############################################
# 2. use ifconfig find nic name
# ###############################################
# pdsh -w node[1-4] -l root 'yum install -y net-tools'
# pdsh -w node[1-4] -l root 'ifconfig'
# ###############################################


# ###############################################
# 3. use ethtool find nic speed
# ###############################################
# pdsh -w node[1-4] -l root 'ethtool eno1'
# pdsh -w node[1-4] -l root 'ethtool eno1 | grep Speed'
# ###############################################
	# node3: 	Speed: 1000Mb/s
	# node2: 	Speed: 1000Mb/s
	# node4: 	Speed: 1000Mb/s
	# node1: 	Speed: 1000Mb/s
	# ###############################################


# ###############################################
# 4. use ethtool find nic speed differences
# ###############################################
pdsh -w node[1-4] -l root 'ethtool eno1 | grep Speed' | dshbak -c
# ###############################################
	# ----------------
	# node[1-4]
	# ----------------
	# 	Speed: 1000Mb/s
	# ###############################################

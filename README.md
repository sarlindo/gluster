# 2 Node Gluster Volume on Ubuntu

This project automates a small 2 node storage cluster on Ubuntu 14.04 utilizing glusterfs open source project. I created this project primarily to get a "hands-on" understanding around gluster and distributed storage. 

I kept this small, so that it functions fine running on a laptop with limited resources and primarily used for testing and learning. 

## Installation

### Pre-req

1. Ensure you have vagrant installed
2. Ensure you have virtualbox installed
3. Ensure you have ansible installed

Note: This may not work on windows dev machines because I believe the ansible provisioners won't run on windows, but not 100% sure. This should work fine on a mac or linux machine. 

### O.K enough already, how do I RUN IT?

Clone the project to a directory of your choice

``` 
   git clone https://github.com/sarlindo/gluster
```

change into the directory

```
   cd gluster
```

bring it up

```
   setup.sh

   Note: I needed to separate vm virtual box creation from provisioning because vagrant can't provision only after ALL machines are brought up.
```
 
## Usage and Test



#### Step 1: Log into node1 and node2 in 2 separate terminals

```

vagrant ssh node1
vagrant ssh node2

```

#### Step 2: On node1 create any file in the directory /data

```
cd /data
sudo touch abc.txt

```

#### Step 3: Now navigate to node2 and into the /data directory, you should also see the abc.txt file on node2 as well. MAGIC!


#!/bin/bash

# install a multipath tcp enabled Kernel
# from Ycarus (Yannick Chabanois)'s OpenMPTCPRouter
# 

SHSCRIPTNAME="debian12-x86_64.sh"

# download the VPS script from Yannick's site
wget https://www.openmptcprouter.com/server/$SHSCRIPTNAME

OUTPUTFILE=fetch_ycarus_kernel.sh

# get the four lines with the needed variables

echo "#!/bin/bash" >$OUTPUTFILE

cat $SHSCRIPTNAME | grep "KERNEL_VERSION=" >>$OUTPUTFILE
cat $SHSCRIPTNAME | grep "KERNEL_PACKAGE_VERSION=" >>$OUTPUTFILE
cat $SHSCRIPTNAME | grep "VPSURL=" >>$OUTPUTFILE
cat $SHSCRIPTNAME | grep "KERNEL_RELEASE=" >>$OUTPUTFILE


# get the two lines which include the kernel download 
cat $SHSCRIPTNAME | grep "wget -O /tmp/linux" >>$OUTPUTFILE

chmod 755 $OUTPUTFILE

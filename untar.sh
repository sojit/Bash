pl=plclient-*;for i in $pl; do t=`echo $i | cut -d- -f1-2`; mkdir $t; tar -xvf $i -C $t; cd $t; k=`echo *`; cd pl*; mv * ../; cd ../; sleep 1; rm -rf $k; cd ../; rm -rf $i; done

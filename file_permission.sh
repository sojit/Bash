ptac-01 ~ # cat new.sh 
#!/bin/bash

read -p "Please enter the file permission:-" file_details
total_string=`echo $file_details | wc -c`

if  [ $total_string != "10" ]
   then
      echo "Please add the full permission"
fi

u1=`echo $file_details | cut -c1`
if [ $u1 = r ]
   then
      new_u1=4
   else
      if [ $u1 = w ]
        then 
          new_u1=2
       else
          if [ $u1 = x ]
            then 
               new_u1=1
            else
               if [ $u1 = - ]
                 then
                    new_u1=0
               fi
           fi
       fi
fi
   
u2=`echo $file_details | cut -c2`
if [ $u2 = r ]
   then
      new_u2=4
    else
      if [ $u2 = w ]
        then
	  new_u2=2
        else
          if [ $u2 = x ]
            then 
               new_u2=1
            else
    	       if [ $u2 = - ]
               then
                  new_u2=0
                fi
          fi    
     fi
fi

u3=`echo $file_details | cut -c3`
if [ $u3 = r ]
   then
      new_u3=4
   else
      if [ $u3 = w ]
        then
          new_u3=2
	else
         if [ $u3 = x ]
           then
             new_u3=1
           else
	     if [ $u3 = - ]
                then 
                   new_u3=0
              fi              
          fi
      fi
fi

u4=`echo $file_details | cut -c4`
if [ $u4 = r ]
   then
      new_u4=4
	else
      if [ $u4 = w ]
        then
          new_u4=2
		else
         if [ $u4 = x ]
           then
             new_u4=1
		else
		  if [ $u4 = - ]
                    then 
                    new_u4=0
                  fi              
          fi
      fi
fi

u5=`echo $file_details | cut -c5`
if [ $u5 = r ]
   then
      new_u5=4
   else
      if [ $u5 = w ]
        then
          new_u5=2
		else
         if [ $u5 = x ]
           then
              new_u5=1
	    else
	       if [ $u5 = - ]
                 then 
                   new_u5=0
               fi              
          fi
      fi
fi

u6=`echo $file_details | cut -c6`
if [ $u6 = r ]
   then
      new_u6=4
   else
      if [ $u6 = w ]
        then
          new_u6=2
        else
          if [ $u6 = x ]
           then
             new_u6=1
	   else
	      if [ $u6 = - ]
                 then 
                    new_u6=0
              fi              
          fi
      fi
fi

u7=`echo $file_details | cut -c7`
if [ $u7 = r ]
   then
      new_u7=4
   else
      if [ $u7 = w ]
        then
          new_u7=2
	else
         if [ $u7 = x ]
           then
             new_u7=1
           else
	      if [ $u7 = - ]
                 then 
                    new_u7=0
              fi              
          fi
      fi
fi


u8=`echo $file_details | cut -c8`
if [ "$u8" = r  ]
  then
      new_u8=4
  else
     if [ "$u8" = w ]
     then
          new_u8=2
     else
         if [ "$u8" = x ]
           then
              new_u8=1
            else
	       if [ "$u8" = - ]
               then 
                  new_u8=0
              fi              
         fi
      fi
fi

u9=`echo $file_details | cut -c9`
if [ "$u9" = r ]
   then
      new_u9=4
   else
      if [ "$u9" = w ]
        then
          new_u9=2
	else
         if [ "$u9" = x ]
           then
             new_u9=1
           else
	      if [ "$u9" = - ]
                 then 
                    new_u9=0
              fi              
          fi
      fi
fi


u10=`echo $file_details | cut -c10`
if [ "$u10" = r ]
   then
      new_u10=4
   else
      if [ "$u10" = w ]
        then
           new_u10=2
	 else
           if [ "$u10" = x ]
              then
              new_u10=1
	   else
	      if [ "$u10" = - ]
                 then 
                    new_u10=0
              fi              
          fi
      fi
fi

new_user=$((new_u1+new_u2+new_u3))
new_grp=$((new_u4+new_u5+new_u6))
new_other=$((new_u7+new_u8+new_u9))

for user in "$u1$u2$u3$u4$u5$u6$u7$u8$u9$u10"
   do
     echo $user = $new_user$new_grp$new_other

   done

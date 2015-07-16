#!/bin/bash

# Author: Caio Moreno (@caiomsouza)
# Start Instance 

instance_id="i-e232ae03"

echo "Instance ID: "
echo "$instance_id"

now=$(date)

new_ip=$( aws ec2 allocate-address )
#new_ip=$( aws ec2 allocate-address --generate-cli-skeleton )
#echo "Your new_ip address is: "
#echo "$new_ip"

value=standard
value2=caio

new_ip3=`echo "$new_ip" | sed -e "s/'\\\$value'/'$value2'/g"`


# Maybe use jq 
# http://xmodulo.com/how-to-parse-json-string-via-command-line-on-linux.html

# Install jq in Mac OS
# brew install jq


printf %s "$new_ip" |
jq '.PublicIp[0].?' 



#new_ip2=$( echo $SQL | sed -e "s/\$BATCH_END/$BATCH_END/g" sed -i 's/standard/zero/g' $new_ip )

echo "$new_ip3"

# Fix the problem of not getting the ip address - I need to replace the word standard and the spaces

#aws ec2 associate-address --instance-id $instance_id --public-ip $new_ip

#aws ec2 start-instances --instance-ids $instance_id


echo "$now"


# exit 1 = to abort
#exit 1


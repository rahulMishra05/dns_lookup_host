#!/usr/bin/bash

# This is a script that uses host command and find the details related to the domnain name

# Asking for the domain name form the user
echo -e "Please enter the DNS or IP address of the website: \c"
read dns_name

# Displaying the  details of the IP address for the entered domain name
echo ""
echo "Displaying IP address details of the specified domain"
echo ""
host $dns_name

# When the -C option is used, host will attempt to display the SOA records for zone name from all the listed authoritative name servers for that zone. The list of name servers is defined by the NS records that are found for the zone.
echo ""
echo "Displaying SOA records for the zone name form all the listed authorative name servers."
echo ""
host -C $dns_name


# Verbous output is generated when we use -d or -v flag
echo ""
echo "Verbous output"
echo ""
host -d $dns_name

# -t is used to specify the type of query and ns is used to get the details of the name server explicitly
echo ""
echo "Displaying the name servers for the entred domain name"
echo ""
host -t ns $dns_name

# To print txt records 
echo ""
echo "Displaying the text record for the given domain name"
echo ""
host -t txt $dns_name






















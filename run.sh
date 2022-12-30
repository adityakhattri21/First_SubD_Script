#!/bin/bash

url=$1

if [ ! -d "$url" ];then
    mkdir $url
fi
if [ ! -d "$url/recon" ];then
   mkdir $url/recon
fi



echo "[+] Harvesting subdomains with assetfinder......"
assetfinder $url >> $url/recon/assets.txt
cat $url/recon/assets.txt | grep $url >> $url/recon/final.txt
#rm $url/recon/assets.txt

#echo "[+] Harvesting subdomains with Amass..."
#amass enum -d $url >> $url/recon/f.txt
#sort -u $url/recon/f.txt >> $url/recon/final_amass.txt #this will sort the output and store the unique entries in the file.
#rm $url/recon/f.txt

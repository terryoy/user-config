#!/bin/bash

# README: Aliyun Upoad
# - copy `oss_config.sh`` from this folder to `~/user-config/home/`, and source it in the `.bashrc`
# - edit `~/user-cnfig/home/oss_config.sh`, to add Aliyun OSS configuration to it
# - copy `aliyun_oss.sh` to `~/user-config/home/bin`, and ensure it is included in $PATH.
# - just type `aliyun_oss.sh` to run the


# Parameter 1, PUT: upload, GET: Download
method=$1

# Parameter 2: local source file path when uploading and oss source file path when downloading
source=$2

# Parameter 3: OSS target file path when uploading and local target file path when downloading
dest=$3

osshost=$OSS_ALIYUN_BUCKET.$OSS_ALIYUN_HOST

# Check method
if test -z "$method"
then
    method=GET
fi

if [ "${method}"x = "get"x ] || [ "${method}"x = "GET"x ]
then
    method=GET
elif [ "${method}"x = "put"x ] || [ "${method}"x = "PUT"x ]
then
    method=PUT
else
    method=GET
fi

#Verify upload target path
if test -z "$dest"
then
    dest=$source
fi

#Check whether the parameter is empty
if test -z "$method" || test -z "$source" || test -z "$dest"
then
    echo Upload a file: `basename $0` put localfile objectname
    echo Download a file: `basename $0` get objectname localfile
    exit -1
fi

if [ "${method}"x = "PUT"x ]
then
    resource="/${bucket}/${dest}"
    contentType=`file -ib ${source} |awk -F ";" '{print $1}'`
    dateValue="`LC_ALL=en_US.UTF-8 TZ=GMT date +'%a, %d %b %Y %H:%M:%S GMT'`"
    stringToSign="${method}\n\n${contentType}\n${dateValue}\n${resource}"
    signature=`echo -en $stringToSign | openssl sha1 -hmac ${OSS_ALIYUN_ACCEESS_KEY} -binary | base64`
    #echo $stringToSign
    #echo $signature
    url=https://${osshost}/${dest}
    #echo "upload ${source} to ${url}"
    curl -i -q -X PUT -T "${source}" \
      -H "Host: ${osshost}" \
      -H "Date: ${dateValue}" \
      -H "Content-Type: ${contentType}" \
      -H "Authorization: OSS ${OSS_ALIYUN_ACCESS_ID}:${signature}" \
      ${url}
else
    resource="/${bucket}/${source}"
    contentType=""
    dateValue="`LC_ALL=en_US.UTF-8 TZ=GMT date +'%a, %d %b %Y %H:%M:%S GMT'`"
    stringToSign="${method}\n\n${contentType}\n${dateValue}\n${resource}"
    signature=`echo -en ${stringToSign} | openssl sha1 -hmac ${OSS_ALIYUN_ACCEESS_KEY} -binary | base64`
    url=https://${osshost}/${source}
    #echo "download ${url} to ${dest}"
    curl --create-dirs \
      -H "Host: ${osshost}" \
      -H "Date: ${dateValue}" \
      -H "Content-Type: ${contentType}" \
      -H "Authorization: OSS ${OSS_ALIYUN_ACCESS_ID}:${signature}" \
      ${url} -o ${dest}
fi

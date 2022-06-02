#!/usr/bin/env bash
set -xe

if [[ "$EUID" != "0" ]]; then
   echo "error: Run this script again as root to install the binary to /usr/local/bin!"
fi

# Public access key for the dumps, read-only
ACCESS_KEY="1DXWofMPgzcjWYy2b7F9HYxWAXMNDVDroAWQBV5i7t3fn784Gay3ekM8TgZfFrGeHo6JanUuNA8ukS84jH5XzV1sY73v1HPWcBDQDUFtM8AbuVGjRHEhNQSWFHNWE8LTRvuW57XBLTyCy5w4ndR7ntkKBBxq4v4hPaX2K8jvFE8WwzTzu5c9wncd4LmKGUSjDBtZ3j4M4EWp81xgZjhpdkoLSpLxKSJQLxL63UL8SHF9xEoiH2knf87udwXjMzVxyLsngT2sSp8ZRCjgkupHSL1JisDJdE96bEbddECnAhUFhoHwUEcuA5RPRntn55HNoGEYkwZjerjR8wxKD2eNj7"
BASE_URL="https://link.eu1.storjshare.io/s"
BUCKET_PATH="recaptime-file-dumps/ajhalili2006/writefreely"
VERSION="0.13.1"

if command -v wget >> /dev/null; then
  wget "$BASE_URL/$ACCESS_KEY/$BUCKET_PATH/writefreely_$VERSION_linux_amd64.tar.gz?download=1" -O /tmp/writefreely-release.tar.gz
else
  curl "$BASE_URL/$ACCESS_KEY/$BUCKET_PATH/writefreely_$VERSION_linux_amd64.tar.gz?download=1" -o /tmp/writefreely-release.tar.gz
fi
tar xzvf /tmp/writefreely-release.tar.gz -C /tmp

if test -f /usr/local/bin/writefreely;
  rm /usr/local/bin/writefreely
fi
cp /tmp/writefreely/writefreely /usr/local/bin/writefreely
rm /tmp/writefreely -rv

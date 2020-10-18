#!/bin/bash
# Althof Rafaella Ramdhan
# Sat 17 Oct 2020 02:15:14 PM WIB


FILES="my*.txt my*.sh"
SHA="SHA256SUM"

echo "rm -f $SHA $SHA.asc"
rm -f $SHA $SHA.asc

echo "sha256sum $FILES > $SHA"
sha256sum $FILES > $SHA

echo "sha256sum -c $SHA"
sha256sum -c $SHA

echo "gpg -o $SHA.asc -a -sb $SHA"
gpg -o $SHA.asc -a -sb $SHA

echo "gpg --verify $SHA.asc $SHA"
gpg --verify $SHA.asc $SHA

git add .
git commit -m"OS202 althof3"
git push origin master

exit 0

# Mon Sep 28 21:05:04 WIB 2020

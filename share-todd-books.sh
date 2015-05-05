#!/bin/bash

ROOT=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd

echo 'Rsyncing from G drive to ForDesktop'
#rsync --recursive --times --verbose --progress --delete --checksum --itemize-changes --protect-args --prune-empty-dirs --human-readable --progress '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/ForDesktop/Transparent Language'

echo 'Rsyncing from G drive to ForMobile'
#rsync --recursive --times --verbose --progress --delete --checksum --itemize-changes --protect-args --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/ForMobile/Transparent Language'

#echo 'Creating shared folder...'
#rm -rf /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd 
#mkdir /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd 

echo 'Sharing PDF books...'
mkdir -p /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/pdf
mkdir -p /tmp/Todd/pdf
rm -rf /tmp/ronbo/pdf
mkdir -p /tmp/ronbo/pdf
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/tmp/Todd/pdf'
find /tmp/Todd/pdf -type f -name \*.pdf -exec cp --verbose `basename {}` /tmp/ronbo/pdf \;
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/tmp/ronbo/pdf/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/pdf'

echo 'Sharing epub books...'
mkdir -p /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/epub
mkdir -p /tmp/Todd/epub
rm -rf /tmp/ronbo/epub
mkdir -p /tmp/ronbo/epub
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/tmp/Todd/epub'
find /tmp/Todd/epub -type f -name \*.epub -exec cp --verbose `basename {}` /tmp/ronbo/epub \;
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/tmp/ronbo/epub/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/epub'

echo 'Sharing mobi books...'
#mkdir -p /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi
#rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi'

echo 'Sharing archive files...'
#mkdir -p /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/zip
#rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.zip' --include='*.rar' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/zip'

echo 'Sharing video files...'
#mkdir -p /cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/video
#rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mp4' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/video'

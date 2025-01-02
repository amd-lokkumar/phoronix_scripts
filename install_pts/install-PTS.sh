#!/bin/bash

# Run as sudo 

sudo apt update
sudo apt-get install php-cli php-xml curl sqlite3 bzip2 php-gd -y

git clone https://github.com/phoronix-test-suite/phoronix-test-suite.git
patch -p1 < prevent-wrapper-recursion.patch

cd phoronix-test-suite
chmod +x install-sh
./install-sh
rm -f /usr/share/phoronix-test-suite/pts-core/objects/pts_openbenchmarking_upload.php


phoronix-test-suite enterprise-setup

cd -

#mkdir -p /var/lib/phoronix-test-suite/test-suites/local
#cp -r ../containers/custom-suites/* /var/lib/phoronix-test-suite/test-suites/local/
#cp -r ../containers/custom-profiles/* /var/lib/phoronix-test-suite/test-profiles/local/


phoronix-test-suite user-config-set SaveResults=TRUE
phoronix-test-suite user-config-set OpenBrowser=FALSE
phoronix-test-suite user-config-set UploadResults=FALSE
phoronix-test-suite user-config-set PromptForTestIdentifier=FALSE
phoronix-test-suite user-config-set PromptForTestDescription=FALSE
phoronix-test-suite user-config-set PromptSaveName=FALSE
phoronix-test-suite user-config-set Configured=TRUE

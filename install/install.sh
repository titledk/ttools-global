#! /bin/bash

echo ""
echo "Now installing ttools-global..."
echo ""

cp -n install/config.yml ttools/

echo "We'll need sudo permissions for global installation - please add those below."

dir=`pwd`
bin="/usr/local/bin/tt";
sudo touch $bin;

#making sure it's writeable - this will be changed later on
sudo chmod 777 $bin;

echo "#!/bin/bash
$dir/ttools/core/lib/ttools.sh \"\$@\"
" > "$bin";

sudo chmod u+x $bin;

echo ""
echo "ttools have been installed globally to $bin";
echo ""
echo "SUCCESS"
echo "";

echo 'Installation complete - you can now access your menu globally by typing "tt"'

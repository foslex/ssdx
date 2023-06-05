#!/bin/bash

rm -rf .ssdx											# old install of ssdx
git clone https://github.com/foslex/ssdx.git .ssdx		# download app
cd .ssdx

rm -rf venv
mkdir venv
virtualenv venv
source venv/bin/activate
pip install -r python/requirements.txt

cp scripts/run.command ../
chmod u+x ../run.command

echo ""
echo ""
echo ""
echo "Finished!"

echo ""
echo "Double click 'run.command' from you DX project root folder to run script."

echo "Press enter to open now or close window to exit installation."
read varname

cd ..
sh run.command

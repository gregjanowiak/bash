#!/bin/bash

touch $1
chmod +x $1
echo "#!/bin/bash" >> $1
open $1

About dota-linux-stats
======================

Display the process and disk IO stats for the "dota_linux" process.

Pre-requisites
==============

    sudo apt-get install sysstat

Usage
=====

Don't forget to change the parameter for iostat to the disk where your Steam library resides.

Make it executable:
    chmod u+x dotastats.sh


Display stats in the console:
    ./dotastats.sh

Log to a file
    ./dotastats.sh > mystats.txt

More info
=========

To get more information read the manuals for iostat, http://linux.die.net/man/1/iostat,
and ps, http://linux.die.net/man/1/ps 

# wttr

A Bash script to check weather condition via terminal created by Carsten Brueggenolte.

Current Version: **1.30_2021-05-21**

![wttr](terminal-wttr.png)

## Installation 

```bash
$ cd /tmp
$ git clone https://github.com/cblte/bash-script-wttr
$ cd bash-script-wttr
$ bash installer.sh
```

## Usage 

The `wttr` script comes with some parameters explained below

The following arguments are available:

```bash
	# install curl which is necessary for script to run correctly 
	wttr -i 
    
	# set a city as your default city.
	# without a second argument, wttr will ask you for input
	wttr -sdef
	
	# set cologne as default city
    wttr -sdef "Den Haag, Netherlands"
	
	# see a photo of the Moon
    wttr -m

	# uninstall and remove the wttr script
    wttr -rm
	
	# show the script version
	wttr -v
	
	# show the help screen
	wttr -h
```

## License

This program is free software ; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation

## Credit 

goes to Amirreza Firoozi for the initial script and some other people he also mentioned in his code: Jadi , Alireza Amirsamimi & Mostafa Asadi. 

Thanks!
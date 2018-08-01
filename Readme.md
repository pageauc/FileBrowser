## Whiptail bash script directory browser and File Selector
### filebrowse.sh written by Claude Pageau

## RPI Quick Install or Upgrade   

***Step 1*** With mouse left button highlight curl command in code box below. Right click mouse in **highlighted** area and Copy.     
***Step 2*** On RPI putty SSH or terminal session right click, select paste then Enter to download and run script.  

    curl -L https://raw.github.com/pageauc/FileBrowser/master/setup.sh | bash

This will download and run the **setup.sh** script. 
See Github [FileBrowser](https://github.com/pageauc/FileBrowser) project

## Description
This is sample bash code for a whiptail file browser that allows navigating
through a directory a structure. If a file matching the filext variable file type is selected
it will Return the filename and path of the selected file. This can be used in your code
to do further processing.
Note The sample defaults to jpg file extension but this can be 
customize per your requirements using filext variable.
  
This Demo whiptail demo can be used in your own bash scripts
per the filebrowse.sh example code.

The variables returned from the FileBrowser() function are

    Filename : $filename
    Directory: $filepath
    
You can perform commands on

* Just file name eg. cp $filename $filename.bak
* Just directory path  eg. mv $filepath $filepath_prev
* Both for full file path eg. rm $filepath/$filename   

![filebrowse.sh menu](https://github.com/pageauc/FileBrowser/blob/master/filebrowse.png) 

## How to Customize
Use nano to edit filebrowse.sh

    cd ~/filebrowse
    nano filebrowse.sh
 
Edit the variables below for your requirements
 
    startdir="/home/pi"
    filext='jpg'    
    menutitle="$filext File Selection Menu"
    
ctrl-x y to save and exit nano editor

## How to Run Demo
To Run demo filebrowse.sh

    cd ~/filebrowse
    ./filebrowse.sh
      
1 Select Back to navigate to a previous directory.  
2 Select a directory entry to navigate to that folder and display list of files/folders.   
3 Select a file name that matches the filext variable. If file type is valid   
  the file name will be returned   
4 Use Arrow, page up/dn or tab key to navigate within menu  
5 Esc key exits with no selection.  

See [filebrowse.sh](https://github.com/pageauc/FileBrowser/blob/master/filebrowse.sh) code for more details.

Regards
Claude ...

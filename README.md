####Project structure: 
##### bin:
You can set the folder where to store the binary by calling cmake with the command -DCMAKE\_BUILD\_TYPE=\<mode\>, for instance  -DCMAKE\_BUILD\_TYPE=Debug
##### build:
Folder that contains everything needed to build a program (for Unix: make files). 
The folder where the program is built should be the same as the one passed to the command -DCMAKE\_BUILD\_TYPE.
##### include:
Headers
#### source:
Implementation files


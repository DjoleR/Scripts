# Scrpts
Simple scripts that make my life easier. 

After chosing the prefering file format and copying that file in ~ dir, add these lines to your ~/.bashrc file:

## Changing command line prompt
if [ -f ~/.shortpwd.py ]
then
   export PS1='\e[1;32m$(python ~/.shortpwd.py)\[\e[1;37m\]'

else
   export PS1='\[\e[1;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;31m\]\$ \[\e[m\]\[\e[1;37m\]'
fi

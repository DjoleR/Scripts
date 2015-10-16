## Changing command line prompt
if [ -f ~/.shortpwd.py ]
then
   export PS1='\e[1;32m$(python ~/.shortpwd.py)\[\e[1;37m\]'

else
   export PS1='\[\e[1;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;31m\]\$ \[\e[m\]\[\e[1;37m\]'
fi

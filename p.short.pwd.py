# Skript that shortens pwd presentation in bash so that only parts of 
# first and last folder is shown in the command prompt

import os
from commands import getoutput
from socket import gethostname

hostname = gethostname() # If I want to see hostname displayed 
username = os.environ['USER'] # If I want to see username displayed
pwd = os.getcwd()
homedir = os.path.expanduser('~')
pwd = pwd.replace(homedir, '~', 1)

import re
if len(re.findall('/', pwd)) >= 3:
    # Setting first and last folder to be displayed
    first = pwd.index('/')
    second = pwd[pwd.index('/')+1:].index('/') 
    last = pwd[::-1].index('/')

    pwd = pwd[:10] + '...' + pwd[-last-1:]


# Put here what you want to see displayed
print '%s:%s$ ' % (username, pwd)

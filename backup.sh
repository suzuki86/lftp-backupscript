# Hostname of ftp server.
hostname=

# User name of account.
username=

# Passord of account.
password=

# Path of Local directory.
dir=

# Path of Remote directory.
remotedir=

if [ ! -e $dir ]; then
  mkdir $dir
fi
cd $dir
lftp -e "set ftp:list-options -a; mirror --verbose=3 --parallel=10 $remotedir .; exit;" -u $username,$password $hostname

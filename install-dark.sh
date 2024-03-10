echo '┌───── •✧✧• ─────┐
 -SCI-SERVER- 
└───── •✧✧• ─────┘'

readonly MINIMUM_DISK_SIZE_GB="5"
readonly MINIMUM_MEMORY="400"

sudo su

echo '┌───── •✧✧• ─────┐
 -UPDATING- 
└───── •✧✧• ─────┘'

apt update
apt upgrade
apt upgrade dist
apt full-upgrade

echo '┌───── •✧✧• ─────┐
 -DONE UPDATING- 
└───── •✧✧• ─────┘'

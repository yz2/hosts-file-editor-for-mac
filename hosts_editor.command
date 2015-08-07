read -p Press\ enter\ to\ start\ editing\ the\ hosts\ file:
echo 
mkdir -p ~/desktop/hosts_temp
cp /private/etc/hosts ~/desktop/hosts_temp/hosts
open -e ~/desktop/hosts_temp/hosts

read -p After\ closing\ the\ hosts\ file,\ press\ enter\ to\ save\ it:
echo
sudo cp ~/desktop/hosts_temp/hosts /private/etc/hosts
sudo chown root:wheel /private/etc/hosts
rm -r ~/desktop/hosts_temp/

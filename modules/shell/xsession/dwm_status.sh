#!/bin/bash
# This is from Kai Hendry's dotfiles - check him out! I also recommend dwm-status on nixpkgs
# Network speed stuff stolen from http://linuxclues.blogspot.sg/2009/11/shell-script-show-network-speed.html

print_wifi() {
	ip=$(ip route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+')
	if=wlan0
		while IFS=$': \t' read -r label value
		do
			case $label in SSID) SSID=$value
				;;
			signal) SIGNAL=$value
				;;
		esac
	done < <(iw "$if" link)
	echo -e "$SSID $SIGNAL $ip"
}

print_mem(){
	echo $(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') / 1024))
}

print_network(){
	logfile=/dev/shm/netlog
	[ -f "$logfile" ] || echo "0 0" > "$logfile"
	read -r rxprev txprev < "$logfile"
	rxcurrent="$(($(paste -d '+' /sys/class/net/[ew]*/statistics/rx_bytes)))"
	txcurrent="$(($(paste -d '+' /sys/class/net/[ew]*/statistics/tx_bytes)))"
	echo "$(bc <<< "scale=2; ($rxcurrent-$rxprev) / 10^6")" "$(bc <<< "scale=2; ($txcurrent-$txprev) / 10^6")"
	echo "$rxcurrent $txcurrent" > "$logfile"
}

print_temp(){
	test -f /sys/class/thermal/thermal_zone0/temp || return 0
	printf "$(head -c 2 /sys/class/thermal/thermal_zone0/temp)\u00B0C"
}

print_bat(){
	hash acpi || return 0
	onl="$(grep "on-line" <(acpi -V))"
	charge="$(awk '{ sum += $1 } END { print sum }' /sys/class/power_supply/BAT*/capacity)"
	if test -z "$onl"
	then
		# suspend when we close the lid
		#systemctl --user stop inhibit-lid-sleep-on-battery.service
		echo -e "${charge}"
	else
		# On mains! no need to suspend
		#systemctl --user start inhibit-lid-sleep-on-battery.service
		echo -e "${charge}"
	fi
}

print_date(){
	# echo $(date "+%T%:::z") $(TZ=CET date "+ %H%:::z")
	echo $(date "+%H:%M")
}

# print_record(){
# 	# https://github.com/kaihendry/recordmydesktop2.0/
# 	test -f /tmp/r2d2 || return
# 	rp=$(cat /tmp/r2d2 | awk '{print $2}')
# 	size=$(du -h $rp | awk '{print $1}')
# 	echo " $size $(basename $rp)"
# }

while true
do
	# xsetroot -name "$(print_mem) $(print_network) $(print_temp) $(print_wifi) $(print_bat) $(print_record) $(print_date)"
	xsetroot -name " $(print_temp) | $(print_bat)% | $(print_date)"
	sleep 1
done

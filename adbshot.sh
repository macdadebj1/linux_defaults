name=screenshot

if [[ -e $name.png || -L $name.png ]] ; then
	i=0
	while [[ -e $name$i.png || -L $name$i.png ]] ; do
		let i++
	done
	name=$name$i

fi
adb exec-out screencap -p > "$name".png

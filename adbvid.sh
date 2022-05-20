name=video

if [[ -e $name.mp4 || -L $name.mp4 ]] ; then
	i=0
	while [[ -e $name$i.mp4 || -L $name$i.mp4 ]] ; do
		let i++
	done
	name=$name$i

fi
adb shell "screenrecord --time-limit 10 --bit-rate=16m --output-format=h264 -" >> "$name".mp4

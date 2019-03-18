ip=`ifconfig | grep Difus | awk '{print $3}' | sed "s/\(Difus.:\)\(.*\)\(255\)/\2/"`
contador=0
for x in `seq 1 255`;do
    resPing=`ping -c 1 $ip$x | grep "0 received," | awk '{print $4,$5}' | wc -l` 
    if [ $resPing != "1" ]; then
	contador=$((contador+1))
	lista[$contador]="$ip$x"
    fi
done
echo "Las ip conectadas son"
for item in ${lista[*]};do
    echo "$item"
done

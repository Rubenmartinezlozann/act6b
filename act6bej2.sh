total=0
contador=0
totalLineas=`cat precipitaciones.txt | wc -l`
while [ $contador -lt $totalLineas ];do
contador=$((contador+1))
litros=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}'`
total=$((total+litros))
done
media=$((total/contador))
echo "La media de precipitaciones es $media"
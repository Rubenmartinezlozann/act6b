contador=0
for i in $(ls $1);do
    contador=$((contador+1))
done
rm $1/*.txt
echo "Se han eliminado $contador ficheros"
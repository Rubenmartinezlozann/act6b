numLinux=0
numWindows=0
numProcesosLinux=0
numProcesosWindows=0
contadorLinea=1
for i in $(cat listado.txt | awk '{print $2}');do
    procesos=`cat listado.txt | awk '{print $3}' | head -$contadorLinea | tail -1`

    if [ $i = "Linux" ];then
	numLinux=$((numLinux+1))
	numProcesosLinux=$((numProcesosLinux+procesos))
    else
	numWindows=$((numWindows+1))
	numProcesosWindows=$((numProcesosWindows+procesos))
    fi
    contadorLinea=$((contadorLinea+1))
done
echo "Linux -> $numLinux $numProcesosLinux"
echo "Windows -> $numWindows $numProcesosWindows"
